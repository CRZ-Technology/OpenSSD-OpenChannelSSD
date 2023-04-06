//////////////////////////////////////////////////////////////////////////////////
// request_schedule.h for Cosmos+ OpenSSD
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
// Module Name: Request Scheduler
// File Name: request_schedule.h
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


#ifndef REQUEST_SCHEDULE_H_
#define REQUEST_SCHEDULE_H_

#define WAY_NONE 			0xF

#define LUN_0_BASE_ADDR		0x00000000
#define LUN_1_BASE_ADDR		0x00100000

#define PSEUDO_BAD_BLOCK_MARK	0

#define RETRY_LIMIT				5	//retry the failed request to the extent that the limit number allows

#define DIE_STATE_IDLE			0
#define DIE_STATE_EXE			1

#define REQ_STATUS_CHECK_OPT_NONE 				0
#define REQ_STATUS_CHECK_OPT_CHECK				1
#define REQ_STATUS_CHECK_OPT_REPORT 			2
#define REQ_STATUS_CHECK_OPT_COMPLETION_FLAG 	3

#define REQ_STATUS_RUNNING	0
#define REQ_STATUS_DONE		1
#define REQ_STATUS_FAIL		2
#define REQ_STATUS_WARNING	3

#define ERROR_INFO_FAIL		0
#define ERROR_INFO_PASS		1
#define ERROR_INFO_WARNING	2

void SyncAllLowLevelReqDone();
void SyncAvailFreeReq();
void CheckDoneNvmeM2Req();
void ProcessNvmeM2ResPerCh(unsigned int chNo);

void PutToNandWayPriorityTable(unsigned int reqSlotTag, unsigned int chNo, unsigned int wayNo);
void PutToNandIdleList(unsigned int chNo, unsigned int wayNo);
void SelectivGetFromNandIdleList(unsigned int chNo, unsigned int wayNo);
void PutToNandStatusReportList(unsigned int chNo, unsigned int wayNo);
void SelectivGetFromNandStatusReportList(unsigned int chNo, unsigned int wayNo);
void PutToNandReadTriggerList(unsigned int chNo, unsigned int wayNo);
void SelectiveGetFromNandReadTriggerList(unsigned int chNo, unsigned int wayNo);
void PutToNandWriteList(unsigned int chNo, unsigned int wayNo);
void SelectiveGetFromNandWriteList(unsigned int chNo, unsigned int wayNo);
void PutToNandReadTransferList(unsigned int chNo, unsigned int wayNo);
void SelectiveGetFromNandReadTransferList(unsigned int chNo, unsigned int wayNo);
void PutToNandEraseList(unsigned int chNo, unsigned int wayNo);
void SelectiveGetFromNandEraseList(unsigned int chNo, unsigned int wayNo);
void PutToNandStatusCheckList(unsigned int chNo, unsigned int wayNo);
void SelectiveGetFromNandStatusCheckList(unsigned int chNo, unsigned int wayNo);

void IssueNandReq(unsigned int chNo, unsigned int wayNo);
unsigned int GenerateNandRowAddr(unsigned int reqSlotTag);
unsigned int GenerateDataBufAddr(unsigned int reqSlotTag);
unsigned int GenerateSpareDataBufAddr(unsigned int reqSlotTag);
unsigned int CheckReqStatus(unsigned int chNo, unsigned int wayNo);
unsigned int CheckEccErrorInfo(unsigned int chNo, unsigned int wayNo);

void ExecuteNvmeM2Res(unsigned int chNo);

#endif /* REQUEST_SCHEDULE_H_ */
