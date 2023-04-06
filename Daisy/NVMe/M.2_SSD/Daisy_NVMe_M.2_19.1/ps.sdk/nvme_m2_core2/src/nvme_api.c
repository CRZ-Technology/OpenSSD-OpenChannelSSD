/*
 * nvme_api.c
 *
 *  Created on: 2020. 1. 17.
 *      Author: ProDesk
 */

#include "xstatus.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "string.h"
#include "stdlib.h"
#include "blk.h"
#include "nvme.h"

#include "nvme_rp/include/nvme.h"

static unsigned long blksize;

int init_nvme_rp(u64 bar, unsigned int *nvme_storage)
{
	int Status = XST_SUCCESS;;
	struct blk_desc *desc;

	Status = nvme_scan_namespace(bar);
	if (Status != XST_SUCCESS) {
		xil_printf("nvme_scan_namespace() Failed\r\n");
		return XST_FAILURE;
	}

	desc = blk_get_devnum_by_type(IF_TYPE_NVME, 0);
	if(desc)
	{
		blksize          = desc->blksz;
		*nvme_storage    = desc->lba * blksize / BYTES_PER_NVME_BLOCK;
		*nvme_storage    = (*nvme_storage / NVME_BLOCKS_PER_SLICE) * NVME_BLOCKS_PER_SLICE;
	}

	return Status;
}

int read_nvme(u64 startLba, u64 DstAddr, u64 nlb)
{
	u64 nvme_blk = startLba * (BYTES_PER_NVME_BLOCK / blksize);
	u64 nvme_nlb = nlb * (BYTES_PER_NVME_BLOCK / blksize);

	return blk_read_devnum(IF_TYPE_NVME, 0, nvme_blk, nvme_nlb, (void *)DstAddr);
}

int write_nvme(u64 startLba, u64 SrcAddr, u64 nlb)
{
	u64 nvme_blk = startLba * (BYTES_PER_NVME_BLOCK / blksize);
	u64 nvme_nlb = nlb * (BYTES_PER_NVME_BLOCK / blksize);

	return blk_write_devnum(IF_TYPE_NVME, 0, nvme_blk, nvme_nlb, (void *)SrcAddr);
}
