/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * (C) Copyright 2001 Sysgo Real-Time Solutions, GmbH <www.elinos.com>
 * Andreas Heppel <aheppel@sysgo.de>
 *
 * (C) Copyright 2002
 * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 */

#ifndef _PCI_H
#define _PCI_H

#include "device.h"

#define PCI_BUS(d)		(((d) >> 16) & 0xff)
#define PCI_DEV(d)		(((d) >> 11) & 0x1f)
#define PCI_FUNC(d)		(((d) >> 8) & 0x7)
#define PCI_DEVFN(d, f)		((d) << 11 | (f) << 8)
#define PCI_MASK_BUS(bdf)	((bdf) & 0xffff)
#define PCI_ADD_BUS(bus, devfn)	(((bus) << 16) | (devfn))
#define PCI_BDF(b, d, f)	((b) << 16 | PCI_DEVFN(d, f))
#define PCI_VENDEV(v, d)	(((v) << 16) | (d))
#define PCI_ANY_ID		(~0)

/**
 * pci_bind_bus_devices() - scan a PCI bus and bind devices
 *
 * Scan a PCI bus looking for devices. Bind each one that is found. If
 * devices are already bound that match the scanned devices, just update the
 * child data so that the device can be used correctly (this happens when
 * the device tree describes devices we expect to see on the bus).
 *
 * Devices that are bound in this way will use a generic PCI driver which
 * does nothing. The device can still be accessed but will not provide any
 * driver interface.
 *
 * @bus:	Bus containing devices to bind
 * @return 0 if OK, -ve on error
 */
int pci_bind_bus_devices(struct udevice *bus);



/**
 * PCI_DEVICE_CLASS - macro used to describe a specific pci device class
 * @dev_class: the class, subclass, prog-if triple for this device
 * @dev_class_mask: the class mask for this device
 *
 * This macro is used to create a struct pci_device_id that matches a
 * specific PCI class.  The vendor, device, subvendor, and subdevice
 * fields will be set to PCI_ANY_ID.
 */
#define PCI_DEVICE_CLASS(dev_class, dev_class_mask) \
	.class = (dev_class), .class_mask = (dev_class_mask), \
	.vendor = PCI_ANY_ID, .device = PCI_ANY_ID, \
	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID


struct pci_device_id {
	unsigned int vendor, device;	/* Vendor and device ID or PCI_ANY_ID */
	unsigned int subvendor, subdevice; /* Subsystem ID's or PCI_ANY_ID */
	unsigned int class, class_mask;	/* (class,subclass,prog-if) triplet */
	unsigned long driver_data;	/* Data private to the driver */
};

/**
 * struct pci_driver_entry - Matches a driver to its pci_device_id list
 * @driver: Driver to use
 * @match: List of match records for this driver, terminated by {}
 */
struct pci_driver_entry {
	struct driver *driver;
	const struct pci_device_id *match;
};

#define U_BOOT_PCI_DEVICE(__name, __match)				\
	ll_entry_declare(struct pci_driver_entry, __name, pci_driver_entry) = {\
		.driver = llsym(struct driver, __name, driver), \
		.match = __match, \
		}

#endif /* _PCI_H */

