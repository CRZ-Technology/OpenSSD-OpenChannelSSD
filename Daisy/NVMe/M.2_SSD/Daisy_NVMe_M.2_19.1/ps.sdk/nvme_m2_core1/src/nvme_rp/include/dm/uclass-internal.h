/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * Copyright (c) 2013 Google, Inc
 *
 * (C) Copyright 2012
 * Pavel Herrmann <morpheus.ibis@gmail.com>
 */

#ifndef _DM_UCLASS_INTERNAL_H
#define _DM_UCLASS_INTERNAL_H

#include "device.h"

/**
 * uclass_bind_device() - Associate device with a uclass
 *
 * Connect the device into uclass's list of devices.
 *
 * @dev:	Pointer to the device
 * #return 0 on success, -ve on error
 */
int uclass_bind_device(struct udevice *dev);

/**
 * uclass_post_probe_device() - Deal with a device that has just been probed
 *
 * Perform any post-processing of a probed device that is needed by the
 * uclass.
 *
 * @dev:	Pointer to the device
 * #return 0 on success, -ve on error
 */
int uclass_post_probe_device(struct udevice *dev);


#endif

