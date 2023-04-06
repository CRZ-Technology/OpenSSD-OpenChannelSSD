/*
 * pci-uclass.c
 *
 *  Created on: 2020. 1. 17.
 *      Author: ProDesk
 */

#include <stddef.h>
#include <stdbool.h>
#include <string.h>

#include "types.h"
#include "device.h"
#include "pci.h"
#include "device-internal.h"
#include "pci_ids.h"

/**
 * pci_match_one_device - Tell if a PCI device structure has a matching
 *                        PCI device id structure
 * @id: single PCI device id structure to match
 * @find: the PCI device id structure to match against
 *
 * Returns true if the finding pci_device_id structure matched or false if
 * there is no match.
 */
static bool pci_match_one_id(const struct pci_device_id *id,
			     const struct pci_device_id *find)
{
	if ((id->vendor == PCI_ANY_ID || id->vendor == find->vendor) &&
	    (id->device == PCI_ANY_ID || id->device == find->device) &&
	    (id->subvendor == PCI_ANY_ID || id->subvendor == find->subvendor) &&
	    (id->subdevice == PCI_ANY_ID || id->subdevice == find->subdevice) &&
	    !((id->class ^ find->class) & id->class_mask))
		return true;

	return false;
}


/**
 * pci_find_and_bind_driver() - Find and bind the right PCI driver
 *
 * This only looks at certain fields in the descriptor.
 *
 * @parent:	Parent bus
 * @find_id:	Specification of the driver to find
 * @bdf:	Bus/device/function addreess - see PCI_BDF()
 * @devp:	Returns a pointer to the device created
 * @return 0 if OK, -EPERM if the device is not needed before relocation and
 *	   therefore was not created, other -ve value on error
 */
static int pci_find_and_bind_driver(struct udevice *parent,
				    struct pci_device_id *find_id,
				    int bdf, struct udevice **devp)
{
	struct pci_driver_entry *start, *entry;
	ofnode node = ofnode_null();
	int n_ents;
	int ret;

	*devp = NULL;

	start = ll_entry_start(struct pci_driver_entry, pci_driver_entry);
	n_ents = ll_entry_count(struct pci_driver_entry, pci_driver_entry);
	for (entry = start; entry != start + n_ents; entry++) {
		const struct pci_device_id *id;
		struct udevice *dev;
		const struct driver *drv;

		for (id = entry->match;
		     id->vendor || id->subvendor || id->class_mask;
		     id++) {
			if (!pci_match_one_id(id, find_id))
				continue;

			drv = entry->driver;

			/*
			 * We could pass the descriptor to the driver as
			 * platdata (instead of NULL) and allow its bind()
			 * method to return -ENOENT if it doesn't support this
			 * device. That way we could continue the search to
			 * find another driver. For now this doesn't seem
			 * necesssary, so just bind the first match.
			 */
			ret = device_bind_ofnode(parent, drv, drv->name, NULL,
						 node, &dev);
			if (ret)
				goto error;
			dev->driver_data = id->driver_data;
			*devp = dev;
			//return 0;
		}
	}
	return 0;

error:
	return ret;
}

int pci_bind_bus_devices(struct udevice *bus)
{
	int ret;
	struct udevice *dev;
	struct pci_device_id find_id;

	memset(&find_id, '\0', sizeof(find_id));
	find_id.vendor = PCI_ANY_ID;
	find_id.device = PCI_ANY_ID;
	find_id.class = PCI_CLASS_STORAGE_EXPRESS;
	find_id.subvendor = PCI_ANY_ID;
	find_id.subdevice = PCI_ANY_ID;
	ret = pci_find_and_bind_driver(bus, &find_id, 0,
						       &dev);
	if (ret)
		return ret;

	return 0;
}
