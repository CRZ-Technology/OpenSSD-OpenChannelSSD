
//////////////////////////////////////////////////////////////////////////////////
// debug.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// This file is part of Cosmos+ OpenSSD.
//
// Cosmos+ OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos+ OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos+ OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Debug Mate
// File Name: debug.c
//
// Version: v1.1.0.oc
//
// Description:
//   - defines macros for debugging
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0.oc
//   - Supports Open-Channel SSD v1.2
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "debug.h"
#include "nvme.h"

unsigned int countReqSize[65];
unsigned int countErase;
extern unsigned int benchmarkStart;

void PRINT_PPAS(int mode, OCSSD_PHYSICAL_PAGE_ADDRESS * ppa, int numOfPPAs)
{
	int i;

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	for(i = 0; i < numOfPPAs; i++)
	{
		xil_printf("ch %02d, lun %02d, pl %01d, bl %05d, pg %03d, sec %01d\r\n",
			ppa[i].channel, ppa[i].lun, ppa[i].plane, ppa[i].block, ppa[i].page, ppa[i].sector);
	}
}

void PRINT_PPA(int mode, OCSSD_PHYSICAL_PAGE_ADDRESS * ppa)
{
	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	PRINT_PPAS(mode, ppa, 1);
}

void PRINT_PPA_MANUAL(int mode, unsigned int channel, unsigned int lun, unsigned int plane,
		unsigned int block, unsigned int page, unsigned int sector)
{
	OCSSD_PHYSICAL_PAGE_ADDRESS ppa = {.channel = channel, .lun = lun, .plane = plane,
			.block = block, .page = page, .sector = sector, .reserved0 = 0, .reserved1 = 0};

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	PRINT_PPA(mode, &ppa);
}

//assume access in full plane unit
//channel -> lun -> plane -> block -> page -> sector
void PRINT_PPA_NTH_SECTOR(int mode, OCSSD_PHYSICAL_PAGE_ADDRESS * ppa, unsigned int n)
{
	OCSSD_PHYSICAL_PAGE_ADDRESS newPPA;

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	if(ppa->dword[0] > (ppa->dword[0] + n))
		newPPA.dword[1] = ppa->dword[1] + 1;
	else
		newPPA.dword[1] = ppa->dword[1];
	newPPA.dword[0] = ppa->dword[0] + n;

	PRINT_PPA(mode, &newPPA);
}

void PRINT_OCSSD_METADATA(int mode, unsigned int * metadataAddr, int numOfPPAs)
{
	int numOfUint32PerPPA;
	int i, j;

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	if((OCSSD_METADATA_SIZE == 8) || (OCSSD_METADATA_SIZE == 16))
	{
		numOfUint32PerPPA = OCSSD_METADATA_SIZE / 4;
		for(i = 0; i < numOfPPAs; i++)
		{
			for(j = 0; j < numOfUint32PerPPA; j++)
			{
				xil_printf("OCSSDMetadata[%02d][%d] = 0x%04X\r\n",
						i, j, metadataAddr[(numOfUint32PerPPA * i) + j]);
			}
		}
	}
	else
	{
		xil_printf("Unexpected OCSSD metadata size!!: %d bytes\r\n", OCSSD_METADATA_SIZE);
	}
}

void PRINT_NVME_CMD(int mode, NVME_COMMAND * nvmeCmd)
{
	unsigned int i;

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	xil_printf("qid: 0x%X\r\n", nvmeCmd->qID);
	xil_printf("snum: 0x%X\r\n", nvmeCmd->cmdSeqNum);
	xil_printf("ctag: 0x%X\r\n", nvmeCmd->cmdSlotTag);

	for(i = 0; i < 16; i++)
	{
		xil_printf("dw%d: 0x%08X\r\n", i, nvmeCmd->cmdDword[i]);
	}
	xil_printf("\r\n");
}

//not command specific print yet
void PRINT_NVME_ADMIN_CMD(int mode, NVME_ADMIN_COMMAND * nvmeAdminCmd)
{
	unsigned int i;

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	xil_printf("--PRINT_ADMIN_NVME_COMMAND--Start--\r\n");
	xil_printf("OP: 0x%X\r\n", nvmeAdminCmd->OPC);
	xil_printf("FUSE: 0x%X\r\n", nvmeAdminCmd->FUSE);
	xil_printf("PSDT: 0x%X\r\n", nvmeAdminCmd->PSDT);
	xil_printf("CID: 0x%X\r\n", nvmeAdminCmd->CID);

	xil_printf("NSID: 0x%X\r\n", nvmeAdminCmd->NSID);
	xil_printf("MPTR: 0x%08X_%08X\r\n", nvmeAdminCmd->MPTR[1], nvmeAdminCmd->MPTR[0]);
	xil_printf("PRP1: 0x%08X_%08X\r\n", nvmeAdminCmd->PRP1[1], nvmeAdminCmd->PRP1[0]);
	xil_printf("PRP2: 0x%08X_%08X\r\n", nvmeAdminCmd->PRP2[1], nvmeAdminCmd->PRP2[0]);

	for(i = 0; i < 16; i++)
	{
		xil_printf("dw%02d: 0x%08X\r\n", i, nvmeAdminCmd->dword[i]);
	}
	xil_printf("--PRINT_ADMIN_NVME_COMMAND--End--\r\n");
	xil_printf("\r\n");
}

//not command specific print yet
void PRINT_NVME_IO_CMD(int mode, NVME_IO_COMMAND * nvmeIOCmd)
{
	unsigned int i;

	if(mode > __DEBUG_MESSAGE_LEVEL)
		return;

	xil_printf("--PRINT_NVME_IO_COMMAND--Start--\r\n");
	xil_printf("OP: 0x%X\r\n", nvmeIOCmd->OPC);
	xil_printf("FUSE: 0x%X\r\n", nvmeIOCmd->FUSE);
	xil_printf("PSDT: 0x%X\r\n", nvmeIOCmd->PSDT);
	xil_printf("CID: 0x%X\r\n", nvmeIOCmd->CID);

	xil_printf("NSID: 0x%X\r\n", nvmeIOCmd->NSID);
	xil_printf("MPTR: 0x%08X_%08X\r\n", nvmeIOCmd->MPTR[1], nvmeIOCmd->MPTR[0]);
	xil_printf("PRP1: 0x%08X_%08X\r\n", nvmeIOCmd->PRP1[1], nvmeIOCmd->PRP1[0]);
	xil_printf("PRP2: 0x%08X_%08X\r\n", nvmeIOCmd->PRP2[1], nvmeIOCmd->PRP2[0]);

	for(i = 0; i < 16; i++)
	{
		xil_printf("dw%02d: 0x%08X\r\n", i, nvmeIOCmd->dword[i]);
	}
	xil_printf("--PRINT_NVME_IO_COMMAND--End--\r\n");
	xil_printf("\r\n");
}
