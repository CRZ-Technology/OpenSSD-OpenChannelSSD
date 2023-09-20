#ifndef __ZNS_H__
#define __ZNS_H__

#include "queue.h"
#include "xil_types.h"
#include "assert.h"

#define true 1
#define false 0

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;

enum NvmeIdNsZonedOzcs {
    NVME_ID_NS_ZONED_OZCS_RAZB    = 1 << 0,
    NVME_ID_NS_ZONED_OZCS_ZRWASUP = 1 << 1,
};

#define NVME_SET_CSI(vec, csi) (vec |= (uint8_t)(1 << (csi)))

enum NvmeZoneAttr {
    NVME_ZA_FINISHED_BY_CTLR         = 1 << 0,
    NVME_ZA_FINISH_RECOMMENDED       = 1 << 1,
    NVME_ZA_RESET_RECOMMENDED        = 1 << 2,
    NVME_ZA_ZRWA_VALID               = 1 << 3,
    NVME_ZA_ZD_EXT_VALID             = 1 << 7,
};

typedef struct NvmeZoneReportHeader {
    uint64_t    nr_zones;
    uint8_t     rsvd[56];
} NvmeZoneReportHeader;

typedef unsigned char bool;

enum NvmeZoneReceiveAction {
    NVME_ZONE_REPORT                 = 0,
    NVME_ZONE_REPORT_EXTENDED        = 1,
};

enum NvmeZoneReportType {
    NVME_ZONE_REPORT_ALL             = 0,
    NVME_ZONE_REPORT_EMPTY           = 1,
    NVME_ZONE_REPORT_IMPLICITLY_OPEN = 2,
    NVME_ZONE_REPORT_EXPLICITLY_OPEN = 3,
    NVME_ZONE_REPORT_CLOSED          = 4,
    NVME_ZONE_REPORT_FULL            = 5,
    NVME_ZONE_REPORT_READ_ONLY       = 6,
    NVME_ZONE_REPORT_OFFLINE         = 7,
};

enum NvmeZoneSendAction {
    NVME_ZONE_ACTION_RSD             = 0x00,
    NVME_ZONE_ACTION_CLOSE           = 0x01,
    NVME_ZONE_ACTION_FINISH          = 0x02,
    NVME_ZONE_ACTION_OPEN            = 0x03,
    NVME_ZONE_ACTION_RESET           = 0x04,
    NVME_ZONE_ACTION_OFFLINE         = 0x05,
    NVME_ZONE_ACTION_SET_ZD_EXT      = 0x10,
    NVME_ZONE_ACTION_ZRWA_FLUSH      = 0x11,
};

enum {
    NVME_ZSFLAG_SELECT_ALL = 1 << 0,
    NVME_ZSFLAG_ZRWA_ALLOC = 1 << 1,
};

enum NvmeZoneType {
    NVME_ZONE_TYPE_RESERVED          = 0x00,
    NVME_ZONE_TYPE_SEQ_WRITE         = 0x02,
};

typedef enum NvmeZoneState {
    NVME_ZONE_STATE_RESERVED         = 0x00,
    NVME_ZONE_STATE_EMPTY            = 0x01,
    NVME_ZONE_STATE_IMPLICITLY_OPEN  = 0x02,
    NVME_ZONE_STATE_EXPLICITLY_OPEN  = 0x03,
    NVME_ZONE_STATE_CLOSED           = 0x04,
    NVME_ZONE_STATE_READ_ONLY        = 0x0d,
    NVME_ZONE_STATE_FULL             = 0x0e,
    NVME_ZONE_STATE_OFFLINE          = 0x0f,
} NvmeZoneState;

enum NvmeStatusCodes {
    NVME_SUCCESS                = 0x0000,
    NVME_INVALID_OPCODE         = 0x0001,
    NVME_INVALID_FIELD          = 0x0002,
    NVME_CID_CONFLICT           = 0x0003,
    NVME_DATA_TRAS_ERROR        = 0x0004,
    NVME_POWER_LOSS_ABORT       = 0x0005,
    NVME_INTERNAL_DEV_ERROR     = 0x0006,
    NVME_CMD_ABORT_REQ          = 0x0007,
    NVME_CMD_ABORT_SQ_DEL       = 0x0008,
    NVME_CMD_ABORT_FAILED_FUSE  = 0x0009,
    NVME_CMD_ABORT_MISSING_FUSE = 0x000a,
    NVME_INVALID_NSID           = 0x000b,
    NVME_CMD_SEQ_ERROR          = 0x000c,
    NVME_INVALID_SGL_SEG_DESCR  = 0x000d,
    NVME_INVALID_NUM_SGL_DESCRS = 0x000e,
    NVME_DATA_SGL_LEN_INVALID   = 0x000f,
    NVME_MD_SGL_LEN_INVALID     = 0x0010,
    NVME_SGL_DESCR_TYPE_INVALID = 0x0011,
    NVME_INVALID_USE_OF_CMB     = 0x0012,
    NVME_INVALID_PRP_OFFSET     = 0x0013,
    NVME_CMD_SET_CMB_REJECTED   = 0x002b,
    NVME_INVALID_CMD_SET        = 0x002c,
    NVME_FDP_DISABLED           = 0x0029,
    NVME_INVALID_PHID_LIST      = 0x002a,
    NVME_LBA_RANGE              = 0x0080,
    NVME_CAP_EXCEEDED           = 0x0081,
    NVME_NS_NOT_READY           = 0x0082,
    NVME_NS_RESV_CONFLICT       = 0x0083,
    NVME_FORMAT_IN_PROGRESS     = 0x0084,
    NVME_INVALID_CQID           = 0x0100,
    NVME_INVALID_QID            = 0x0101,
    NVME_MAX_QSIZE_EXCEEDED     = 0x0102,
    NVME_ACL_EXCEEDED           = 0x0103,
    NVME_RESERVED               = 0x0104,
    NVME_AER_LIMIT_EXCEEDED     = 0x0105,
    NVME_INVALID_FW_SLOT        = 0x0106,
    NVME_INVALID_FW_IMAGE       = 0x0107,
    NVME_INVALID_IRQ_VECTOR     = 0x0108,
    NVME_INVALID_LOG_ID         = 0x0109,
    NVME_INVALID_FORMAT         = 0x010a,
    NVME_FW_REQ_RESET           = 0x010b,
    NVME_INVALID_QUEUE_DEL      = 0x010c,
    NVME_FID_NOT_SAVEABLE       = 0x010d,
    NVME_FEAT_NOT_CHANGEABLE    = 0x010e,
    NVME_FEAT_NOT_NS_SPEC       = 0x010f,
    NVME_FW_REQ_SUSYSTEM_RESET  = 0x0110,
    NVME_NS_ALREADY_ATTACHED    = 0x0118,
    NVME_NS_PRIVATE             = 0x0119,
    NVME_NS_NOT_ATTACHED        = 0x011a,
    NVME_NS_CTRL_LIST_INVALID   = 0x011c,
    NVME_INVALID_CTRL_ID        = 0x011f,
    NVME_INVALID_SEC_CTRL_STATE = 0x0120,
    NVME_INVALID_NUM_RESOURCES  = 0x0121,
    NVME_INVALID_RESOURCE_ID    = 0x0122,
    NVME_CONFLICTING_ATTRS      = 0x0180,
    NVME_INVALID_PROT_INFO      = 0x0181,
    NVME_WRITE_TO_RO            = 0x0182,
    NVME_CMD_SIZE_LIMIT         = 0x0183,
    NVME_INVALID_ZONE_OP        = 0x01b6,
    NVME_NOZRWA                 = 0x01b7,
    NVME_ZONE_BOUNDARY_ERROR    = 0x01b8,
    NVME_ZONE_FULL              = 0x01b9,
    NVME_ZONE_READ_ONLY         = 0x01ba,
    NVME_ZONE_OFFLINE           = 0x01bb,
    NVME_ZONE_INVALID_WRITE     = 0x01bc,
    NVME_ZONE_TOO_MANY_ACTIVE   = 0x01bd,
    NVME_ZONE_TOO_MANY_OPEN     = 0x01be,
    NVME_ZONE_INVAL_TRANSITION  = 0x01bf,
    NVME_WRITE_FAULT            = 0x0280,
    NVME_UNRECOVERED_READ       = 0x0281,
    NVME_E2E_GUARD_ERROR        = 0x0282,
    NVME_E2E_APP_ERROR          = 0x0283,
    NVME_E2E_REF_ERROR          = 0x0284,
    NVME_CMP_FAILURE            = 0x0285,
    NVME_ACCESS_DENIED          = 0x0286,
    NVME_DULB                   = 0x0287,
    NVME_E2E_STORAGE_TAG_ERROR  = 0x0288,
    NVME_MORE                   = 0x2000,
    NVME_DNR                    = 0x4000,
    NVME_NO_COMPLETE            = 0xffff,
};

typedef struct NvmeZoneDescr {
    uint8_t     zt;
    uint8_t     zs;
    uint8_t     za;
    uint8_t     zal;
    uint8_t     rsvd3[4];
    uint64_t    zcap;
    uint64_t    zslba;
    uint64_t    wp;
    uint8_t     rsvd32[32];
} NvmeZoneDescr;

typedef struct NvmeZone {
    NvmeZoneDescr   d;
    uint64_t        w_ptr;
    QTAILQ_ENTRY(NvmeZone) entry;
} NvmeZone;

typedef struct NvmeNamespaceParams {
    bool     detached;
    bool     shared;
    uint32_t nsid;
    uint64_t eui64;
    bool     eui64_default;

    uint16_t ms;
    uint8_t  mset;
    uint8_t  pi;
    uint8_t  pil;
    uint8_t  pif;

    uint16_t mssrl;
    uint32_t mcl;
    uint8_t  msrc;

    bool     zoned;
    bool     cross_zone_read;
    uint64_t zone_size_bs;
    uint64_t zone_cap_bs;
    uint32_t max_active_zones;
    uint32_t max_open_zones;
    uint32_t zd_extension_size;

    uint32_t numzrwa;
    uint64_t zrwas;
    uint64_t zrwafg;

    uint8_t  zasl;
    bool     auto_transition_zones;

    struct {
        char *ruhs;
    } fdp;
} NvmeNamespaceParams;

typedef struct NvmeIdNsZoned {
    uint16_t    zoc;
    uint16_t    ozcs;
    uint32_t    mar;
    uint32_t    mor;
    uint32_t    rrl;
    uint32_t    frl;
    uint8_t     rsvd12[24];
    uint32_t    numzrwa;
    uint16_t    zrwafg;
    uint16_t    zrwas;
    uint8_t     zrwacap;
    uint8_t     rsvd53[2763];
    NvmeLBAFE   lbafe[16];
    uint8_t     rsvd3072[768];
    uint8_t     vs[256];
} NvmeIdNsZoned;

typedef struct NvmeLBAF {
    uint16_t    ms;
    uint8_t     ds;
    uint8_t     rp;
} NvmeLBAF;

#define NVME_NSID_BROADCAST 0xffffffff
#define NVME_MAX_NLBAF 64

typedef struct NvmeIdNs {
    uint64_t    nsze;
    uint64_t    ncap;
    uint64_t    nuse;
    uint8_t     nsfeat;
    uint8_t     nlbaf;
    uint8_t     flbas;
    uint8_t     mc;
    uint8_t     dpc;
    uint8_t     dps;
    uint8_t     nmic;
    uint8_t     rescap;
    uint8_t     fpi;
    uint8_t     dlfeat;
    uint16_t    nawun;
    uint16_t    nawupf;
    uint16_t    nacwu;
    uint16_t    nabsn;
    uint16_t    nabo;
    uint16_t    nabspf;
    uint16_t    noiob;
    uint8_t     nvmcap[16];
    uint16_t    npwg;
    uint16_t    npwa;
    uint16_t    npdg;
    uint16_t    npda;
    uint16_t    nows;
    uint16_t    mssrl;
    uint32_t    mcl;
    uint8_t     msrc;
    uint8_t     rsvd81[18];
    uint8_t     nsattr;
    uint16_t    nvmsetid;
    uint16_t    endgid;
    uint8_t     nguid[16];
    uint64_t    eui64;
    NvmeLBAF    lbaf[NVME_MAX_NLBAF];
    uint8_t     vs[3712];
} NvmeIdNs;

#define NVME_ID_NS_NVM_ELBAF_PIF(elbaf) (((elbaf) >> 7) & 0x3)

typedef struct NvmeIdNsNvm {
    uint64_t    lbstm;
    uint8_t     pic;
    uint8_t     rsvd9[3];
    uint32_t    elbaf[NVME_MAX_NLBAF];
    uint8_t     rsvd268[3828];
} NvmeIdNsNvm;

typedef struct NvmeNamespace {
    int32_t      bootindex;
    int64_t      size;
    int64_t      moff;
    NvmeIdNs     id_ns;
    NvmeIdNsNvm  id_ns_nvm;
    NvmeLBAF     lbaf;
    unsigned int nlbaf;
    size_t       lbasz;
    const uint32_t *iocs;
    uint8_t      csi;
    uint16_t     status;
    int          attached;
    uint8_t      pif;

    struct {
        uint16_t zrwas;
        uint16_t zrwafg;
        uint32_t numzrwa;
    } zns;

    QTAILQ_ENTRY(NvmeNamespace) entry;

    NvmeIdNsZoned   *id_ns_zoned;
    NvmeZone        *zone_array;
    QTAILQ_HEAD(, NvmeZone) exp_open_zones;
    QTAILQ_HEAD(, NvmeZone) imp_open_zones;
    QTAILQ_HEAD(, NvmeZone) closed_zones;
    QTAILQ_HEAD(, NvmeZone) full_zones;
    uint32_t        num_zones;
    uint64_t        zone_size;
    uint64_t        zone_capacity;
    uint32_t        zone_size_log2;
    uint8_t         *zd_extensions;
    int32_t         nr_open_zones;
    int32_t         nr_active_zones;

    NvmeNamespaceParams params;

    struct {
        uint32_t err_rec;
    } features;

    struct {
        uint16_t nphs;
        /* reclaim unit handle identifiers indexed by placement handle */
        uint16_t *phs;
    } fdp;
} NvmeNamespace;

typedef struct NvmeSglDescriptor {
    uint64_t addr;
    uint32_t len;
    uint8_t  rsvd[3];
    uint8_t  type;
} NvmeSglDescriptor;

typedef union NvmeCmdDptr {
    struct {
        uint64_t    prp1;
        uint64_t    prp2;
    };

    NvmeSglDescriptor sgl;
} NvmeCmdDptr;

typedef struct NvmeZoneSendCmd {
    uint8_t     opcode;
    uint8_t     flags;
    uint16_t    cid;
    uint32_t    nsid;
    uint32_t    rsvd8[4];
    NvmeCmdDptr dptr;
    uint64_t    slba;
    uint32_t    rsvd48;
    uint8_t     zsa;
    uint8_t     zsflags;
    uint8_t     rsvd54[2];
    uint32_t    rsvd56[2];
} NvmeZoneSendCmd;

typedef struct NvmeCmd {
    uint8_t     opcode;
    uint8_t     flags;
    uint16_t    cid;
    uint32_t    nsid;
    uint64_t    res1;
    uint64_t    mptr;
    NvmeCmdDptr dptr;
    uint32_t    cdw10;
    uint32_t    cdw11;
    uint32_t    cdw12;
    uint32_t    cdw13;
    uint32_t    cdw14;
    uint32_t    cdw15;
} NvmeCmd;

static inline NvmeZoneState nvme_get_zone_state(NvmeZone *zone)
{
    return zone->d.zs >> 4;
}

static inline void nvme_set_zone_state(NvmeZone *zone, NvmeZoneState state)
{
    zone->d.zs = state << 4;
}

static inline uint64_t nvme_zone_wr_boundary(NvmeZone *zone)
{
    return zone->d.zslba + zone->d.zcap;
}

static inline bool nvme_wp_is_valid(NvmeZone *zone)
{
    uint8_t st = nvme_get_zone_state(zone);

    return st != NVME_ZONE_STATE_FULL &&
           st != NVME_ZONE_STATE_READ_ONLY &&
           st != NVME_ZONE_STATE_OFFLINE;
}

static inline void nvme_aor_inc_open(NvmeNamespace *ns)
{
    assert(ns->nr_open_zones >= 0);
    if (ns->params.max_open_zones) {
        ns->nr_open_zones++;
        assert(ns->nr_open_zones <= ns->params.max_open_zones);
    }
}

static inline void nvme_aor_dec_open(NvmeNamespace *ns)
{
    if (ns->params.max_open_zones) {
        assert(ns->nr_open_zones > 0);
        ns->nr_open_zones--;
    }
    assert(ns->nr_open_zones >= 0);
}

static inline void nvme_aor_inc_active(NvmeNamespace *ns)
{
    assert(ns->nr_active_zones >= 0);
    if (ns->params.max_active_zones) {
        ns->nr_active_zones++;
        assert(ns->nr_active_zones <= ns->params.max_active_zones);
    }
}

static inline void nvme_aor_dec_active(NvmeNamespace *ns)
{
    if (ns->params.max_active_zones) {
        assert(ns->nr_active_zones > 0);
        ns->nr_active_zones--;
        assert(ns->nr_active_zones >= ns->nr_open_zones);
    }
    assert(ns->nr_active_zones >= 0);
}

/**
 * clz64 - count leading zeros in a 64-bit value.
 * @val: The value to search
 *
 * Returns 64 if the value is zero.  Note that the GCC builtin is
 * undefined if the value is zero.
 */
static inline int clz64(uint64_t val)
{
    return val ? __builtin_clzll(val) : 64;
}

extern NvmeNamespace *ns;

void zns_init(void);
uint16_t nvme_zone_mgmt_send(unsigned int cmdSlotTag, void *nvmeIOCmd, char *send_cpl);
uint16_t nvme_zone_mgmt_recv(unsigned int pZoneManagementAddr, void *nvmeIOCmd, unsigned int *p_datasize);
uint16_t nvme_read(unsigned int slb, unsigned int nlb);
uint16_t nvme_do_write(unsigned int *slba, unsigned int nlb, bool append, unsigned int *w_ptr);

#endif /* __ZNS_H__ */
