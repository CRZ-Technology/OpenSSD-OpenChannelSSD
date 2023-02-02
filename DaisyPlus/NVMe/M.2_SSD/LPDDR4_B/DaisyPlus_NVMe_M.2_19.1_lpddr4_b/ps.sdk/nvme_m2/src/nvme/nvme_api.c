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

#include "../nvme_rp/include/nvme.h"

static unsigned long blksize[NUM_NVME];

extern int pcie_init(u64 *bar);

int init_nvme_rp(unsigned int *nvme_storage)
{
	int Status = XST_SUCCESS;;
	u64 bar[NUM_NVME];
	struct blk_desc *desc;
	int i;

	Status = pcie_init(bar);
	if (Status != XST_SUCCESS) {
		xil_printf("pcie_init() Failed\r\n");
		return XST_FAILURE;
	}

	Status = nvme_scan_namespace(bar);
	if (Status != XST_SUCCESS) {
		xil_printf("nvme_scan_namespace() Failed\r\n");
		return XST_FAILURE;
	}

    for(i = 0; i < 2; i++)
    {
    	desc = blk_get_devnum_by_type(IF_TYPE_NVME, i);
    	if(desc)
    	{
    		blksize[i]          = desc->blksz;
    		*(nvme_storage + i) = desc->lba * blksize[i] / BYTES_PER_NVME_BLOCK;
    	}
    }

	return Status;
}

int read_nvme(int devnum, u64 startLba, u64 DstAddr, u64 nlb)
{
	u64 nvme_blk = startLba * (BYTES_PER_NVME_BLOCK / blksize[devnum]);
	u64 nvme_nlb = nlb * (BYTES_PER_NVME_BLOCK / blksize[devnum]);

	return blk_read_devnum(IF_TYPE_NVME, devnum, nvme_blk, nvme_nlb, (void *)DstAddr);
}

int write_nvme(int devnum, u64 startLba, u64 SrcAddr, u64 nlb)
{
	u64 nvme_blk = startLba * (BYTES_PER_NVME_BLOCK / blksize[devnum]);
	u64 nvme_nlb = nlb * (BYTES_PER_NVME_BLOCK / blksize[devnum]);

	return blk_write_devnum(IF_TYPE_NVME, devnum, nvme_blk, nvme_nlb, (void *)SrcAddr);
}
