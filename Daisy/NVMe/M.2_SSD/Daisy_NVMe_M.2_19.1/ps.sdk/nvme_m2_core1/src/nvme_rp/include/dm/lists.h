/*
 * list.h
 *
 *  Created on: 2020. 1. 16.
 *      Author: ProDesk
 */

#ifndef SRC_NVME_INCLUDE_DM_LISTS_H_
#define SRC_NVME_INCLUDE_DM_LISTS_H_

#include "uclass.h"
#include "ofnode.h"

/**
 * lists_driver_lookup_name() - Return u_boot_driver corresponding to name
 *
 * This function returns a pointer to a driver given its name. This is used
 * for binding a driver given its name and platdata.
 *
 * @name: Name of driver to look up
 * @return pointer to driver, or NULL if not found
 */
struct driver *lists_driver_lookup_name(const char *name);

/**
 * lists_uclass_lookup() - Return uclass_driver based on ID of the class
 * id:		ID of the class
 *
 * This function returns the pointer to uclass_driver, which is the class's
 * base structure based on the ID of the class. Returns NULL on error.
 */
struct uclass_driver *lists_uclass_lookup(enum uclass_id id);

/**
 * device_bind_driver() - bind a device to a driver
 *
 * This binds a new device to a driver.
 *
 * @parent:	Parent device
 * @drv_name:	Name of driver to attach to this parent
 * @dev_name:	Name of the new device thus created
 * @devp:	If non-NULL, returns the newly bound device
 */
int device_bind_driver(struct udevice *parent, const char *drv_name,
		       const char *dev_name, struct udevice **devp);

/**
 * device_bind_driver_to_node() - bind a device to a driver for a node
 *
 * This binds a new device to a driver for a given device tree node. This
 * should only be needed if the node lacks a compatible strings.
 *
 * @parent:	Parent device
 * @drv_name:	Name of driver to attach to this parent
 * @dev_name:	Name of the new device thus created
 * @node:	Device tree node
 * @devp:	If non-NULL, returns the newly bound device
 */
int device_bind_driver_to_node(struct udevice *parent, const char *drv_name,
			       const char *dev_name, ofnode node,
			       struct udevice **devp);

#endif /* SRC_NVME_INCLUDE_DM_LISTS_H_ */
