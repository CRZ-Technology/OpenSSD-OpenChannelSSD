//////////////////////////////////////////////////////////////////////////////////
// request_ipc.c for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//			      Sangjin Lee <sjlee@enc.hanyang.ac.kr>
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
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Request Inter Process Communication
// File Name: request_ipc.c
//
// Version: v1.0.0
//
// Description:
//	 - transform request information
//   - check dependency between requests
//   - issue host DMA request to host DMA engine
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#include "xil_printf.h"
#include <assert.h>
#include "nvme.h"
#include "memory_map.h"
#include "request_ipc.h"
#include "nvme_api.h"
#include "sleep.h"

static P_IPC_QUEUE ipcQPtr;
static unsigned char ipcQueueIdx[IPC_TYPE_NUM];

void InitIpcQueue()
{
	ipcQPtr = (P_IPC_QUEUE)IPC_CMD_ADDR; //revise address
}

void ProcessNvmeM2Req(void)
{
    unsigned char reqTail = ipcQueueIdx[IPC_TYPE_REQ];
    unsigned char resHead;
    int cpuId = XPAR_CPU_ID - 1;
    u64 reqCode, startLba, DstAddr, nlb;

    while(ipcQPtr->queue[cpuId][IPC_TYPE_REQ][reqTail].queued == 1)
    {
        reqCode = ipcQPtr->queue[cpuId][IPC_TYPE_REQ][reqTail].reqCode;
        startLba = ipcQPtr->queue[cpuId][IPC_TYPE_REQ][reqTail].startLba;
        nlb = ipcQPtr->queue[cpuId][IPC_TYPE_REQ][reqTail].nlb;
        DstAddr = (u64)ipcQPtr->queue[cpuId][IPC_TYPE_REQ][reqTail].bufAddr;
    
        ipcQPtr->queue[cpuId][IPC_TYPE_REQ][reqTail].queued = 0;

        if(reqCode == REQ_CODE_READ)
        {
            read_nvme(startLba * NVME_BLOCKS_PER_SLICE, DstAddr, NVME_BLOCKS_PER_SLICE);
        }
        else
        {
            write_nvme(startLba * NVME_BLOCKS_PER_SLICE, DstAddr, NVME_BLOCKS_PER_SLICE);
        }

        resHead = ipcQueueIdx[IPC_TYPE_RES]++;
        while(ipcQPtr->queue[cpuId][IPC_TYPE_RES][resHead].queued == 1)
            ;

        ipcQPtr->queue[cpuId][IPC_TYPE_RES][resHead].reqCode = reqCode;
        ipcQPtr->queue[cpuId][IPC_TYPE_RES][resHead].startLba = startLba;
        ipcQPtr->queue[cpuId][IPC_TYPE_RES][resHead].nlb = nlb;
        ipcQPtr->queue[cpuId][IPC_TYPE_RES][resHead].bufAddr = (void *)DstAddr;
        ipcQPtr->queue[cpuId][IPC_TYPE_RES][resHead].queued = 1;

        reqTail = ++ipcQueueIdx[IPC_TYPE_REQ];
    }
}

