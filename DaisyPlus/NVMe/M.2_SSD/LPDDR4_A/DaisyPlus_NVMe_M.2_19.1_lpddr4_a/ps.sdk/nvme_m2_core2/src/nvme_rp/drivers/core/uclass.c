/*
 * uclass.c
 *
 *  Created on: 2020. 1. 16.
 *      Author: ProDesk
 */

#include <stddef.h>
#include <stdlib.h>
#include <stdbool.h>

#include "lists.h"
#include "list.h"
#include "uclass.h"
#include "uclass-id.h"
#include "errno.h"
#include "linker_lists.h"
#include "device.h"

static LIST_HEAD(uclass_root);

struct uclass *uclass_find(enum uclass_id key)
{
	struct uclass *uc;

	/*
	 * TODO(sjg@chromium.org): Optimise this, perhaps moving the found
	 * node to the start of the list, or creating a linear array mapping
	 * id to node.
	 */
	list_for_each_entry(uc, &uclass_root, sibling_node) {
		if (uc->uc_drv->id == key)
			return uc;
	}

	return NULL;
}

/**
 * uclass_add() - Create new uclass in list
 * @id: Id number to create
 * @ucp: Returns pointer to uclass, or NULL on error
 * @return 0 on success, -ve on error
 *
 * The new uclass is added to the list. There must be only one uclass for
 * each id.
 */
static int uclass_add(enum uclass_id id, struct uclass **ucp)
{
	struct uclass_driver *uc_drv;
	struct uclass *uc;
	int ret;

	*ucp = NULL;
	uc_drv = lists_uclass_lookup(id);
	if (!uc_drv) {
		/*
		 * Use a strange error to make this case easier to find. When
		 * a uclass is not available it can prevent driver model from
		 * starting up and this failure is otherwise hard to debug.
		 */
		return -EPFNOSUPPORT;
	}
	uc = calloc(1, sizeof(*uc));
	if (!uc)
		return -ENOMEM;
	if (uc_drv->priv_auto_alloc_size) {
		uc->priv = calloc(1, uc_drv->priv_auto_alloc_size);
		if (!uc->priv) {
			ret = -ENOMEM;
			goto fail_mem;
		}
	}
	uc->uc_drv = uc_drv;
	INIT_LIST_HEAD(&uc->sibling_node);
	INIT_LIST_HEAD(&uc->dev_head);
	list_add(&uc->sibling_node, &uclass_root);

	if (uc_drv->init) {
		ret = uc_drv->init(uc);
		if (ret)
			goto fail;
	}

	*ucp = uc;

	return 0;
fail:
	if (uc_drv->priv_auto_alloc_size) {
		free(uc->priv);
		uc->priv = NULL;
	}
	list_del(&uc->sibling_node);
fail_mem:
	free(uc);

	return ret;
}

int uclass_get(enum uclass_id id, struct uclass **ucp)
{
	struct uclass *uc;

	*ucp = NULL;
	uc = uclass_find(id);
	if (!uc)
		return uclass_add(id, ucp);
	*ucp = uc;

	return 0;
}

int uclass_find_device_by_seq(enum uclass_id id, int seq_or_req_seq,
			      bool find_req_seq, struct udevice **devp)
{
	struct uclass *uc;
	struct udevice *dev;
	int ret;

	*devp = NULL;
	if (seq_or_req_seq == -1)
		return -ENODEV;
	ret = uclass_get(id, &uc);
	if (ret)
		return ret;

	uclass_foreach_dev(dev, uc) {
		if ((find_req_seq ? dev->req_seq : dev->seq) ==
				seq_or_req_seq) {
			*devp = dev;
			return 0;
		}
	}

	return -ENODEV;
}

int uclass_bind_device(struct udevice *dev)
{
	struct uclass *uc;
	int ret;

	uc = dev->uclass;
	list_add_tail(&dev->uclass_node, &uc->dev_head);

	if (dev->parent) {
		struct uclass_driver *uc_drv = dev->parent->uclass->uc_drv;

		if (uc_drv->child_post_bind) {
			ret = uc_drv->child_post_bind(dev);
			if (ret)
				goto err;
		}
	}

	return 0;
err:
	/* There is no need to undo the parent's post_bind call */
	list_del(&dev->uclass_node);

	return ret;
}

int uclass_resolve_seq(struct udevice *dev)
{
	struct udevice *dup;
	int seq;
	int ret;

	ret = uclass_find_device_by_seq(dev->uclass->uc_drv->id, dev->req_seq,
					false, &dup);
	if (!ret) {
	} else if (ret == -ENODEV) {
		/* Our requested sequence number is available */
		if (dev->req_seq != -1)
			return dev->req_seq;
	} else {
		return ret;
	}

	for (seq = 0; seq < DM_MAX_SEQ; seq++) {
		ret = uclass_find_device_by_seq(dev->uclass->uc_drv->id, seq,
						false, &dup);
		if (ret == -ENODEV)
			break;
		if (ret)
			return ret;
	}
	return seq;
}

int uclass_post_probe_device(struct udevice *dev)
{
	struct uclass_driver *uc_drv;
	int ret;

	if (dev->parent) {
		uc_drv = dev->parent->uclass->uc_drv;
		if (uc_drv->child_post_probe) {
			ret = uc_drv->child_post_probe(dev);
			if (ret)
				return ret;
		}
	}

	uc_drv = dev->uclass->uc_drv;
	if (uc_drv->post_probe)
		return uc_drv->post_probe(dev);

	return 0;
}
