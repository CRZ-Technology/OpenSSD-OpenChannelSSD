//////////////////////////////////////////////////////////////////////////////////
// request_ipc.h for Cosmos+ OpenSSD
// Copyright (c) 2017 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
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
// Engineer: Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Request Scheduler
// File Name: request_transform.h
//
// Version: v1.0.0
//
// Description:
//   - define parameters, data structure and functions of request scheduler
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef REQUEST_IPC_H_
#define REQUEST_IPC_H_

#include "nvme.h"

#define REQ_CODE_WRITE				0x00
#define REQ_CODE_READ				0x08

#define IPC_CMD_CNT (256)

typedef enum _ENUM_IPC_TYPE
{
    IPC_TYPE_REQ = 0,
    IPC_TYPE_RES = 1,
    IPC_TYPE_NUM = 2
} ENUM_IPC_TYPE, *P_ENUM_IPC_TYPE;

typedef struct _IPC_CMD
{
	unsigned int reqCode;
	unsigned int startLba;
	unsigned int nlb;
	void * bufAddr;
	unsigned int queued;
} IPC_CMD, *P_IPC_CMD;

typedef struct _IPC_QUEUE
{
	IPC_CMD queue[NUM_NVME_M2][IPC_TYPE_NUM][IPC_CMD_CNT];
} IPC_QUEUE, *P_IPC_QUEUE;

void InitIpcQueue();
void ProcessNvmeM2Req(void);

#endif /* REQUEST_IPC_H_ */
