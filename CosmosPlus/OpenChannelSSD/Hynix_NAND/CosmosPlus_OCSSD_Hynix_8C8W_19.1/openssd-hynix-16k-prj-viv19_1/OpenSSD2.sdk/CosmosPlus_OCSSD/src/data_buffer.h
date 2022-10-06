//////////////////////////////////////////////////////////////////////////////////
// data_buffer.h for Cosmos+ OpenSSD
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
// Module Name: Data Buffer Manager
// File Name: data_buffer.h
//
// Version: v1.0.1.oc (oc: for Open Channel SSD)
//
// Description:
//   - define parameters, data structure and functions of data buffer manager
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.1.oc
//   - each channel or way has own data buffer (Data buffer is divided)
//
// * v1.0.0.oc
//   - First draft
//////////////////////////////////////////////////////////////////////////////////


#ifndef DATA_BUFFER_H_
#define DATA_BUFFER_H_

#include "ftl_config.h"

#define AVAILABLE_DATA_BUFFER_ENTRY_COUNT_PER_DIE		(16)
#define AVAILABLE_DATA_BUFFER_ENTRY_COUNT				(AVAILABLE_DATA_BUFFER_ENTRY_COUNT_PER_DIE * USER_DIES)

#define DATA_BUF_NONE	0xffff
#define DATA_BUF_FAIL	0xffff
#define DATA_BUF_DIRTY	1
#define DATA_BUF_CLEAN	0

typedef struct _DATA_BUF_ENTRY {
	unsigned int prevEntry : 16;
	unsigned int nextEntry : 16;
	unsigned int dirty : 1;
	unsigned int blockingReqTail : 16;
	unsigned int reserved0 : 15;
} DATA_BUF_ENTRY, *P_DATA_BUF_ENTRY;

typedef struct _DATA_BUF_MAP{
	DATA_BUF_ENTRY dataBuf[AVAILABLE_DATA_BUFFER_ENTRY_COUNT];
} DATA_BUF_MAP, *P_DATA_BUF_MAP;

typedef struct _DATA_BUF_LRU_LIST {
	unsigned int headEntry : 16;
	unsigned int tailEntry : 16;
} DATA_BUF_LRU_LIST, *P_DATA_BUF_LRU_LIST;

void InitDataBuf();
unsigned int AllocateDataBuf(unsigned int reqSlotTag);
void UpdateDataBufEntryInfoBlockingReq(unsigned int bufEntry, unsigned int reqSlotTag);

extern P_DATA_BUF_MAP dataBufMapPtr;
extern DATA_BUF_LRU_LIST dataBufLruList[USER_DIES];

#endif /* DATA_BUFFER_H_ */
