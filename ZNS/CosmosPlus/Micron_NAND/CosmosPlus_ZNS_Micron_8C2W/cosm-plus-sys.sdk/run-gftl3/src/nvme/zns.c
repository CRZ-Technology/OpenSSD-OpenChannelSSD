
#include "../ftl_config.h"
#include "zns.h"

#define NVME_DEFAULT_ZONE_SIZE UINT64_C(MAIN_BLOCKS_PER_LUN * ROWS_PER_SLC_BLOCK * BYTES_PER_DATA_REGION_OF_PAGE)

extern void handle_nvme_io_erase(unsigned int cmdSlotTag, uint64_t zslba, uint64_t nlb);

static NvmeNamespace s_ns;
NvmeNamespace *ns;

static NvmeZone s_nvmezone[USER_CHANNELS * USER_WAYS];
static NvmeIdNsZoned s_id_ns_z;

static bool nvme_zone_matches_filter(uint32_t zafs, NvmeZone *zl)
{
    NvmeZoneState zs = nvme_get_zone_state(zl);

    switch (zafs) {
    case NVME_ZONE_REPORT_ALL:
        return true;
    case NVME_ZONE_REPORT_EMPTY:
        return zs == NVME_ZONE_STATE_EMPTY;
    case NVME_ZONE_REPORT_IMPLICITLY_OPEN:
        return zs == NVME_ZONE_STATE_IMPLICITLY_OPEN;
    case NVME_ZONE_REPORT_EXPLICITLY_OPEN:
        return zs == NVME_ZONE_STATE_EXPLICITLY_OPEN;
    case NVME_ZONE_REPORT_CLOSED:
        return zs == NVME_ZONE_STATE_CLOSED;
    case NVME_ZONE_REPORT_FULL:
        return zs == NVME_ZONE_STATE_FULL;
    case NVME_ZONE_REPORT_READ_ONLY:
        return zs == NVME_ZONE_STATE_READ_ONLY;
    case NVME_ZONE_REPORT_OFFLINE:
        return zs == NVME_ZONE_STATE_OFFLINE;
    default:
        return false;
    }
}

static void init_params(NvmeNamespace * ns)
{
    ns->params.zoned = 1;
    ns->params.zone_size_bs = NVME_DEFAULT_ZONE_SIZE;
    ns->params.zone_cap_bs = 0;
    ns->params.cross_zone_read = 0;
    ns->params.max_active_zones = USER_CHANNELS * USER_WAYS;
    ns->params.max_open_zones = USER_CHANNELS * USER_WAYS;
    ns->params.zd_extension_size = 0;
    ns->params.zasl = 0;
    ns->params.auto_transition_zones = 1;
}

static int nvme_ns_zoned_check_calc_geometry(NvmeNamespace *ns)
{
    uint64_t zone_size, zone_cap;

    ns->lbasz = 1 << 0xC;
    ns->id_ns.nsze = storageCapacity_L;

    /* Make sure that the values of ZNS properties are sane */
    if (ns->params.zone_size_bs) {
        zone_size = ns->params.zone_size_bs;
    } else {
        zone_size = NVME_DEFAULT_ZONE_SIZE;
    }
    if (ns->params.zone_cap_bs) {
        zone_cap = ns->params.zone_cap_bs;
    } else {
        zone_cap = zone_size;
    }

    /*
     * Save the main zone geometry values to avoid
     * calculating them later again.
     */
    ns->zone_size = zone_size / ns->lbasz;
    ns->zone_capacity = zone_cap / ns->lbasz;
    ns->num_zones = ns->id_ns.nsze / ns->zone_size;

    return 0;
}

static void nvme_ns_zoned_init_state(NvmeNamespace *ns)
{
    uint64_t start = 0, zone_size = ns->zone_size;
    uint64_t capacity = ns->num_zones * zone_size;
    NvmeZone *zone;
    int i;

    ns->zone_array = &s_nvmezone[0];

    QTAILQ_INIT(&ns->exp_open_zones);
    QTAILQ_INIT(&ns->imp_open_zones);
    QTAILQ_INIT(&ns->closed_zones);
    QTAILQ_INIT(&ns->full_zones);

    zone = ns->zone_array;
    for (i = 0; i < ns->num_zones; i++, zone++) {
        if (start + zone_size > capacity) {
            zone_size = capacity - start;
        }
        zone->d.zt = NVME_ZONE_TYPE_SEQ_WRITE;
        nvme_set_zone_state(zone, NVME_ZONE_STATE_EMPTY);
        zone->d.za = 0;
        zone->d.zal = 0;
        zone->d.zcap = ns->zone_capacity;
        zone->d.zslba = start;
        zone->d.wp = start;
        zone->w_ptr = start;
        start += zone_size;
    }

    ns->zone_size_log2 = 63 - clz64(ns->zone_size);
}

static void nvme_ns_init_zoned(NvmeNamespace *ns)
{
    NvmeIdNsZoned *id_ns_z;
    int i;

    nvme_ns_zoned_init_state(ns);

    id_ns_z = &s_id_ns_z;

    /* MAR/MOR are zeroes-based, FFFFFFFFFh means no limit */
    id_ns_z->mar = ns->params.max_active_zones - 1;
    id_ns_z->mor = ns->params.max_open_zones - 1;
    id_ns_z->zoc = 0;
    id_ns_z->ozcs = ns->params.cross_zone_read ?
        NVME_ID_NS_ZONED_OZCS_RAZB : 0x00;

    ns->nlbaf = 1;
    ns->id_ns.nlbaf = ns->nlbaf;

    for (i = 0; i <= ns->id_ns.nlbaf; i++) {
        id_ns_z->lbafe[i].zsze = ns->zone_size;
        id_ns_z->lbafe[i].zdes =
            ns->params.zd_extension_size >> 6; /* Units of 64B */
    }

    ns->csi = NVME_CSI_ZONED;
    ns->id_ns.nsze = ns->num_zones * ns->zone_size;
    ns->id_ns.ncap = ns->id_ns.nsze;
    ns->id_ns.nuse = ns->id_ns.ncap;

    ns->id_ns_zoned = id_ns_z;
}

void zns_init(void)
{
    ns = (NvmeNamespace *)&s_ns;

    init_params(ns);
    nvme_ns_zoned_check_calc_geometry(ns);
    nvme_ns_init_zoned(ns);
}

static inline uint32_t nvme_zone_idx(NvmeNamespace *ns, uint64_t slba)
{
    return ns->zone_size_log2 > 0 ? slba >> ns->zone_size_log2 :
                                    slba / ns->zone_size;
}

static uint16_t nvme_get_mgmt_zone_slba_idx(NvmeNamespace *ns, NvmeCmd *c,
                                            uint64_t *slba, uint32_t *zone_idx)
{
    uint32_t dw10 = c->cdw10;
    uint32_t dw11 = c->cdw11;

    if (!ns->params.zoned) {
        return NVME_INVALID_OPCODE | NVME_DNR;
    }

    *slba = ((uint64_t)dw11) << 32 | dw10;
    if (*slba >= ns->id_ns.nsze) {
        *slba = 0;
        return NVME_LBA_RANGE | NVME_DNR;
    }

    *zone_idx = nvme_zone_idx(ns, *slba);
    assert(*zone_idx < ns->num_zones);

    return NVME_SUCCESS;
}

typedef uint16_t (*op_handler_t)(NvmeNamespace *, NvmeZone *, NvmeZoneState);

enum NvmeZoneProcessingMask {
    NVME_PROC_CURRENT_ZONE    = 0,
    NVME_PROC_OPENED_ZONES    = 1 << 0,
    NVME_PROC_CLOSED_ZONES    = 1 << 1,
    NVME_PROC_READ_ONLY_ZONES = 1 << 2,
    NVME_PROC_FULL_ZONES      = 1 << 3,
};

static void nvme_assign_zone_state(NvmeNamespace *ns, NvmeZone *zone,
                                   NvmeZoneState state)
{
    if (QTAILQ_IN_USE(zone, entry)) {
        switch (nvme_get_zone_state(zone)) {
        case NVME_ZONE_STATE_EXPLICITLY_OPEN:
            QTAILQ_REMOVE(&ns->exp_open_zones, zone, entry);
            break;
        case NVME_ZONE_STATE_IMPLICITLY_OPEN:
            QTAILQ_REMOVE(&ns->imp_open_zones, zone, entry);
            break;
        case NVME_ZONE_STATE_CLOSED:
            QTAILQ_REMOVE(&ns->closed_zones, zone, entry);
            break;
        case NVME_ZONE_STATE_FULL:
            QTAILQ_REMOVE(&ns->full_zones, zone, entry);
        default:
            ;
        }
    }

    nvme_set_zone_state(zone, state);

    switch (state) {
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
        QTAILQ_INSERT_TAIL(&ns->exp_open_zones, zone, entry);
        break;
    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
        QTAILQ_INSERT_TAIL(&ns->imp_open_zones, zone, entry);
        break;
    case NVME_ZONE_STATE_CLOSED:
        QTAILQ_INSERT_TAIL(&ns->closed_zones, zone, entry);
        break;
    case NVME_ZONE_STATE_FULL:
        QTAILQ_INSERT_TAIL(&ns->full_zones, zone, entry);
    case NVME_ZONE_STATE_READ_ONLY:
        break;
    default:
        zone->d.za = 0;
    }
}

static uint16_t nvme_zns_check_resources(NvmeNamespace *ns, uint32_t act,
                                         uint32_t opn, uint32_t zrwa)
{
    if (ns->params.max_active_zones != 0 &&
        ns->nr_active_zones + act > ns->params.max_active_zones) {
        return NVME_ZONE_TOO_MANY_ACTIVE | NVME_DNR;
    }

    if (ns->params.max_open_zones != 0 &&
        ns->nr_open_zones + opn > ns->params.max_open_zones) {
        return NVME_ZONE_TOO_MANY_OPEN | NVME_DNR;
    }

    if (zrwa > ns->zns.numzrwa) {
        return NVME_NOZRWA | NVME_DNR;
    }

    return NVME_SUCCESS;
}

static uint16_t nvme_zrm_finish(NvmeNamespace *ns, NvmeZone *zone)
{
    switch (nvme_get_zone_state(zone)) {
    case NVME_ZONE_STATE_FULL:
        return NVME_SUCCESS;

    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
        nvme_aor_dec_open(ns);
        /* fallthrough */
    case NVME_ZONE_STATE_CLOSED:
        nvme_aor_dec_active(ns);

        if (zone->d.za & NVME_ZA_ZRWA_VALID) {
            zone->d.za &= ~NVME_ZA_ZRWA_VALID;
            if (ns->params.numzrwa) {
                ns->zns.numzrwa++;
            }
        }

        /* fallthrough */
    case NVME_ZONE_STATE_EMPTY:
        nvme_assign_zone_state(ns, zone, NVME_ZONE_STATE_FULL);
        return NVME_SUCCESS;

    default:
        return NVME_ZONE_INVAL_TRANSITION;
    }
}

static uint16_t nvme_zrm_close(NvmeNamespace *ns, NvmeZone *zone)
{
    switch (nvme_get_zone_state(zone)) {
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
        nvme_aor_dec_open(ns);
        nvme_assign_zone_state(ns, zone, NVME_ZONE_STATE_CLOSED);
        /* fall through */
    case NVME_ZONE_STATE_CLOSED:
        return NVME_SUCCESS;

    default:
        return NVME_ZONE_INVAL_TRANSITION;
    }
}

static void nvme_zrm_auto_transition_zone(NvmeNamespace *ns)
{
    NvmeZone *zone;

    if (ns->params.max_open_zones &&
        ns->nr_open_zones == ns->params.max_open_zones) {
        zone = QTAILQ_FIRST(&ns->imp_open_zones);
        if (zone) {
            /*
             * Automatically close this implicitly open zone.
             */
            QTAILQ_REMOVE(&ns->imp_open_zones, zone, entry);
            nvme_zrm_close(ns, zone);
        }
    }
}

enum {
    NVME_ZRM_AUTO = 1 << 0,
    NVME_ZRM_ZRWA = 1 << 1,
};

static uint16_t nvme_zrm_open_flags(NvmeNamespace *ns,
                                    NvmeZone *zone, int flags)
{
    int act = 0;
    uint16_t status;

    switch (nvme_get_zone_state(zone)) {
    case NVME_ZONE_STATE_EMPTY:
        act = 1;

        /* fallthrough */

    case NVME_ZONE_STATE_CLOSED:
        if (ns->params.auto_transition_zones) {
            nvme_zrm_auto_transition_zone(ns);
        }
        status = nvme_zns_check_resources(ns, act, 1,
                                          (flags & NVME_ZRM_ZRWA) ? 1 : 0);
        if (status) {
            return status;
        }

        if (act) {
            nvme_aor_inc_active(ns);
        }

        nvme_aor_inc_open(ns);

        if (flags & NVME_ZRM_AUTO) {
            nvme_assign_zone_state(ns, zone, NVME_ZONE_STATE_IMPLICITLY_OPEN);
            return NVME_SUCCESS;
        }

        /* fallthrough */

    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
        if (flags & NVME_ZRM_AUTO) {
            return NVME_SUCCESS;
        }

        nvme_assign_zone_state(ns, zone, NVME_ZONE_STATE_EXPLICITLY_OPEN);

        /* fallthrough */

    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
        if (flags & NVME_ZRM_ZRWA) {
            ns->zns.numzrwa--;

            zone->d.za |= NVME_ZA_ZRWA_VALID;
        }

        return NVME_SUCCESS;

    default:
        return NVME_ZONE_INVAL_TRANSITION;
    }
}

static inline uint16_t nvme_zrm_auto(NvmeNamespace *ns,
                                     NvmeZone *zone)
{
    return nvme_zrm_open_flags(ns, zone, NVME_ZRM_AUTO);
}

static uint16_t nvme_open_zone(NvmeNamespace *ns, NvmeZone *zone,
                               NvmeZoneState state)
{
    int flags = 0;

    return nvme_zrm_open_flags(ns, zone, flags);
}

static uint16_t nvme_close_zone(NvmeNamespace *ns, NvmeZone *zone,
                                NvmeZoneState state)
{
    return nvme_zrm_close(ns, zone);
}

static uint16_t nvme_finish_zone(NvmeNamespace *ns, NvmeZone *zone,
                                 NvmeZoneState state)
{
    return nvme_zrm_finish(ns, zone);
}

static uint16_t nvme_offline_zone(NvmeNamespace *ns, NvmeZone *zone,
                                  NvmeZoneState state)
{
    switch (state) {
    case NVME_ZONE_STATE_READ_ONLY:
        nvme_assign_zone_state(ns, zone, NVME_ZONE_STATE_OFFLINE);
        /* fall through */
    case NVME_ZONE_STATE_OFFLINE:
        return NVME_SUCCESS;
    default:
        return NVME_ZONE_INVAL_TRANSITION;
    }
}

static uint16_t nvme_bulk_proc_zone(NvmeNamespace *ns, NvmeZone *zone,
                                    enum NvmeZoneProcessingMask proc_mask,
                                    op_handler_t op_hndlr)
{
    uint16_t status = NVME_SUCCESS;
    NvmeZoneState zs = nvme_get_zone_state(zone);
    bool proc_zone;

    switch (zs) {
    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
        proc_zone = proc_mask & NVME_PROC_OPENED_ZONES;
        break;
    case NVME_ZONE_STATE_CLOSED:
        proc_zone = proc_mask & NVME_PROC_CLOSED_ZONES;
        break;
    case NVME_ZONE_STATE_READ_ONLY:
        proc_zone = proc_mask & NVME_PROC_READ_ONLY_ZONES;
        break;
    case NVME_ZONE_STATE_FULL:
        proc_zone = proc_mask & NVME_PROC_FULL_ZONES;
        break;
    default:
        proc_zone = false;
    }

    if (proc_zone) {
        status = op_hndlr(ns, zone, zs);
    }

    return status;
}

static uint16_t nvme_do_zone_op(NvmeNamespace *ns, NvmeZone *zone,
                                enum NvmeZoneProcessingMask proc_mask,
                                op_handler_t op_hndlr)
{
    NvmeZone *next;
    uint16_t status = NVME_SUCCESS;
    int i;

    if (!proc_mask) {
        status = op_hndlr(ns, zone, nvme_get_zone_state(zone));
    } else {
        if (proc_mask & NVME_PROC_CLOSED_ZONES) {
            QTAILQ_FOREACH_SAFE(zone, &ns->closed_zones, entry, next) {
                status = nvme_bulk_proc_zone(ns, zone, proc_mask, op_hndlr);
                if (status && status != NVME_NO_COMPLETE) {
                    goto out;
                }
            }
        }
        if (proc_mask & NVME_PROC_OPENED_ZONES) {
            QTAILQ_FOREACH_SAFE(zone, &ns->imp_open_zones, entry, next) {
                status = nvme_bulk_proc_zone(ns, zone, proc_mask, op_hndlr);
                if (status && status != NVME_NO_COMPLETE) {
                    goto out;
                }
            }

            QTAILQ_FOREACH_SAFE(zone, &ns->exp_open_zones, entry, next) {
                status = nvme_bulk_proc_zone(ns, zone, proc_mask, op_hndlr);
                if (status && status != NVME_NO_COMPLETE) {
                    goto out;
                }
            }
        }
        if (proc_mask & NVME_PROC_FULL_ZONES) {
            QTAILQ_FOREACH_SAFE(zone, &ns->full_zones, entry, next) {
                status = nvme_bulk_proc_zone(ns, zone, proc_mask, op_hndlr);
                if (status && status != NVME_NO_COMPLETE) {
                    goto out;
                }
            }
        }

        if (proc_mask & NVME_PROC_READ_ONLY_ZONES) {
            for (i = 0; i < ns->num_zones; i++, zone++) {
                status = nvme_bulk_proc_zone(ns, zone, proc_mask, op_hndlr);
                if (status && status != NVME_NO_COMPLETE) {
                    goto out;
                }
            }
        }
    }

out:
    return status;
}

static uint16_t nvme_zrm_reset(NvmeZone *zone, unsigned int cmdSlotTag, char *send_cpl)
{
    uint64_t nlb;

    switch (nvme_get_zone_state(zone)) {
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
        nvme_aor_dec_open(ns);
        /* fallthrough */
    case NVME_ZONE_STATE_CLOSED:
        nvme_aor_dec_active(ns);

        if (zone->d.za & NVME_ZA_ZRWA_VALID) {
            if (ns->params.numzrwa) {
                ns->zns.numzrwa++;
            }
        }

        /* fallthrough */
    case NVME_ZONE_STATE_FULL:
        *send_cpl = 0;

        nlb = zone->w_ptr - zone->d.zslba;
        if(nlb > zone->d.zcap)
        {
            nlb = zone->d.zcap;
        }
        handle_nvme_io_erase(cmdSlotTag, zone->d.zslba, nlb);

        zone->w_ptr = zone->d.zslba;
        zone->d.wp = zone->w_ptr;
        nvme_assign_zone_state(ns, zone, NVME_ZONE_STATE_EMPTY);
        /* fallthrough */
    case NVME_ZONE_STATE_EMPTY:
        return NVME_SUCCESS;

    default:
        return NVME_ZONE_INVAL_TRANSITION;
    }
}

static uint16_t nvme_zone_reset(bool all, NvmeZone *single_zone, uint32_t idx, unsigned int cmdSlotTag, char *send_cpl)
{
    uint16_t status = NVME_SUCCESS;

    if (single_zone) {
        status = nvme_zrm_reset(single_zone, cmdSlotTag, send_cpl);

        if (!all) {
            return status;
        }
    }

    while (idx < ns->num_zones) {
        NvmeZone *zone = &ns->zone_array[idx++];

        nvme_zrm_reset(zone, cmdSlotTag, send_cpl);
    }

    return status;
}

uint16_t nvme_zone_mgmt_send(unsigned int cmdSlotTag, void *nvmeIOCmd, char *send_cpl)
{
    NvmeZoneSendCmd *cmd = (NvmeZoneSendCmd *)nvmeIOCmd;
    NvmeCmd *c = (NvmeCmd *)nvmeIOCmd;
    NvmeZone *zone;
    uint64_t slba = 0;
    uint32_t zone_idx = 0;
    uint16_t status = NVME_SUCCESS;
    uint8_t action = cmd->zsa;
    bool all;
    enum NvmeZoneProcessingMask proc_mask = NVME_PROC_CURRENT_ZONE;

    all = cmd->zsflags & NVME_ZSFLAG_SELECT_ALL;

    if (!all) {
        status = nvme_get_mgmt_zone_slba_idx(ns, c, &slba, &zone_idx);
        if (status) {
            return status;
        }
    }

    zone = &ns->zone_array[zone_idx];
    if (slba != zone->d.zslba && !all && action != NVME_ZONE_ACTION_ZRWA_FLUSH) {
        return NVME_INVALID_FIELD | NVME_DNR;
    }

    switch (action) {

    case NVME_ZONE_ACTION_OPEN:
        if (all) {
            proc_mask = NVME_PROC_CLOSED_ZONES;
        }
        status = nvme_do_zone_op(ns, zone, proc_mask, nvme_open_zone);
        break;

    case NVME_ZONE_ACTION_CLOSE:
        if (all) {
            proc_mask = NVME_PROC_OPENED_ZONES;
        }
        status = nvme_do_zone_op(ns, zone, proc_mask, nvme_close_zone);
        break;

    case NVME_ZONE_ACTION_FINISH:
        if (all) {
            proc_mask = NVME_PROC_OPENED_ZONES | NVME_PROC_CLOSED_ZONES;
        }
        status = nvme_do_zone_op(ns, zone, proc_mask, nvme_finish_zone);
        break;

    case NVME_ZONE_ACTION_RESET:
        status = nvme_zone_reset(all, zone, zone_idx, cmdSlotTag, send_cpl);
        break;

    case NVME_ZONE_ACTION_OFFLINE:
        if (all) {
            proc_mask = NVME_PROC_READ_ONLY_ZONES;
        }
        status = nvme_do_zone_op(ns, zone, proc_mask, nvme_offline_zone);
        break;

    case NVME_ZONE_ACTION_SET_ZD_EXT:
         return NVME_INVALID_FIELD | NVME_DNR;

    case NVME_ZONE_ACTION_ZRWA_FLUSH:
         return NVME_INVALID_FIELD | NVME_DNR;

    default:
        status = NVME_INVALID_FIELD;
    }

    if (status) {
        status |= NVME_DNR;
    }

    return status;
}

uint16_t nvme_zone_mgmt_recv(unsigned int pZoneManagementAddr, void *nvmeIOCmd, unsigned int *p_datasize)
{
    NvmeCmd *cmd = (NvmeCmd *)nvmeIOCmd;
    /* cdw12 is zero-based number of dwords to return. Convert to bytes */
    uint32_t data_size = (cmd->cdw12 + 1) << 2;
    uint32_t dw13 = cmd->cdw13;
    uint32_t zone_idx, zra, zrasf, partial;
    uint64_t max_zones, nr_zones = 0;
    uint16_t status = NVME_SUCCESS;
    uint64_t slba;
    NvmeZoneDescr *z;
    NvmeZone *zone;
    NvmeZoneReportHeader *header;
    void *buf, *buf_p;
    size_t zone_entry_sz;
    int i;

    *p_datasize = data_size;

    status = nvme_get_mgmt_zone_slba_idx(ns, cmd, &slba, &zone_idx);
    if (status) {
        return status;
    }

    zra = dw13 & 0xff;
    if (zra != NVME_ZONE_REPORT && zra != NVME_ZONE_REPORT_EXTENDED) {
        return NVME_INVALID_FIELD | NVME_DNR;
    }
    if (zra == NVME_ZONE_REPORT_EXTENDED && !ns->params.zd_extension_size) {
        return NVME_INVALID_FIELD | NVME_DNR;
    }

    zrasf = (dw13 >> 8) & 0xff;
    if (zrasf > NVME_ZONE_REPORT_OFFLINE) {
        return NVME_INVALID_FIELD | NVME_DNR;
    }

    if (data_size < sizeof(NvmeZoneReportHeader)) {
        return NVME_INVALID_FIELD | NVME_DNR;
    }

    partial = (dw13 >> 16) & 0x01;

    zone_entry_sz = sizeof(NvmeZoneDescr);
    if (zra == NVME_ZONE_REPORT_EXTENDED) {
        zone_entry_sz += ns->params.zd_extension_size;
    }

    max_zones = (data_size - sizeof(NvmeZoneReportHeader)) / zone_entry_sz;
    buf = (char *)pZoneManagementAddr;

    zone = &ns->zone_array[zone_idx];
    for (i = zone_idx; i < ns->num_zones; i++) {
        if (partial && nr_zones >= max_zones) {
            break;
        }
        if (nvme_zone_matches_filter(zrasf, zone++)) {
            nr_zones++;
        }
    }
    header = buf;
    header->nr_zones = nr_zones;

    buf_p = buf + sizeof(NvmeZoneReportHeader);
    for (; zone_idx < ns->num_zones && max_zones > 0; zone_idx++) {
        zone = &ns->zone_array[zone_idx];
        if (nvme_zone_matches_filter(zrasf, zone)) {
            z = buf_p;
            buf_p += sizeof(NvmeZoneDescr);

            z->zt = zone->d.zt;
            z->zs = zone->d.zs;
            z->zcap = zone->d.zcap;
            z->zslba = zone->d.zslba;
            z->za = zone->d.za;
            z->zal = zone->d.za;;

            if (nvme_wp_is_valid(zone)) {
                z->wp = zone->d.wp;
            } else {
                z->wp = ~0ULL;
            }

            max_zones--;
        }
    }

    return status;
}

static inline uint16_t nvme_check_bounds(NvmeNamespace *ns, uint64_t slba,
                                         uint32_t nlb)
{
    uint64_t nsze = ns->id_ns.nsze;

    if (UINT64_MAX - slba < nlb || slba + nlb > nsze) {
        return NVME_LBA_RANGE | NVME_DNR;
    }

    return NVME_SUCCESS;
}

static inline NvmeZone *nvme_get_zone_by_slba(NvmeNamespace *ns, uint64_t slba)
{
    uint32_t zone_idx = nvme_zone_idx(ns, slba);

    if (zone_idx >= ns->num_zones) {
        return NULL;
    }

    return &ns->zone_array[zone_idx];
}

static inline uint64_t nvme_zone_rd_boundary(NvmeNamespace *ns, NvmeZone *zone)
{
    return zone->d.zslba + ns->zone_size;
}

static uint16_t nvme_check_zone_state_for_read(NvmeZone *zone)
{
    switch (nvme_get_zone_state(zone)) {
    case NVME_ZONE_STATE_EMPTY:
    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
    case NVME_ZONE_STATE_FULL:
    case NVME_ZONE_STATE_CLOSED:
    case NVME_ZONE_STATE_READ_ONLY:
        return NVME_SUCCESS;
    case NVME_ZONE_STATE_OFFLINE:
        return NVME_ZONE_OFFLINE;
    default:
        assert(false);
    }

    return NVME_INTERNAL_DEV_ERROR;
}

static uint16_t nvme_check_zone_read(NvmeNamespace *ns, uint64_t slba,
                                     uint32_t nlb)
{
    NvmeZone *zone;
    uint64_t bndry, end;
    uint16_t status;

    zone = nvme_get_zone_by_slba(ns, slba);
    assert(zone);

    bndry = nvme_zone_rd_boundary(ns, zone);
    end = slba + nlb;

    status = nvme_check_zone_state_for_read(zone);
    if (status) {
        ;
    } else if (end > bndry) {
        if (!ns->params.cross_zone_read) {
            status = NVME_ZONE_BOUNDARY_ERROR;
        } else {
            /*
             * Read across zone boundary - check that all subsequent
             * zones that are being read have an appropriate state.
             */
            do {
                zone++;
                status = nvme_check_zone_state_for_read(zone);
                if (status) {
                    break;
                }
            } while (end > nvme_zone_rd_boundary(ns, zone));
        }
    }

    return status;
}

uint16_t nvme_read(unsigned int slba, unsigned int nlb)
{
    uint16_t status;

    status = nvme_check_bounds(ns, slba, nlb);
    if (status) {
        goto invalid;
    }

    status = nvme_check_zone_read(ns, slba, nlb);
    if (status) {
        goto invalid;
    }

    return status;

invalid:
    return status | NVME_DNR;
}

static void nvme_advance_zone_wp(NvmeNamespace *ns, NvmeZone *zone,
                                 uint32_t nlb)
{
    zone->d.wp += nlb;

    if (zone->d.wp == nvme_zone_wr_boundary(zone)) {
        nvme_zrm_finish(ns, zone);
    }
}

static void nvme_finalize_zoned_write(uint64_t slba, uint32_t nlb)
{
    NvmeZone *zone;

    zone = nvme_get_zone_by_slba(ns, slba);
    assert(zone);

    nvme_advance_zone_wp(ns, zone, nlb);
}

static uint16_t nvme_check_zone_state_for_write(NvmeZone *zone)
{
    switch (nvme_get_zone_state(zone)) {
    case NVME_ZONE_STATE_EMPTY:
    case NVME_ZONE_STATE_IMPLICITLY_OPEN:
    case NVME_ZONE_STATE_EXPLICITLY_OPEN:
    case NVME_ZONE_STATE_CLOSED:
        return NVME_SUCCESS;
    case NVME_ZONE_STATE_FULL:
        return NVME_ZONE_FULL;
    case NVME_ZONE_STATE_OFFLINE:
        return NVME_ZONE_OFFLINE;
    case NVME_ZONE_STATE_READ_ONLY:
        return NVME_ZONE_READ_ONLY;
    default:
        assert(false);
    }

    return NVME_INTERNAL_DEV_ERROR;
}

static uint16_t nvme_check_zone_write(NvmeNamespace *ns, NvmeZone *zone,
                                      uint64_t slba, uint32_t nlb)
{
    uint64_t zcap = nvme_zone_wr_boundary(zone);
    uint16_t status;

    status = nvme_check_zone_state_for_write(zone);
    if (status) {
        return status;
    }

    if (zone->d.za & NVME_ZA_ZRWA_VALID) {
        uint64_t ezrwa = zone->w_ptr + 2 * ns->zns.zrwas;

        if (slba < zone->w_ptr || slba + nlb > ezrwa) {
            return NVME_ZONE_INVALID_WRITE;
        }
    } else {
        if (slba != zone->w_ptr) {
            return NVME_ZONE_INVALID_WRITE;
        }
    }

    if ((slba + nlb) > zcap) {
        return NVME_ZONE_BOUNDARY_ERROR;
    }

    return NVME_SUCCESS;
}

uint16_t nvme_do_write(unsigned int *w_slba, unsigned int nlb, bool append, unsigned int *w_ptr)
{
    NvmeZone *zone;
    uint16_t status;
    unsigned int slba = *w_slba;

    status = nvme_check_bounds(ns, slba, ++nlb);
    if (status) {
        goto invalid;
    }

    zone = nvme_get_zone_by_slba(ns, slba);
    assert(zone);

    if (append) {
        if (zone->d.za & NVME_ZA_ZRWA_VALID) {
            return NVME_INVALID_ZONE_OP | NVME_DNR;
        }

        if (slba != zone->d.zslba) {
            status = NVME_INVALID_FIELD;
            goto invalid;
        }

        slba = zone->w_ptr;
    }

    status = nvme_check_zone_write(ns, zone, slba, nlb);
    if (status) {
        goto invalid;
    }

    status = nvme_zrm_auto(ns, zone);
    if (status) {
        goto invalid;
    }

    if(w_ptr)
    {
        *w_ptr = zone->w_ptr;
    }

    if (!(zone->d.za & NVME_ZA_ZRWA_VALID)) {
        zone->w_ptr += nlb;
    }

    nvme_finalize_zoned_write(slba, nlb);

    *w_slba = slba;

    return NVME_SUCCESS;

invalid:
    return status | NVME_DNR;
}

