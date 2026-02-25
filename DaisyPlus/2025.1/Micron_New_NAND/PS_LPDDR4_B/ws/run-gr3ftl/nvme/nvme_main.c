//////////////////////////////////////////////////////////////////////////////////
// nvme_main.c for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//				  Kibin Park <kbpark@enc.hanyang.ac.kr>
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
//			 Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: NVMe Main
// File Name: nvme_main.c
//
// Version: v1.2.0
//
// Description:
//   - initializes FTL and NAND
//   - handles NVMe controller
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.2.0
//   - header file for buffer is changed from "ia_lru_buffer.h" to "lru_buffer.h"
//   - Low level scheduler execution is allowed when there is no i/o command
//
// * v1.1.0
//   - DMA status initialization is added
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "xil_printf.h"
//#include "xtime_l.h"
#include "xiltimer.h"
#include "debug.h"
#include "io_access.h"

#include "nvme.h"
#include "host_lld.h"
#include "nvme_main.h"
#include "nvme_admin_cmd.h"
#include "nvme_io_cmd.h"

#include "../memory_map.h"

volatile NVME_CONTEXT g_nvmeTask;

//#define NAND_STANDALONE_TEST

#ifdef NAND_STANDALONE_TEST
typedef enum {
	NAND_OP_WRITE,
	NAND_OP_READ,
    NAND_OP_CHECK,
    NAND_OP_NUM,
} nand_op_type;

static nand_op_type nand_op;
#endif

void nvme_main()
{
	unsigned int exeLlr;
	unsigned int rstCnt = 0;

	xil_printf("!!! Wait until FTL reset complete !!! \r\n");

	InitFTL();

	xil_printf("\r\nFTL reset complete!!! \r\n");
	xil_printf("Turn on the host PC \r\n");

	while(1)
	{
		exeLlr = 1;

		if(g_nvmeTask.status == NVME_TASK_WAIT_CC_EN)
		{
			unsigned int ccEn;
			ccEn = check_nvme_cc_en();
			if(ccEn == 1)
			{
				set_nvme_admin_queue(1, 1, 1);
				set_nvme_csts_rdy(1);
				g_nvmeTask.status = NVME_TASK_RUNNING;
				xil_printf("\r\nNVMe ready!!!\r\n");
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_RUNNING)
		{
			NVME_COMMAND nvmeCmd;
			unsigned int cmdValid;

			cmdValid = get_nvme_cmd(&nvmeCmd.qID, &nvmeCmd.cmdSlotTag, &nvmeCmd.cmdSeqNum, nvmeCmd.cmdDword);

			if(cmdValid == 1)
			{
				rstCnt = 0;
				if(nvmeCmd.qID == 0)
				{
					handle_nvme_admin_cmd(&nvmeCmd);
				}
				else
				{
					handle_nvme_io_cmd(&nvmeCmd);
					ReqTransSliceToLowLevel();
					exeLlr=0;
				}
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_SHUTDOWN)
		{
			NVME_STATUS_REG nvmeReg;
			nvmeReg.dword = IO_READ32(NVME_STATUS_REG_ADDR);
			if(nvmeReg.ccShn != 0)
			{
				unsigned int qID;
				set_nvme_csts_shst(1);

				for(qID = 0; qID < 8; qID++)
				{
					set_io_cq(qID, 0, 0, 0, 0, 0, 0);
					set_io_sq(qID, 0, 0, 0, 0, 0);
				}

				set_nvme_admin_queue(0, 0, 0);
				g_nvmeTask.cacheEn = 0;
				set_nvme_csts_shst(2);
				g_nvmeTask.status = NVME_TASK_WAIT_RESET;

				//flush grown bad block info
				UpdateBadBlockTableForGrownBadBlock(RESERVED_DATA_BUFFER_BASE_ADDR);

				xil_printf("\r\nNVMe shutdown!!!\r\n");
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_WAIT_RESET)
		{
			unsigned int ccEn;
			ccEn = check_nvme_cc_en();
			if(ccEn == 0)
			{
                unsigned int qID;

				g_nvmeTask.cacheEn = 0;
				set_nvme_csts_shst(0);
				set_nvme_csts_rdy(0);

                set_nvme_admin_queue(0, 0, 0);
                for(qID = 0; qID < 8; qID++)
                {
                    set_io_cq(qID, 0, 0, 0, 0, 0, 0);
                    set_io_sq(qID, 0, 0, 0, 0, 0);
                }

				g_nvmeTask.status = NVME_TASK_IDLE;
				xil_printf("\r\nNVMe disable!!!\r\n");
			}
		}
		else if(g_nvmeTask.status == NVME_TASK_RESET)
		{
			unsigned int qID;
			for(qID = 0; qID < 8; qID++)
			{
				set_io_cq(qID, 0, 0, 0, 0, 0, 0);
				set_io_sq(qID, 0, 0, 0, 0, 0);
			}

			if (rstCnt>= 5){
				pcie_async_reset(rstCnt);
				rstCnt = 0;
				xil_printf("\r\nPcie iink disable!!!\r\n");
				xil_printf("Wait few minute or reconnect the PCIe cable\r\n");
			}
			else
				rstCnt++;

			g_nvmeTask.cacheEn = 0;
			set_nvme_admin_queue(0, 0, 0);
			set_nvme_csts_shst(0);
			set_nvme_csts_rdy(0);
			g_nvmeTask.status = NVME_TASK_IDLE;

			xil_printf("\r\nNVMe reset!!!\r\n");
		}

#ifdef NAND_STANDALONE_TEST
        {
            extern void EvictDataBufEntry(unsigned int originReqSlotTag);

            static unsigned int logicalSliceAddr = 0;
			int *devAddr;
           	unsigned int reqSlotTag, dataBufEntry, i = 0, virtualSliceAddr;
           	static unsigned int test_count = 0, init_once = 0;
           	static XTime tStart, tEnd;
           	double ElapsedTime;

           	if(init_once == 0)
           	{
           		init_once = 1;

           		XTime_GetTime(&tStart);
           		XTime_GetTime(&tEnd);
           	}
            if(nand_op == NAND_OP_WRITE)
            {
//            	if(logicalSliceAddr < (storageCapacity_L / (BYTES_PER_DATA_REGION_OF_SLICE / BYTES_PER_NVME_BLOCK)) / USER_CHANNELS / USER_WAYS)
               	if(logicalSliceAddr < (storageCapacity_L / (BYTES_PER_DATA_REGION_OF_SLICE / BYTES_PER_NVME_BLOCK)))
            	{
            		if(notCompletedNandReqCnt > 256 || blockedReqCnt > 128)
            		{
//                        xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
            			SyncAllLowLevelReqDone();
//                        xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
            		}
                	reqSlotTag = GetFromFreeReqQ();

                	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
                	reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_WRITE;
                	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = logicalSliceAddr;

            		//allocate a data buffer entry for this request
            		dataBufEntry = CheckDataBufHit(reqSlotTag);
            		if(dataBufEntry != DATA_BUF_FAIL)
            		{
            			//data buffer hit
            			reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;
            		}
            		else
            		{
            			//data buffer miss, allocate a new buffer entry
            			dataBufEntry = AllocateDataBuf();
            			reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;

            			//clear the allocated data buffer entry being used by a previous request
            			EvictDataBufEntry(reqSlotTag);

            			//update meta-data of the allocated data buffer entry
            			dataBufMapPtr->dataBuf[dataBufEntry].logicalSliceAddr = reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr;
            			PutToDataBufHashList(dataBufEntry);
            		}

            		reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
               		UpdateDataBufEntryInfoBlockingReq(dataBufEntry, reqSlotTag);

        			dataBufMapPtr->dataBuf[dataBufEntry].dirty = DATA_BUF_DIRTY;

                	devAddr = (int *)GenerateDataBufAddr(reqSlotTag);
                	for(i = 0; i < BYTES_PER_DATA_REGION_OF_SLICE / 4; i++)
                	{
                    	*(devAddr + i) = rand();
                    }

               		reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NONE;
                	PutToFreeReqQ(reqSlotTag);
                	ReleaseBlockedByBufDepReq(reqSlotTag);

                    if(logicalSliceAddr % 100000 == 0)
                    {
                        xil_printf("W: logicalSliceAddr=%d\r\n", logicalSliceAddr);
        				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);

        				XTime_GetTime(&tEnd);
                   		ElapsedTime = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
                   		printf("Took %.2f s.\r\n",ElapsedTime);
                   		tStart = tEnd;
                    }
                    logicalSliceAddr++;
            	}
            	else
            	{
                    xil_printf("W: logicalSliceAddr=%d\r\n", logicalSliceAddr);
    				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
                    logicalSliceAddr = 0;
                	nand_op = (nand_op + 1) % NAND_OP_NUM;

    				XTime_GetTime(&tEnd);
               		ElapsedTime = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
               		printf("Took %.2f s.\r\n",ElapsedTime);
               		tStart = tEnd;
            	}
            }
            else if(nand_op == NAND_OP_READ)
            {
//            	if(logicalSliceAddr < (storageCapacity_L / (BYTES_PER_DATA_REGION_OF_SLICE / BYTES_PER_NVME_BLOCK)) / USER_CHANNELS / USER_WAYS)
               	if(logicalSliceAddr < (storageCapacity_L / (BYTES_PER_DATA_REGION_OF_SLICE / BYTES_PER_NVME_BLOCK)))
            	{
            		if(notCompletedNandReqCnt > 256 || blockedReqCnt > 128)
            		{
//                        xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
            			SyncAllLowLevelReqDone();
//                        xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
            		}
                	reqSlotTag = GetFromFreeReqQ();

                	reqPoolPtr->reqPool[reqSlotTag].reqType = REQ_TYPE_NAND;
                	reqPoolPtr->reqPool[reqSlotTag].reqCode = REQ_CODE_READ;
                	reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr = logicalSliceAddr;

            		//allocate a data buffer entry for this request
            		dataBufEntry = CheckDataBufHit(reqSlotTag);
            		if(dataBufEntry != DATA_BUF_FAIL)
            		{
            			//data buffer hit
            			reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;
                        reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NONE;
                        PutToFreeReqQ(reqSlotTag);
            		}
            		else
            		{
            			//data buffer miss, allocate a new buffer entry
            			dataBufEntry = AllocateDataBuf();
            			reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry = dataBufEntry;

            			//clear the allocated data buffer entry being used by a previous request
            			EvictDataBufEntry(reqSlotTag);

            			//update meta-data of the allocated data buffer entry
            			dataBufMapPtr->dataBuf[dataBufEntry].logicalSliceAddr = reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr;
            			PutToDataBufHashList(dataBufEntry);

                        virtualSliceAddr =  AddrTransRead(reqPoolPtr->reqPool[reqSlotTag].logicalSliceAddr);
                        
                        if(virtualSliceAddr != VSA_FAIL)
                        {
                            reqPoolPtr->reqPool[reqSlotTag].reqOpt.dataBufFormat = REQ_OPT_DATA_BUF_ENTRY;
                            reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandAddr = REQ_OPT_NAND_ADDR_VSA;
                            reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEcc = REQ_OPT_NAND_ECC_ON;
                            reqPoolPtr->reqPool[reqSlotTag].reqOpt.nandEccWarning = REQ_OPT_NAND_ECC_WARNING_ON;
                            reqPoolPtr->reqPool[reqSlotTag].reqOpt.rowAddrDependencyCheck = REQ_OPT_ROW_ADDR_DEPENDENCY_CHECK;
                            reqPoolPtr->reqPool[reqSlotTag].reqOpt.blockSpace = REQ_OPT_BLOCK_SPACE_MAIN;
                        
                            UpdateDataBufEntryInfoBlockingReq(reqPoolPtr->reqPool[reqSlotTag].dataBufInfo.entry, reqSlotTag);
                            reqPoolPtr->reqPool[reqSlotTag].nandInfo.virtualSliceAddr = virtualSliceAddr;
                        
                            SelectLowLevelReqQ(reqSlotTag);
                        }
                        else
                        {
                            reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NONE;
                            PutToFreeReqQ(reqSlotTag);
                        }
            		}

                    if(logicalSliceAddr % 100000 == 0)
                    {
                        xil_printf("R: logicalSliceAddr=%d\r\n", logicalSliceAddr);
        				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);

        				XTime_GetTime(&tEnd);
                   		ElapsedTime = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
                   		printf("Took %.2f s.\r\n",ElapsedTime);
                   		tStart = tEnd;
                    }
                    logicalSliceAddr++;
            	}
            	else
            	{
                    xil_printf("R: logicalSliceAddr=%d\r\n", logicalSliceAddr);
    				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
                    logicalSliceAddr = 0;
                	nand_op = (nand_op + 1) % NAND_OP_NUM;

    				XTime_GetTime(&tEnd);
               		ElapsedTime = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
               		printf("Took %.2f s.\r\n",ElapsedTime);
               		tStart = tEnd;
            	}
            }
            else if(nand_op == NAND_OP_CHECK)
            {
				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
            	SyncAllLowLevelReqDone();
				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);

                logicalSliceAddr = 0;
                nand_op = (nand_op + 2) % NAND_OP_NUM;

				XTime_GetTime(&tEnd);
           		ElapsedTime = 1.0 * (tEnd - tStart) / (COUNTS_PER_SECOND);
           		printf("Took %.2f s.\r\n",ElapsedTime);
           		tStart = tEnd;

				xil_printf("test_count=%d\r\n", ++test_count);
            }
        }
#endif

		if(exeLlr && ((nvmeDmaReqQ.headReq != REQ_SLOT_TAG_NONE) || notCompletedNandReqCnt || blockedReqCnt))
		{
#if 0
			static unsigned int saved_notCompletedNandReqCnt, saved_blockedReqCnt;
			static unsigned int check_cnt;
#endif
			CheckDoneNvmeDmaReq();
			SchedulingNandReq();

#if 0
#if 0
			if(notCompletedNandReqCnt || blockedReqCnt)
			{
				xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
			}
#else
			if(saved_notCompletedNandReqCnt == notCompletedNandReqCnt && saved_blockedReqCnt == blockedReqCnt)
			{
				check_cnt++;
				if(check_cnt > 10000)
				{
					xil_printf("notCompletedNandReqCnt=%d,blockedReqCnt=%d\r\n", notCompletedNandReqCnt, blockedReqCnt);
				}
			}
			else
			{
				check_cnt = 0;
			}
			saved_notCompletedNandReqCnt = notCompletedNandReqCnt;
			saved_blockedReqCnt = blockedReqCnt;
#endif
#endif
		}
	}
}


