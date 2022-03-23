//////////////////////////////////////////////////////////////////////////////////
// nvme_io_cmd_completion.h for Cosmos+ OpenSSD
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
// File Name: nvme_io_cmd_completion.h
//
// Version: v1.0.0.oc (oc: for Open Channel SSD)
//
// Description:
//   - define parameters, data structure and functions of NVMe IO command completion manager
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0.oc
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef NVME_IO_CMD_COMPLETION_H_
#define NVME_IO_CMD_COMPLETION_H_

#define MAX_CMD_SLOT_TAG	256

typedef enum _NAND_OPERATION_RESULT
{
	NAND_RESULT_UNDEFINED,
	NAND_RESULT_DONE,
	NAND_RESULT_READ_DONE_UNCORRECTABLE_SOON,
	NAND_RESULT_READ_FAIL_TRIGGER,
	NAND_RESULT_READ_FAIL_TRANSFER,
	NAND_RESULT_PROGRAM_FAIL,
	NAND_RESULT_ERASE_FAIL
} NAND_OPERATION_RESULT;


typedef struct _NVME_IO_CMD_COMPLETE_ENTRY
{
	unsigned int notCompletedChildNandReqCount: 12;
	unsigned int fail : 1;
	unsigned int notCompletedChildDmaReqCount: 14;
	unsigned int reserved0 : 5;
} NVME_IO_CMD_COMPLETE_ENTRY, *P_NVME_IO_CMD_COMPLETE_ENTRY;

typedef struct _NVME_IO_CMD_COMPLETE_TABLE
{
	NVME_IO_CMD_COMPLETE_ENTRY nvmeIoCmdCompleteEntry[MAX_CMD_SLOT_TAG];
} NVME_IO_CMD_COMPLETE_TABLE, *P_NVME_IO_CMD_COMPLETE_TABLE;


void InitNvmeIoCmdCompleteTable();
void AllocateNotCompletedNandReqforNvmeIoCmd(unsigned int cmdSlotTag);
void AllocateNotCompletedDmaReqforNvmeIoCmd(unsigned int cmdSlotTag);
void CompleteChildNandReqOfNvmeIoCmd(unsigned int cmdSlotTag, unsigned int reqStatus, unsigned int reqCode);
void CompleteChildDmaReqOfNvmeIoCmd(unsigned int reqSlotTag, unsigned int cmdSlotTag, unsigned int reqCode);


#endif /* NVME_IO_CMD_COMPLETION_H_ */


