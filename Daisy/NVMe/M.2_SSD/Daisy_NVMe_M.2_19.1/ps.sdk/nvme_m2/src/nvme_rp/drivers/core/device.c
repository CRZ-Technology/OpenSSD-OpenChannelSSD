/*
 * device.c
 *
 *  Created on: 2020. 1. 15.
 *      Author: ProDesk
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>

#include "uclass-internal.h"
#include "uclass.h"
#include "device.h"
#include "errno.h"
#include "types.h"

static int device_bind_common(struct udevice *parent, const struct driver *drv,
			      const char *name, void *platdata,
			      ulong driver_data, ofnode node,
			      uint of_platdata_size, struct udevice **devp)
{
	struct udevice *dev;
	struct uclass *uc;
	int size, ret = 0;

	if (devp)
		*devp = NULL;
	if (!name)
		return -EINVAL;

	ret = uclass_get(drv->id, &uc);
	if (ret) {
		return ret;
	}

	dev = calloc(1, sizeof(struct udevice));
	if (!dev)
		return -ENOMEM;

	INIT_LIST_HEAD(&dev->sibling_node);
	INIT_LIST_HEAD(&dev->child_head);
	INIT_LIST_HEAD(&dev->uclass_node);
	dev->platdata = platdata;
	dev->driver_data = driver_data;
	dev->name = name;
	dev->node = node;
	dev->parent = parent;
	dev->driver = drv;
	dev->uclass = uc;

	dev->seq = -1;
	dev->req_seq = -1;

	if (drv->platdata_auto_alloc_size) {
		bool alloc = !platdata;

		if (alloc) {
			dev->flags |= DM_FLAG_ALLOC_PDATA;
			dev->platdata = calloc(1,
					       drv->platdata_auto_alloc_size);
			if (!dev->platdata) {
				ret = -ENOMEM;
				goto fail_alloc1;
			}
			if (platdata) {
				memcpy(dev->platdata, platdata,
				       of_platdata_size);
			}
		}
	}

	size = uc->uc_drv->per_device_platdata_auto_alloc_size;
	if (size) {
		dev->flags |= DM_FLAG_ALLOC_UCLASS_PDATA;
		dev->uclass_platdata = calloc(1, size);
		if (!dev->uclass_platdata) {
			ret = -ENOMEM;
			goto fail_alloc2;
		}
	}

	if (parent) {
		size = parent->driver->per_child_platdata_auto_alloc_size;
		if (!size) {
			size = parent->uclass->uc_drv->
					per_child_platdata_auto_alloc_size;
		}
		if (size) {
			dev->flags |= DM_FLAG_ALLOC_PARENT_PDATA;
			dev->parent_platdata = calloc(1, size);
			if (!dev->parent_platdata) {
				ret = -ENOMEM;
				goto fail_alloc3;
			}
		}
	}

	/* put dev into parent's successor list */
	if (parent)
		list_add_tail(&dev->sibling_node, &parent->child_head);

	ret = uclass_bind_device(dev);
	if (ret)
		goto fail_uclass_bind;

	/* if we fail to bind we remove device from successors and free it */
	if (drv->bind) {
		ret = drv->bind(dev);
		if (ret)
			goto fail_bind;
	}
	if (parent && parent->driver->child_post_bind) {
		ret = parent->driver->child_post_bind(dev);
		if (ret)
			goto fail_child_post_bind;
	}
	if (uc->uc_drv->post_bind) {
		ret = uc->uc_drv->post_bind(dev);
		if (ret)
			goto fail_uclass_post_bind;
	}

	if (devp)
		*devp = dev;

	dev->flags |= DM_FLAG_BOUND;

	return 0;

fail_uclass_post_bind:
	/* There is no child unbind() method, so no clean-up required */
fail_child_post_bind:

fail_bind:

fail_uclass_bind:

fail_alloc3:
	if (dev->flags & DM_FLAG_ALLOC_UCLASS_PDATA) {
		free(dev->uclass_platdata);
		dev->uclass_platdata = NULL;
	}
fail_alloc2:
	if (dev->flags & DM_FLAG_ALLOC_PDATA) {
		free(dev->platdata);
		dev->platdata = NULL;
	}
fail_alloc1:

	free(dev);

	return ret;
}

int device_bind_with_driver_data(struct udevice *parent,
				 const struct driver *drv, const char *name,
				 ulong driver_data, ofnode node,
				 struct udevice **devp)
{
	return device_bind_common(parent, drv, name, NULL, driver_data, node,
				  0, devp);
}

int device_bind_ofnode(struct udevice *parent, const struct driver *drv,
		       const char *name, void *platdata, ofnode node,
		       struct udevice **devp)
{
	return device_bind_common(parent, drv, name, platdata, 0, node, 0,
				  devp);
}

static void *alloc_priv(int size, uint flags)
{
	void *priv;

	flags = flags;

	priv = calloc(1, size);

	return priv;
}

int device_probe(struct udevice *dev)
{
	const struct driver *drv;
	int size = 0;
	int ret;
	int seq;

	if (!dev)
		return -EINVAL;

	if (dev->flags & DM_FLAG_ACTIVATED)
		return 0;

	drv = dev->driver;

	/* Allocate private data if requested and not reentered */
	if (drv->priv_auto_alloc_size && !dev->priv) {
		dev->priv = alloc_priv(drv->priv_auto_alloc_size, drv->flags);
		if (!dev->priv) {
			ret = -ENOMEM;
			goto fail;
		}
	}
	/* Allocate private data if requested and not reentered */
	size = dev->uclass->uc_drv->per_device_auto_alloc_size;
	if (size && !dev->uclass_priv) {
		dev->uclass_priv = alloc_priv(size,
					      dev->uclass->uc_drv->flags);
		if (!dev->uclass_priv) {
			ret = -ENOMEM;
			goto fail;
		}
	}

	/* Ensure all parents are probed */
	if (dev->parent) {
		size = dev->parent->driver->per_child_auto_alloc_size;
		if (!size) {
			size = dev->parent->uclass->uc_drv->
					per_child_auto_alloc_size;
		}
		if (size && !dev->parent_priv) {
			dev->parent_priv = alloc_priv(size, drv->flags);
			if (!dev->parent_priv) {
				ret = -ENOMEM;
				goto fail;
			}
		}

		ret = device_probe(dev->parent);
		if (ret)
			goto fail;

		/*
		 * The device might have already been probed during
		 * the call to device_probe() on its parent device
		 * (e.g. PCI bridge devices). Test the flags again
		 * so that we don't mess up the device.
		 */
		if (dev->flags & DM_FLAG_ACTIVATED)
			return 0;
	}

	seq = uclass_resolve_seq(dev);
	if (seq < 0) {
		ret = seq;
		goto fail;
	}
	dev->seq = seq;

	dev->flags |= DM_FLAG_ACTIVATED;

	if (drv->probe) {
		ret = drv->probe(dev);
		if (ret) {
			dev->flags &= ~DM_FLAG_ACTIVATED;
			goto fail;
		}
	}

	ret = uclass_post_probe_device(dev);
	if (ret)
		goto fail_uclass;

	return 0;
fail_uclass:

fail:
	dev->flags &= ~DM_FLAG_ACTIVATED;
	dev->seq = -1;

	return ret;
}

void device_set_name_alloced(struct udevice *dev)
{
	dev->flags |= DM_FLAG_NAME_ALLOCED;
}

int device_set_name(struct udevice *dev, const char *name)
{
	name = strdup(name);
	if (!name)
		return -ENOMEM;
	dev->name = name;

	return 0;
}

void *dev_get_parent_platdata(const struct udevice *dev)
{
	if (!dev) {
		return NULL;
	}

	return dev->parent_platdata;
}

void *dev_get_uclass_platdata(const struct udevice *dev)
{
	if (!dev) {
		return NULL;
	}

	return dev->uclass_platdata;
}

void *dev_get_priv(const struct udevice *dev)
{
	if (!dev) {
		return NULL;
	}

	return dev->priv;
}
