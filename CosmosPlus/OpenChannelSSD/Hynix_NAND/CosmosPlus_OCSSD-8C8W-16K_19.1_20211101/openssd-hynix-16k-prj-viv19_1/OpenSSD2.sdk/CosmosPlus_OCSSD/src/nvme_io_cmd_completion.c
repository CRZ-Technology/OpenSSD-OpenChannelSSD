//////////////////////////////////////////////////////////////////////////////////
// nvme_io_cmd_completion.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
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
// Engineer: Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//			 Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: NVMe IO Command Completion Manager
// File Name: nvme_io_cmd_completion.c
//
// Version: v1.0.0.oc (oc: for Open Channel SSD)
//
// Description:
//   - generate completion command for NVMe IO command completion
//	 - report command process result
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0.oc
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#include "xil_printf.h"
#include "memory_map.h"
#include "nvme/host_lld.h"
#include "nvme/ocssd_lld.h"

P_NVME_IO_CMD_COMPLETE_TABLE nvmeIoCmdCompleteTablePtr;


void InitNvmeIoCmdCompleteTable()
{
	unsigned int cmdSlotTag;
	nvmeIoCmdCompleteTablePtr = (P_NVME_IO_CMD_COMPLETE_TABLE) NVME_IO_CMD_COMPLETE_TABLE_ADDR;

	for(cmdSlotTag=0; cmdSlotTag < MAX_CMD_SLOT_TAG; cmdSlotTag++)
	{
		nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildNandReqCount = 0;
		nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].fail = 0;
		nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildDmaReqCount = 0;
	}
}

void AllocateNotCompletedNandReqforNvmeIoCmd(unsigned int cmdSlotTag)
{
	nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildNandReqCount++;
}

void AllocateNotCompletedDmaReqforNvmeIoCmd(unsigned int cmdSlotTag)
{
	nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildDmaReqCount++;
}

void CompleteChildNandReqOfNvmeIoCmd(unsigned int cmdSlotTag, unsigned int reqStatus, unsigned int reqCode)
{
	NAND_OPERATION_RESULT nandOperationResult;
	NVME_COMPLETION nvmeCPL;
	int printResult = 0;
	int printDone = 0;

	//NAND operation result decision
	nandOperationResult = NAND_RESULT_UNDEFINED;
	switch(reqCode)
	{
	case REQ_CODE_WRITE:
		if(reqStatus == REQ_STATUS_DONE)
		{
			nandOperationResult = NAND_RESULT_DONE;
		}
		else if(reqStatus == REQ_STATUS_FAIL)
		{
			nandOperationResult = NAND_RESULT_PROGRAM_FAIL;
		}
		break;
	case REQ_CODE_READ:
		if(reqStatus == REQ_STATUS_FAIL)
		{
			nandOperationResult = NAND_RESULT_READ_FAIL_TRIGGER;
		}
		break;
	case REQ_CODE_READ_TRANSFER:
		if(reqStatus == REQ_STATUS_DONE)
		{
			nandOperationResult = NAND_RESULT_DONE;
		}
		else if(reqStatus == REQ_STATUS_WARNING)
		{
			nandOperationResult = NAND_RESULT_READ_DONE_UNCORRECTABLE_SOON;
		}
		else if(reqStatus == REQ_STATUS_FAIL)
		{
			nandOperationResult = NAND_RESULT_READ_FAIL_TRANSFER;
		}
		break;
	case REQ_CODE_ERASE:
		if(reqStatus == REQ_STATUS_DONE)
		{
			nandOperationResult = NAND_RESULT_DONE;
		}
		else if(reqStatus == REQ_STATUS_FAIL)
		{
			nandOperationResult = NAND_RESULT_ERASE_FAIL;
		}
		break;
	}

	//set fail flag when error occurs
	if((nandOperationResult != NAND_RESULT_DONE) && (nandOperationResult != NAND_RESULT_READ_DONE_UNCORRECTABLE_SOON))
	{
		nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].fail = 1;
	}

	if(nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildNandReqCount > 0)
	{
		if(--nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildNandReqCount == 0)
		{
			nvmeCPL.statusFieldWord = 0;
			nvmeCPL.statusField.DNR = 0;

			if(nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].fail)
			{
				if(reqCode == REQ_CODE_WRITE)
				{
					nvmeCPL.statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
					nvmeCPL.statusField.SC = SC_WRITE_FAULT;
					if(printResult)
						xil_printf("NAND_RESULT_PROGRAM_FAIL\r\n");
				}
				else if((reqCode == REQ_CODE_READ) || (reqCode == REQ_CODE_READ_TRANSFER))
				{
					nvmeCPL.statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
					nvmeCPL.statusField.SC = SC_UNRECOVERED_READ_ERROR;
					if(printResult)
						xil_printf("NAND_RESULT_READ_FAIL\r\n");
				}
				else if(reqCode ==  REQ_CODE_ERASE)
				{
					nvmeCPL.statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
					nvmeCPL.statusField.SC = SC_ACCESS_DENIED;
					if(printResult)
						xil_printf("NAND_RESULT_ERASE_FAIL\r\n");
				}
			}
			else
			{
				nvmeCPL.statusField.SCT = SCT_GENERIC_COMMAND_STATUS;
				nvmeCPL.statusField.SC = SC_SUCCESSFUL_COMPLETION;
				if(printResult & printDone)
					xil_printf("NAND_RESULT_DONE\r\n");
			}

			set_auto_nvme_cpl(cmdSlotTag, 0, nvmeCPL.statusFieldWord);

			nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].fail = 0;
		}
	}
}


void CompleteChildDmaReqOfNvmeIoCmd(unsigned int reqSlotTag, unsigned int cmdSlotTag, unsigned int reqCode)
{
	NVME_COMPLETION nvmeCPL;
	P_OCSSD_METADATA_BUFFER ocssdMetadataBuffer;
	unsigned int MPTR[2];
	int printResult = 0;
	int printDone = 0;

	if(nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildDmaReqCount > 0)
	{
		if(--nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].notCompletedChildDmaReqCount == 0)
		{
			nvmeCPL.statusFieldWord = 0;
			nvmeCPL.statusField.DNR = 0;

			if(reqCode == REQ_CODE_TxDMA)
			{
				ocssdMetadataBuffer = (P_OCSSD_METADATA_BUFFER)OCSSD_METADATA_READ_ADDR;
				MPTR[0] = reqPoolPtr->reqPool[reqSlotTag].MPTR[0];
				MPTR[1] = reqPoolPtr->reqPool[reqSlotTag].MPTR[1];
				set_direct_tx_dma((unsigned int)ocssdMetadataBuffer->d[cmdSlotTag], MPTR[1], MPTR[0], 4096);
			}

			if(nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].fail)
			{
				if(reqCode == REQ_CODE_RxDMA)
				{
					nvmeCPL.statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
					nvmeCPL.statusField.SC = SC_WRITE_FAULT;
					if(printResult)
						xil_printf("NAND_RESULT_PROGRAM_FAIL\r\n");
				}
				else if(reqCode == REQ_CODE_TxDMA)
				{
					nvmeCPL.statusField.SCT = SCT_MEDIA_AND_DATA_INTEGRITY_ERRORS;
					nvmeCPL.statusField.SC = SC_UNRECOVERED_READ_ERROR;
					if(printResult)
						xil_printf("NAND_RESULT_READ_FAIL\r\n");
				}
			}
			else
			{
				nvmeCPL.statusField.SCT = SCT_GENERIC_COMMAND_STATUS;
				nvmeCPL.statusField.SC = SC_SUCCESSFUL_COMPLETION;
				if(printResult & printDone)
					xil_printf("NAND_RESULT_DONE\r\n");
			}
			check_direct_tx_dma_done();
			set_auto_nvme_cpl(cmdSlotTag, 0, nvmeCPL.statusFieldWord);
			nvmeIoCmdCompleteTablePtr->nvmeIoCmdCompleteEntry[cmdSlotTag].fail = 0;
		}
	}
}
