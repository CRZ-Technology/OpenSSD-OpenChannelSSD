/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * Copyright (C) 2013 Google, Inc
 *
 * (C) Copyright 2012
 * Pavel Herrmann <morpheus.ibis@gmail.com>
 * Marek Vasut <marex@denx.de>
 */

#ifndef _DM_DEVICE_INTERNAL_H
#define _DM_DEVICE_INTERNAL_H

#include "ofnode.h"

struct device_node;
struct udevice;

int device_bind_ofnode(struct udevice *parent, const struct driver *drv,
		       const char *name, void *platdata, ofnode node,
		       struct udevice **devp);

/**
 * device_bind_with_driver_data() - Create a device and bind it to a driver
 *
 * Called to set up a new device attached to a driver, in the case where the
 * driver was matched to the device by means of a match table that provides
 * driver_data.
 *
 * Once bound a device exists but is not yet active until device_probe() is
 * called.
 *
 * @parent: Pointer to device's parent, under which this driver will exist
 * @drv: Device's driver
 * @name: Name of device (e.g. device tree node name)
 * @driver_data: The driver_data field from the driver's match table.
 * @node: Device tree node for this device. This is invalid for devices which
 * don't use device tree.
 * @devp: if non-NULL, returns a pointer to the bound device
 * @return 0 if OK, -ve on error
 */
int device_bind_with_driver_data(struct udevice *parent,
				 const struct driver *drv, const char *name,
				 ulong driver_data, ofnode node,
				 struct udevice **devp);

/**
 * device_probe() - Probe a device, activating it
 *
 * Activate a device so that it is ready for use. All its parents are probed
 * first.
 *
 * @dev: Pointer to device to probe
 * @return 0 if OK, -ve on error
 */
int device_probe(struct udevice *dev);


#endif

