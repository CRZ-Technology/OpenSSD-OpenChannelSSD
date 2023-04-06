/*
 * blk-uclass.c
 *
 *  Created on: 2020. 1. 16.
 *      Author: ProDesk
 */

#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#include "blk.h"
#include "errno.h"
#include "uclass.h"
#include "device.h"
#include "lists.h"
#include "device-internal.h"

struct blk_desc *blk_get_devnum_by_type(enum if_type if_type, int devnum)
{
	struct blk_desc *desc;
	struct udevice *dev;
	int ret;

	ret = blk_get_device(if_type, devnum, &dev);
	if (ret)
		return NULL;
	desc = dev_get_uclass_platdata(dev);

	return desc;
}

/**
 * get_desc() - Get the block device descriptor for the given device number
 *
 * @if_type:	Interface type
 * @devnum:	Device number (0 = first)
 * @descp:	Returns block device descriptor on success
 * @return 0 on success, -ENODEV if there is no such device and no device
 * with a higher device number, -ENOENT if there is no such device but there
 * is one with a higher number, or other -ve on other error.
 */
static int get_desc(enum if_type if_type, int devnum, struct blk_desc **descp)
{
	bool found_more = false;
	struct udevice *dev;
	struct uclass *uc;
	int ret;

	*descp = NULL;
	ret = uclass_get(UCLASS_BLK, &uc);
	if (ret)
		return ret;
	uclass_foreach_dev(dev, uc) {
		struct blk_desc *desc = dev_get_uclass_platdata(dev);

		if (desc->if_type == if_type) {
			if (desc->devnum == devnum) {
				ret = device_probe(dev);
				if (ret)
					return ret;

				*descp = desc;
				return 0;
			} else if (desc->devnum > devnum) {
				found_more = true;
			}
		}
	}

	return found_more ? -ENOENT : -ENODEV;
}

ulong blk_read_devnum(enum if_type if_type, int devnum, lbaint_t start,
		      lbaint_t blkcnt, void *buffer)
{
	struct blk_desc *desc;
	ulong n;
	int ret;

	ret = get_desc(if_type, devnum, &desc);
	if (ret)
		return ret;
	n = blk_dread(desc, start, blkcnt, buffer);

	return n;
}

ulong blk_write_devnum(enum if_type if_type, int devnum, lbaint_t start,
		       lbaint_t blkcnt, const void *buffer)
{
	struct blk_desc *desc;
	int ret;

	ret = get_desc(if_type, devnum, &desc);
	if (ret)
		return ret;
	return blk_dwrite(desc, start, blkcnt, buffer);
}

int blk_find_max_devnum(enum if_type if_type)
{
	struct udevice *dev;
	int max_devnum = -ENODEV;
	struct uclass *uc;
	int ret;

	ret = uclass_get(UCLASS_BLK, &uc);
	if (ret)
		return ret;
	uclass_foreach_dev(dev, uc) {
		struct blk_desc *desc = dev_get_uclass_platdata(dev);

		if (desc->if_type == if_type && desc->devnum > max_devnum)
			max_devnum = desc->devnum;
	}

	return max_devnum;
}

int blk_next_free_devnum(enum if_type if_type)
{
	int ret;

	ret = blk_find_max_devnum(if_type);
	if (ret == -ENODEV)
		return 0;
	if (ret < 0)
		return ret;

	return ret + 1;
}

static int blk_claim_devnum(enum if_type if_type, int devnum)
{
	struct udevice *dev;
	struct uclass *uc;
	int ret;

	ret = uclass_get(UCLASS_BLK, &uc);
	if (ret)
		return ret;
	uclass_foreach_dev(dev, uc) {
		struct blk_desc *desc = dev_get_uclass_platdata(dev);

		if (desc->if_type == if_type && desc->devnum == devnum) {
			int next = blk_next_free_devnum(if_type);

			if (next < 0)
				return next;
			desc->devnum = next;
			return 0;
		}
	}

	return -ENOENT;
}

int blk_find_device(int if_type, int devnum, struct udevice **devp)
{
	struct uclass *uc;
	struct udevice *dev;
	int ret;

	ret = uclass_get(UCLASS_BLK, &uc);
	if (ret)
		return ret;
	uclass_foreach_dev(dev, uc) {
		struct blk_desc *desc = dev_get_uclass_platdata(dev);

		if (desc->if_type == if_type && desc->devnum == devnum) {
			*devp = dev;
			return 0;
		}
	}

	return -ENODEV;
}

int blk_get_device(int if_type, int devnum, struct udevice **devp)
{
	int ret;

	ret = blk_find_device(if_type, devnum, devp);
	if (ret)
		return ret;

	return device_probe(*devp);
}

unsigned long blk_dread(struct blk_desc *block_dev, lbaint_t start,
			lbaint_t blkcnt, void *buffer)
{
	struct udevice *dev = block_dev->bdev;
	const struct blk_ops *ops = blk_get_ops(dev);
	ulong blks_read;

	if (!ops->read)
		return -ENOSYS;

	blks_read = ops->read(dev, start, blkcnt, buffer);

	return blks_read;
}

unsigned long blk_dwrite(struct blk_desc *block_dev, lbaint_t start,
			 lbaint_t blkcnt, const void *buffer)
{
	struct udevice *dev = block_dev->bdev;
	const struct blk_ops *ops = blk_get_ops(dev);

	if (!ops->write)
		return -ENOSYS;

	return ops->write(dev, start, blkcnt, buffer);
}

int blk_create_device(struct udevice *parent, const char *drv_name,
		      const char *name, int if_type, int devnum, int blksz,
		      lbaint_t lba, struct udevice **devp)
{
	struct blk_desc *desc;
	struct udevice *dev;
	int ret;

	if (devnum == -1) {
		devnum = blk_next_free_devnum(if_type);
	} else {
		ret = blk_claim_devnum(if_type, devnum);
		if (ret < 0 && ret != -ENOENT)
			return ret;
	}
	if (devnum < 0)
		return devnum;
	ret = device_bind_driver(parent, drv_name, name, &dev);
	if (ret)
		return ret;
	desc = dev_get_uclass_platdata(dev);
	desc->if_type = if_type;
	desc->blksz = blksz;
	desc->lba = lba;
	desc->part_type = PART_TYPE_UNKNOWN;
	desc->bdev = dev;
	desc->devnum = devnum;
	*devp = dev;

	return 0;
}

int blk_create_devicef(struct udevice *parent, const char *drv_name,
		       const char *name, int if_type, int devnum, int blksz,
		       lbaint_t lba, struct udevice **devp)
{
	char dev_name[30], *str;
	int ret;

	snprintf(dev_name, sizeof(dev_name), "%s.%s", parent->name, name);
	str = strdup(dev_name);
	if (!str)
		return -ENOMEM;

	ret = blk_create_device(parent, drv_name, str, if_type, devnum,
				blksz, lba, devp);
	if (ret) {
		free(str);
		return ret;
	}
	device_set_name_alloced(*devp);

	return 0;
}

static int blk_post_probe(struct udevice *dev)
{
#if defined(CONFIG_PARTITIONS) && defined(CONFIG_HAVE_BLOCK_DEVICE)
	struct blk_desc *desc = dev_get_uclass_platdata(dev);

	part_init(desc);
#endif

	return 0;
}

UCLASS_DRIVER(blk) = {
	.id		= UCLASS_BLK,
	.name		= "blk",
	.post_probe	= blk_post_probe,
	.per_device_platdata_auto_alloc_size = sizeof(struct blk_desc),
};
