/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * (C) Copyright 2000-2004
 * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
 */

#ifndef BLK_H
#define BLK_H

#include <stdio.h>

typedef uint64_t lbaint_t;

/* Interface types: */
enum if_type {
	IF_TYPE_UNKNOWN = 0,
	IF_TYPE_IDE,
	IF_TYPE_SCSI,
	IF_TYPE_ATAPI,
	IF_TYPE_USB,
	IF_TYPE_DOC,
	IF_TYPE_MMC,
	IF_TYPE_SD,
	IF_TYPE_SATA,
	IF_TYPE_HOST,
	IF_TYPE_NVME,
	IF_TYPE_EFI,
	IF_TYPE_VIRTIO,

	IF_TYPE_COUNT,			/* Number of interface types */
};

#define BLK_VEN_SIZE		40
#define BLK_PRD_SIZE		20
#define BLK_REV_SIZE		8

/*
 * Identifies the partition table type (ie. MBR vs GPT GUID) signature
 */
enum sig_type {
	SIG_TYPE_NONE,
	SIG_TYPE_MBR,
	SIG_TYPE_GUID,

	SIG_TYPE_COUNT			/* Number of signature types */
};

/*
 * With driver model (CONFIG_BLK) this is uclass platform data, accessible
 * with dev_get_uclass_platdata(dev)
 */
struct blk_desc {
	/*
	 * TODO: With driver model we should be able to use the parent
	 * device's uclass instead.
	 */
	enum if_type	if_type;	/* type of the interface */
	int		devnum;		/* device number */
	unsigned char	part_type;	/* partition type */
	unsigned char	target;		/* target SCSI ID */
	unsigned char	lun;		/* target LUN */
	unsigned char	hwpart;		/* HW partition, e.g. for eMMC */
	unsigned char	type;		/* device type */
	unsigned char	removable;	/* removable device */
#ifdef CONFIG_LBA48
	/* device can use 48bit addr (ATA/ATAPI v7) */
	unsigned char	lba48;
#endif
	lbaint_t	lba;		/* number of blocks */
	unsigned long	blksz;		/* block size */
	int		log2blksz;	/* for convenience: log2(blksz) */
	char		vendor[BLK_VEN_SIZE + 1]; /* device vendor string */
	char		product[BLK_PRD_SIZE + 1]; /* device product number */
	char		revision[BLK_REV_SIZE + 1]; /* firmware revision */
	enum sig_type	sig_type;	/* Partition table signature type */
	union {
		uint32_t mbr_sig;	/* MBR integer signature */
	};
	/*
	 * For now we have a few functions which take struct blk_desc as a
	 * parameter. This field allows them to look up the associated
	 * device. Once these functions are removed we can drop this field.
	 */
	struct udevice *bdev;
};

#define BLOCK_CNT(size, blk_desc) (PAD_COUNT(size, blk_desc->blksz))
#define PAD_TO_BLOCKSIZE(size, blk_desc) \
	(PAD_SIZE(size, blk_desc->blksz))

struct udevice;

/* Operations on block devices */
struct blk_ops {
	/**
	 * read() - read from a block device
	 *
	 * @dev:	Device to read from
	 * @start:	Start block number to read (0=first)
	 * @blkcnt:	Number of blocks to read
	 * @buffer:	Destination buffer for data read
	 * @return number of blocks read, or -ve error number (see the
	 * IS_ERR_VALUE() macro
	 */
	unsigned long (*read)(struct udevice *dev, lbaint_t start,
			      lbaint_t blkcnt, void *buffer);

	/**
	 * write() - write to a block device
	 *
	 * @dev:	Device to write to
	 * @start:	Start block number to write (0=first)
	 * @blkcnt:	Number of blocks to write
	 * @buffer:	Source buffer for data to write
	 * @return number of blocks written, or -ve error number (see the
	 * IS_ERR_VALUE() macro
	 */
	unsigned long (*write)(struct udevice *dev, lbaint_t start,
			       lbaint_t blkcnt, const void *buffer);

	/**
	 * erase() - erase a section of a block device
	 *
	 * @dev:	Device to (partially) erase
	 * @start:	Start block number to erase (0=first)
	 * @blkcnt:	Number of blocks to erase
	 * @return number of blocks erased, or -ve error number (see the
	 * IS_ERR_VALUE() macro
	 */
	unsigned long (*erase)(struct udevice *dev, lbaint_t start,
			       lbaint_t blkcnt);

	/**
	 * select_hwpart() - select a particular hardware partition
	 *
	 * Some devices (e.g. MMC) can support partitioning at the hardware
	 * level. This is quite separate from the normal idea of
	 * software-based partitions. MMC hardware partitions must be
	 * explicitly selected. Once selected only the region of the device
	 * covered by that partition is accessible.
	 *
	 * The MMC standard provides for two boot partitions (numbered 1 and 2),
	 * rpmb (3), and up to 4 addition general-purpose partitions (4-7).
	 *
	 * @desc:	Block device to update
	 * @hwpart:	Hardware partition number to select. 0 means the raw
	 *		device, 1 is the first partition, 2 is the second, etc.
	 * @return 0 if OK, -ve on error
	 */
	int (*select_hwpart)(struct udevice *dev, int hwpart);
};

#define blk_get_ops(dev)	((struct blk_ops *)(dev)->driver->ops)

/**
 * blk_get_devnum_by_typename() - Get a block device by type and number
 *
 * This looks through the available block devices of the given type, returning
 * the one with the given @devnum.
 *
 * @if_type:	Block device type
 * @devnum:	Device number
 * @return point to block device descriptor, or NULL if not found
 */
struct blk_desc *blk_get_devnum_by_type(enum if_type if_type, int devnum);

/**
 * blk_find_device() - Find a block device
 *
 * This function does not activate the device. The device will be returned
 * whether or not it is activated.
 *
 * @if_type:	Interface type (enum if_type_t)
 * @devnum:	Device number (specific to each interface type)
 * @devp:	the device, if found
 * @return 0 if found, -ENODEV if no device found, or other -ve error value
 */
int blk_find_device(int if_type, int devnum, struct udevice **devp);

/**
 * blk_get_device() - Find and probe a block device ready for use
 *
 * @if_type:	Interface type (enum if_type_t)
 * @devnum:	Device number (specific to each interface type)
 * @devp:	the device, if found
 * @return 0 if found, -ENODEV if no device found, or other -ve error value
 */
int blk_get_device(int if_type, int devnum, struct udevice **devp);

/*
 * These functions should take struct udevice instead of struct blk_desc,
 * but this is convenient for migration to driver model. Add a 'd' prefix
 * to the function operations, so that blk_read(), etc. can be reserved for
 * functions with the correct arguments.
 */
unsigned long blk_dread(struct blk_desc *block_dev, lbaint_t start,
			lbaint_t blkcnt, void *buffer);
unsigned long blk_dwrite(struct blk_desc *block_dev, lbaint_t start,
			 lbaint_t blkcnt, const void *buffer);

/**
 * blk_create_device() - Create a new block device
 *
 * @parent:	Parent of the new device
 * @drv_name:	Driver name to use for the block device
 * @name:	Name for the device
 * @if_type:	Interface type (enum if_type_t)
 * @devnum:	Device number, specific to the interface type, or -1 to
 *		allocate the next available number
 * @blksz:	Block size of the device in bytes (typically 512)
 * @lba:	Total number of blocks of the device
 * @devp:	the new device (which has not been probed)
 */
int blk_create_device(struct udevice *parent, const char *drv_name,
		      const char *name, int if_type, int devnum, int blksz,
		      lbaint_t lba, struct udevice **devp);

/**
 * blk_create_devicef() - Create a new named block device
 *
 * @parent:	Parent of the new device
 * @drv_name:	Driver name to use for the block device
 * @name:	Name for the device (parent name is prepended)
 * @if_type:	Interface type (enum if_type_t)
 * @devnum:	Device number, specific to the interface type, or -1 to
 *		allocate the next available number
 * @blksz:	Block size of the device in bytes (typically 512)
 * @lba:	Total number of blocks of the device
 * @devp:	the new device (which has not been probed)
 */
int blk_create_devicef(struct udevice *parent, const char *drv_name,
		       const char *name, int if_type, int devnum, int blksz,
		       lbaint_t lba, struct udevice **devp);

/**
 * blk_next_free_devnum() - get the next device number for an interface type
 *
 * Finds the next number that is safe to use for a newly allocated device for
 * an interface type @if_type.
 *
 * @if_type:	Interface type to scan
 * @return next device number safe to use, or -ve on error
 */
int blk_next_free_devnum(enum if_type if_type);

/**
 * blk_read_devnum() - read blocks from a device
 *
 * @if_type:	Block device type
 * @devnum:	Device number
 * @blkcnt:	Number of blocks to read
 * @buffer:	Address to write data to
 * @return number of blocks read, or -ve error number on error
 */
ulong blk_read_devnum(enum if_type if_type, int devnum, lbaint_t start,
		      lbaint_t blkcnt, void *buffer);

/**
 * blk_write_devnum() - write blocks to a device
 *
 * @if_type:	Block device type
 * @devnum:	Device number
 * @blkcnt:	Number of blocks to write
 * @buffer:	Address to read data from
 * @return number of blocks written, or -ve error number on error
 */
ulong blk_write_devnum(enum if_type if_type, int devnum, lbaint_t start,
		       lbaint_t blkcnt, const void *buffer);


#endif

