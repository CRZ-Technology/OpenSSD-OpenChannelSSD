//////////////////////////////////////////////////////////////////////////////////
// nvme_io_cmd.c for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
//			 Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: NVMe IO Command Handler
// File Name: nvme_io_cmd.c
//
// Version: v1.1.0.oc
//
// Description:
//   - handles NVMe IO command
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0.oc
//   - Supports Open-Channel SSD v1.2
//
// * v1.0.1
//   - header file for buffer is changed from "ia_lru_buffer.h" to "lru_buffer.h"
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#include "xil_printf.h"
#include "debug.h"
#include "io_access.h"

#include "nvme.h"
#include "host_lld.h"
#include "ocssd_lld.h"
#include "nvme_io_cmd.h"

#include "../ftl_config.h"
#include "../request_transform.h"

void handle_nvme_io_read(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL)
{
	//IO_READ_COMMAND_DW12 readInfo12;
	//IO_READ_COMMAND_DW13 readInfo13;
	//IO_READ_COMMAND_DW15 readInfo15;
	unsigned int startLba[2];
	//unsigned int nlb, fua;

	//readInfo12.dword = nvmeIOCmd->dword[12];
	//readInfo13.dword = nvmeIOCmd->dword[13];
	//readInfo15.dword = nvmeIOCmd->dword[15];

	startLba[0] = nvmeIOCmd->dword[10];
	startLba[1] = nvmeIOCmd->dword[11];
	//nlb = readInfo12.NLB;
	//fua = readInfo12.FUA;

	ASSERT(startLba[0] < storageCapacity_L && (startLba[1] < STORAGE_CAPACITY_H || startLba[1] == 0));
	//ASSERT(nlb < MAX_NUM_OF_NLB);
	ASSERT((nvmeIOCmd->PRP1[0] & 0x3) == 0 && (nvmeIOCmd->PRP2[0] & 0x3) == 0); //error
	ASSERT(nvmeIOCmd->PRP1[1] < 0x10 && nvmeIOCmd->PRP2[1] < 0x10);

	//test
	//xil_printf("R CS %x, Rs %x \r\n",startLba[0], nlb+1);

	//ReqTransNvmeToSlice(cmdSlotTag, startLba[0], nlb, IO_NVM_READ, fua);
	nvmeCPL->statusFieldWord = 0;
	nvmeCPL->statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
	nvmeCPL->statusField.SC = SC_ACCESS_DENIED;
	nvmeCPL->statusField.DNR = 1;//do not retry
	set_auto_nvme_cpl(cmdSlotTag, 0, nvmeCPL->statusFieldWord);
}

void handle_nvme_io_write(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL)
{
	IO_READ_COMMAND_DW12 writeInfo12;
	//IO_READ_COMMAND_DW13 writeInfo13;
	//IO_READ_COMMAND_DW15 writeInfo15;
	unsigned int startLba[2];
	//unsigned int nlb, fua;

	writeInfo12.dword = nvmeIOCmd->dword[12];
	//writeInfo13.dword = nvmeIOCmd->dword[13];
	//writeInfo15.dword = nvmeIOCmd->dword[15];

	if(writeInfo12.FUA == 1)
		xil_printf("write FUA\r\n");

	startLba[0] = nvmeIOCmd->dword[10];
	startLba[1] = nvmeIOCmd->dword[11];
	//nlb = writeInfo12.NLB;
	//fua = writeInfo12.FUA;

	ASSERT(startLba[0] < storageCapacity_L && (startLba[1] < STORAGE_CAPACITY_H || startLba[1] == 0));
	//ASSERT(nlb < MAX_NUM_OF_NLB);
	ASSERT((nvmeIOCmd->PRP1[0] & 0xF) == 0 && (nvmeIOCmd->PRP2[0] & 0xF) == 0);
	ASSERT(nvmeIOCmd->PRP1[1] < 0x10 && nvmeIOCmd->PRP2[1] < 0x10);

	//test
	//xil_printf("W CS %x, Rs %x \r\n",startLba[0], nlb+1);

	//ReqTransNvmeToSlice(cmdSlotTag, startLba[0], nlb, IO_NVM_WRITE, fua);
	nvmeCPL->statusFieldWord = 0;
	nvmeCPL->statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
	nvmeCPL->statusField.SC = SC_ACCESS_DENIED;
	nvmeCPL->statusField.DNR = 1;//do not retry
	set_auto_nvme_cpl(cmdSlotTag, 0, nvmeCPL->statusFieldWord);
}

//return value 1: the caller of this function must be terminated
int protect_bbt(unsigned int cmdSlotTag, unsigned int numOfPPAs, NVME_COMPLETION *nvmeCPL, OCSSD_PHYSICAL_PAGE_ADDRESS *ppas)
{
	int i;
	int ret;

	ret = 0;
	switch (BBT_PROTECTION_MODE)
	{
		//0: protection off
		case BBT_PROTECTION_OFF:
			break;
		//1: if an OCSSD command that related to block 0 is issued, it fails
		case BBT_PROTECTION_FAIL:
			if(ppas[0].block == 0)
			{
				nvmeCPL->statusFieldWord = 0;
				nvmeCPL->statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
				nvmeCPL->statusField.SC = SC_ACCESS_DENIED;
				nvmeCPL->statusField.DNR = 1;//do not retry
				set_auto_nvme_cpl(cmdSlotTag, 0, nvmeCPL->statusFieldWord);

				ret = 1;
			}
			break;
		//2: if an OCSSD command that related to block X is issued, the device accesses block X + 1
		case BBT_PROTECTION_HIDE:
			for(i = 0; i < numOfPPAs; i++)
			{
				ppas[i].block += 1;
			}
			break;
		default:
			break;
	}
	return ret;
}

void handle_ocssd_io_erase(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL)
{
	OCSSD_PHYSICAL_ERASE_COMMAND_DW12 eraseInfo12;
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppas;
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppa;
	unsigned int numOfPPAs;
	unsigned int idxOfPPAs, seqCount;
	unsigned int fua = 1;//always 1 on Cosmos Mini OpenSSD for CB

	PRINT("Metadata address on host: 0x%08X_%08X\r\n", nvmeIOCmd->MPTR[1], nvmeIOCmd->MPTR[0]);
	eraseInfo12.dword = nvmeIOCmd->dword12;
	numOfPPAs = eraseInfo12.numberOfPPAs + 1;

	//get PPA(s) from the host or this NVMe command
	ppas = GetPPAs(nvmeIOCmd, numOfPPAs);
	//PRINT_PPA(ppas, 1);

	//BBT protection
	if(protect_bbt(cmdSlotTag, numOfPPAs, nvmeCPL, ppas))
		return;

	//erase command handling
	idxOfPPAs = 0;
	seqCount = 0;
	ppa = &ppas[idxOfPPAs];
	while(idxOfPPAs < numOfPPAs)
	{
		if((idxOfPPAs + 1) < numOfPPAs)
		{
			if((ppas[idxOfPPAs].dword[0] + 1) == ppas[idxOfPPAs+1].dword[0])
				seqCount++;
			else
			{
				ReqTransOcssdPhyToSlice(cmdSlotTag, ppa,
						0, 0,
						0, 0,
						IO_OCSSD_PHYSICAL_BLOCK_ERASE, fua);
				seqCount = 0;
			}
		}
		else
		{
			ReqTransOcssdPhyToSlice(cmdSlotTag, ppa,
					0, 0,
					0, 0,
					IO_OCSSD_PHYSICAL_BLOCK_ERASE, fua);
			seqCount = 0;
		}

		idxOfPPAs++;
		if(seqCount == 0)
			ppa = &ppas[idxOfPPAs];
	}

	if(!fua)
		set_auto_nvme_cpl(cmdSlotTag, 0, 0);
}

void handle_ocssd_io_write(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL)
{
	OCSSD_PHYSICAL_WRITE_COMMAND_DW12 writeInfo12;
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppas;
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppa;
	unsigned int numOfPPAs;//not zero-based value
	unsigned int dmaStartIndex, numOfSector, idxOfPPAs, seqCount;
	unsigned int fua = 1;//always 1 on Cosmos Mini OpenSSD for CB
	unsigned int * metadataAddr;

	PRINT("Metadata address on host: 0x%08X_%08X\r\n", nvmeIOCmd->MPTR[1], nvmeIOCmd->MPTR[0]);
	writeInfo12.dword = nvmeIOCmd->dword12;
	numOfPPAs = writeInfo12.numberOfPPAs + 1;
	
	//get PPA(s) from the host or this NVMe command
	ppas = GetPPAs(nvmeIOCmd, numOfPPAs);
	//PRINT_PPA(ppas, 1);
	
	//BBT protection
	if(protect_bbt(cmdSlotTag, numOfPPAs, nvmeCPL, ppas))
		return;
	
	//metadata handling
	metadataAddr = GetMetadataFromHost(nvmeIOCmd, numOfPPAs);
	//PRINT_OCSSD_METADATA(metadataAddr, numOfPPAs);

	//write command handling
	idxOfPPAs = 0;
	seqCount = 0;
	ppa = &ppas[idxOfPPAs];
	dmaStartIndex = idxOfPPAs;
	while(idxOfPPAs < numOfPPAs)
	{
		if((idxOfPPAs + 1) < numOfPPAs)
		{
			if((ppas[idxOfPPAs].dword[0] + 1) == ppas[idxOfPPAs+1].dword[0])
				seqCount++;
			else
			{
				numOfSector = seqCount + 1;

				ReqTransOcssdPhyToSlice(cmdSlotTag, ppa,
						metadataAddr, nvmeIOCmd->MPTR,
						dmaStartIndex, numOfSector,
						IO_OCSSD_PHYSICAL_PAGE_ADDRESS_WRITE, fua);
				seqCount = 0;
			}
		}
		else
		{
			numOfSector= seqCount + 1;

			ReqTransOcssdPhyToSlice(cmdSlotTag, ppa,
					metadataAddr, nvmeIOCmd->MPTR,
					dmaStartIndex, numOfSector,
					IO_OCSSD_PHYSICAL_PAGE_ADDRESS_WRITE, fua);
			seqCount = 0;
		}

		idxOfPPAs++;
		if(seqCount == 0)
		{
			ppa = &ppas[idxOfPPAs];
			dmaStartIndex = idxOfPPAs;
		}
	}
	check_direct_rx_dma_done();
}

void handle_ocssd_io_read(unsigned int cmdSlotTag, NVME_IO_COMMAND *nvmeIOCmd, NVME_COMPLETION *nvmeCPL)
{
	OCSSD_PHYSICAL_READ_COMMAND_DW12 readInfo12;
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppas;
	OCSSD_PHYSICAL_PAGE_ADDRESS *ppa;
	unsigned int numOfPPAs;//not zero based value
	unsigned int dmaStartIndex, numOfSector, idxOfPPAs, seqCount;
	unsigned int fua = 1;//always 1 on Cosmos Mini OpenSSD for CB
	
	PRINT("Metadata address on host: 0x%08X_%08X\r\n", nvmeIOCmd->MPTR[1], nvmeIOCmd->MPTR[0]);
	readInfo12.dword = nvmeIOCmd->dword12;
	numOfPPAs = readInfo12.numberOfPPAs + 1;
	
	//get PPA(s) from the host or this NVMe command
	ppas = GetPPAs(nvmeIOCmd, numOfPPAs);
	//PRINT_PPA(ppas, 1);
	
	//BBT protection
	if(protect_bbt(cmdSlotTag, numOfPPAs, nvmeCPL, ppas))
		return;

	//read command handling
	idxOfPPAs = 0;
	seqCount = 0;
	ppa = &ppas[idxOfPPAs];
	dmaStartIndex = idxOfPPAs;
	while(idxOfPPAs < numOfPPAs)
	{
		if((idxOfPPAs + 1) < numOfPPAs)
		{
			if((ppas[idxOfPPAs].dword[0] + 1) == ppas[idxOfPPAs+1].dword[0])
				seqCount++;
			else
			{
				numOfSector = seqCount + 1;

				ReqTransOcssdPhyToSlice(cmdSlotTag, ppa,
						0, nvmeIOCmd->MPTR,
						dmaStartIndex, numOfSector,
						IO_OCSSD_PHYSICAL_PAGE_ADDRESS_READ, fua);
				seqCount = 0;
			}
		}
		else
		{
			numOfSector= seqCount + 1;

			ReqTransOcssdPhyToSlice(cmdSlotTag, ppa,
					0, nvmeIOCmd->MPTR,
					dmaStartIndex, numOfSector,
					IO_OCSSD_PHYSICAL_PAGE_ADDRESS_READ, fua);
			seqCount = 0;
		}

		idxOfPPAs++;
		if(seqCount == 0)
		{
			ppa = &ppas[idxOfPPAs];
			dmaStartIndex = idxOfPPAs;
		}
	}
}

void handle_nvme_io_cmd(NVME_COMMAND *nvmeCmd)
{
	NVME_IO_COMMAND *nvmeIOCmd;
	NVME_COMPLETION nvmeCPL;
	unsigned int opc;

	nvmeIOCmd = (NVME_IO_COMMAND*)nvmeCmd->cmdDword;
	opc = (unsigned int)nvmeIOCmd->OPC;

	switch(opc)
	{
		case IO_NVM_FLUSH:
		{
			PRINT("IO Flush Command\r\n");
			nvmeCPL.dword[0] = 0;
			nvmeCPL.specific = 0x0;
			set_auto_nvme_cpl(nvmeCmd->cmdSlotTag, nvmeCPL.specific, nvmeCPL.statusFieldWord);
			break;
		}
		case IO_NVM_WRITE:
		{
			PRINT("IO Write Command\r\n");
			handle_nvme_io_write(nvmeCmd->cmdSlotTag, nvmeIOCmd, &nvmeCPL);
			break;
		}
		case IO_NVM_READ:
		{
			PRINT("IO Read Command\r\n");
			handle_nvme_io_read(nvmeCmd->cmdSlotTag, nvmeIOCmd, &nvmeCPL);
			break;
		}
		case IO_OCSSD_PHYSICAL_BLOCK_ERASE:
		{
			PRINT("IO_OCSSD_PHYSICAL_BLOCK_ERASE\r\n");
			handle_ocssd_io_erase(nvmeCmd->cmdSlotTag, nvmeIOCmd, &nvmeCPL);
			break;
		}
		case IO_OCSSD_PHYSICAL_PAGE_ADDRESS_WRITE:
		{
			PRINT("IO_OCSSD_PHYSICAL_PAGE_ADDRESS_WRITE\r\n");
			handle_ocssd_io_write(nvmeCmd->cmdSlotTag, nvmeIOCmd, &nvmeCPL);
			break;
		}
		case IO_OCSSD_PHYSICAL_PAGE_ADDRESS_READ:
		{
			PRINT("IO_OCSSD_PHYSICAL_PAGE_ADDRESS_READ\r\n");
			handle_ocssd_io_read(nvmeCmd->cmdSlotTag, nvmeIOCmd, &nvmeCPL);
			break;
		}
		case IO_NVM_WRITE_ZEROS:
		{
			PRINT("IO Write Zeros Command\r\n");
			nvmeCPL.dword[0] = 0;
			nvmeCPL.specific = 0x0;
			set_auto_nvme_cpl(nvmeCmd->cmdSlotTag, nvmeCPL.specific, nvmeCPL.statusFieldWord);
			break;
		}

		default:
		{
			xil_printf("Not Support IO Command OPC: 0x%X\r\n", opc);
			ASSERT(0);
			break;
		}
	}

	if(__IO_CMD_DONE_MESSAGE_PRINT)
		xil_printf("IO Command Done, OPC: 0x%02X\r\n\r\n", opc);
}

