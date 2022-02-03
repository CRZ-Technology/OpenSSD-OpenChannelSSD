//////////////////////////////////////////////////////////////////////////////////
// fmc_driver.h for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Kibin Park <kbpark@enc.hanyang.ac.kr>
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
// Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: NAND Storage Controller Driver
// File Name: nsc_driver.h
//
// Version: v1.2.0
//
// Description:
//   - define parameters, data structure and functions of NAND storage controller driver
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.2.0
//   - Completion flag checker is added
//   - Way ready checker is added
//   - Request status report checker is added
//
// * v1.1.0
//   - V2FReadPageTransferAsync needs additional input (rowAddress)
//   - Opcode of some commands is modified
//   - LLSCommand_ReadRawPage is deleted
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#ifndef FMC_DRIVER_H_
#define FMC_DRIVER_H_

#include "t4nsc_pm.h"

#define T4NSC_CMD_NAND_RESET 4
#define T4NSC_CMD_MODE_CHANGE 32
#define T4NSC_CMD_GET_READYBUSY 108
#define T4NSC_CMD_SET_FEATURESA 124
#define T4NSC_CMD_SET_LUN_FEATUREST 132
#define T4NSC_CMD_SET_FEATUREST 144
#define T4NSC_CMD_GET_LUN_FEATUREST 192
#define T4NSC_CMD_GET_FEATUREST 204
#define T4NSC_CMD_SET_SCRAMBLER_DISABLE 264
#define T4NSC_CMD_SET_SCRAMBLER_ENABLE 284
#define T4NSC_CMD_READ_STATUS 304
#define T4NSC_CMD_ERASE_BLOCK 352
#define T4NSC_CMD_READ_PAGE_TRIGGER 384
#define T4NSC_CMD_SINGLE_STATE_READ_PAGE_TRIGGER 392
#define T4NSC_CMD_READ_PAGE_TRIGGER_WRLPRE_LSB 404
#define T4NSC_CMD_READ_PAGE_TRIGGER_WRLPRE_CSB 412
#define T4NSC_CMD_READ_PAGE_TRIGGER_WRLPRE_MSB 420
#define T4NSC_CMD_READ_PAGE_TRIGGER_LSB 428
#define T4NSC_CMD_READ_PAGE_TRIGGER_CSB 436
#define T4NSC_CMD_READ_PAGE_TRIGGER_MSB 444
#define T4NSC_CMD_READ_PAGE_TRIGGER_PSLC 452
#define T4NSC_CMD_READ_TRANSFER_RAW 500
#define T4NSC_CMD_PROGRAM_PAGE_RAW 568
#define T4NSC_CMD_PROGRAM_PAGE_RAW_xSB 576
#define T4NSC_CMD_PROGRAM_PAGE_RAW_PSLC 580
#define T4NSC_CMD_READ_ID 756
#define T4NSC_CMD_END_OF_COMMON 824

#define T4NSC_CMD_READ_TRANSFER_PSLC (T4NSC_CMD_END_OF_COMMON+0)
#define T4NSC_CMD_PROGRAM_PAGE_PSLC (T4NSC_CMD_END_OF_COMMON+112)
#define T4NSC_CMD_READ_TRANSFER (T4NSC_CMD_END_OF_COMMON+204)
#define T4NSC_CMD_PROGRAM_PAGES (T4NSC_CMD_END_OF_COMMON+616)
#define T4NSC_CMD_FSP_PAGES (T4NSC_CMD_END_OF_COMMON+960)
#define T4NSC_CMD_END_OF_PLAINOPS (T4NSC_CMD_END_OF_COMMON+1308)

#define V2FFillRegisters(t4regs, cmdtype, cmdpayload) (*((volatile cmdtype*)((t4regs)->t4regSP)) = (cmdpayload))
#define V2FIssueCommand(t4regs) (((t4regs)->t4regCC)->issueCmd = 1)

#define V2FIsControllerBusy(t4regs) ((t4regs)->t4regID->queueNotFull == 0)
#define V2FGetFreeQueueCount(t4regs) (32 - ((t4regs)->t4regID->queueCount))
#define V2FGetNANDReadyBusy(t4regs, way) !!((t4regs)->t4regBP->nandReadyBusy & (1 << (way)))

#define V2FCrcValid(errorInformation) !!(*((uint32_t*)(errorInformation)) & 0x10000000)
#define V2FWorstChunkErrorCount(errorInformation) ((*((uint32_t*)(errorInformation)) & 0x00FF0000) >> 16)
#define V2FPageDecodeSuccess(secErrorInformation) ((*((uint32_t*)(secErrorInformation)) & 0xFFFFFFFF) == 0xFFFFFFFF)

#define V2FEnterToggleMode(dev, way, payLoadAddr) V2FSetFeaturesSync(dev, way, 0x17, 0x06, 0, payLoadAddr)

#define V2FWayReady(readyBusy, wayNo) (((readyBusy) >> (wayNo)) & 1)
#define V2FTransferComplete(completeFlag) ((completeFlag) & 1)
#define V2FRequestReportDone(statusReport) ((statusReport) & 1)
#define V2FEliminateReportDoneFlag(statusReport) ((statusReport) >> 1)
#define V2FRequestComplete(statusReport) (((statusReport) & 0x60) == 0x60)
#define V2FRequestFail(statusReport) ((statusReport) & 3)

typedef struct
{
	unsigned int cmdSelect;
	unsigned int rowAddress;
	unsigned int userData;
	unsigned int dataAddress;
	unsigned int spareAddress;
	unsigned int errorCountAddress;
	unsigned int completionAddress;
	unsigned int waySelection;
	unsigned int channelBusy;
	unsigned int readyBusy;
} V2FMCRegisters;

typedef struct
{
	unsigned int queueNotFull:1;
	unsigned int version:31;
    unsigned int queueCount;
} T4REG_ID;

typedef struct
{
	unsigned int reserved;
} T4REG_CFG;

typedef struct
{
	T4EXT_PM perfMonitor;
} T4REG_EXT;

typedef struct
{
	unsigned int issueCmd;
} T4REG_CC;

typedef struct
{
	unsigned int nandReadyBusy;
} T4REG_BP;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int sr[30];
} T4REG_SP;

typedef struct
{
	// Identification and status register
	volatile T4REG_ID* t4regID;
	// Configuration register
	volatile T4REG_CFG* t4regCFG;
	// Extension module access interface
	volatile T4REG_EXT* t4regEXT;
	// Dispatcher core control register
	volatile T4REG_CC* t4regCC;
	// Signal bypass register
	volatile T4REG_BP* t4regBP;
	// Scratchpad (arguments passing) register
	volatile T4REG_SP* t4regSP;
} T4REGS;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
} T4REG_CMD_NAND_RESET;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int payloadAddress;
} T4REG_CMD_MODE_CHANGE;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int payloadAddress;
	unsigned int setFeaturesAddress;
} T4REG_CMD_SET_FEATURES;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int payloadAddress;
	unsigned int setFeaturesAddress;
	unsigned int lunSelect;
} T4REG_CMD_SET_LUN_FEATURES;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int reportAddress;
	unsigned int getFeaturesAddress;
	unsigned int completionAddress;
} T4REG_CMD_GET_FEATURES;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int reserved;
	unsigned int reportAddress;
} T4REG_CMD_GET_READYBUSY;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int reportAddress;
	unsigned int getFeaturesAddress;
	unsigned int completionAddress;
	unsigned int lunSelect;
} T4REG_CMD_GET_LUN_FEATURES;

typedef struct
{
	unsigned int cmdSelect;
} T4REG_CMD_SET_SCRAMBLER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int reportAddress;
} T4REG_CMD_READ_STATUS;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
} T4REG_CMD_ERASE_BLOCK;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
} T4REG_CMD_READ_PAGE_TRIGGER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	unsigned int stateSelect;
} T4REG_CMD_SINGLE_STATE_READ_PAGE_TRIGGER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	unsigned int pageDataAddress;
	unsigned int spareDataAddress;
	unsigned int errorInfoAddress;
	unsigned int completionReportAddress;
} T4REG_CMD_READ_PAGE_TRANSFER_PSLC;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	unsigned int pageDataAddress;
	unsigned int spareDataAddress;
} T4REG_CMD_PROGRAM_PAGE_TRANSFER_PSLC;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	struct
	{
		unsigned int pageDataAddress;
		unsigned int spareDataAddress;
		unsigned int errorInfoAddress;
	} Subpages[4];
	unsigned int completionReportAddress;
} T4REG_CMD_READ_PAGE_TRANSFER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	struct
	{
		unsigned int pageDataAddress;
		unsigned int spareDataAddress;
	} Subpages[4];
} T4REG_CMD_PROGRAM_PAGE_TRANSFER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	unsigned int option;
	struct
	{
		unsigned int pageDataAddress;
		unsigned int spareDataAddress;
	} Subpages[4];
} T4REG_CMD_FSP_TRANSFER;

#define T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_PASSNEXT  3
#define T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_COMMIT    2
#define T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_PASSNEXT  5
#define T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_COMMIT    4
#define T4NSC_CMD_FSP_TRANSFER_OPTION_MSB_COMMIT    6

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int colAddress;
	unsigned int wordLength;
	unsigned int pageDataAddress;
	unsigned int completionReportAddress;
} T4REG_CMD_READ_PAGE_TRANSFER_RAW;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	unsigned int colAddress;
	unsigned int wordLength;
	unsigned int pageDataAddress;
} T4REG_CMD_PROGRAM_PAGE_TRANSFER_RAW;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	unsigned int colAddress;
	unsigned int wordLength;
	unsigned int pageDataAddress;
	unsigned int option;
} T4REG_CMD_PROGRAM_PAGE_TRANSFER_RAW_XSBOPTION;

#define T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_PASSNEXT  3
#define T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_COMMIT    2
#define T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_PASSNEXT  5
#define T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_COMMIT    4
#define T4NSC_CMD_FSP_TRANSFER_OPTION_MSB_COMMIT    6

typedef struct
{
	unsigned int cmdSelect;
	unsigned int reserved;
	unsigned int pageBufferAddress;
	unsigned int spareBufferAddress;
} T4REG_CMD_SET_BUFFER_BASEADDRESS;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	struct
	{
		unsigned int pageBufferIndex:16;
		unsigned int spareBufferIndex:16;
	} Subpages[4];
	unsigned int completionReportAddress;
} T4REG_CMD_INDEXED_READ_PAGE_TRANSFER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int rowAddress;
	struct
	{
		unsigned int pageBufferIndex:16;
		unsigned int spareBufferIndex:16;
	} Subpages[4];
} T4REG_CMD_INDEXED_PROGRAM_PAGE_TRANSFER;

typedef struct
{
	unsigned int cmdSelect;
	unsigned int waySelect;
	unsigned int colAddress;
	unsigned int length;
	unsigned int reportAddress;
	unsigned int completionReportAddress;
} T4REG_CMD_READ_ID;

typedef struct
{
	unsigned int crcSuccess:1;
	unsigned int spareSuccess:1;
	unsigned int pageSuccess:32;
	unsigned int totalErrorCount:8;
	unsigned int worstErrorCount:5;
	unsigned int chunk0ErrorCount:5;
	unsigned int chunk1ErrorCount:5;
	unsigned int chunk2ErrorCount:5;
	unsigned int chunk3ErrorCount:5;
	unsigned int chunk4ErrorCount:5;
	unsigned int chunk5ErrorCount:5;
	unsigned int chunk6ErrorCount:5;
	unsigned int chunk7ErrorCount:5;
} T4NSC_BCH_ERROR_INFO;

void nfc_set_dqs_delay(int channel, unsigned int newValue);
void nfc_set_dq_delay(int channel, unsigned int newValue);
void V2FInitializeHandle(T4REGS* t4regs, void* t4nscRegisterBaseAddress);
void V2FResetSync(T4REGS* t4regs, int way);
void V2FSetFeaturesSync(T4REGS* t4regs, int way, unsigned int feature0x02, unsigned int feature0x10, unsigned int feature0x01, unsigned int payLoadAddr);
void V2FReadPageTriggerAsync(T4REGS* t4regs, int way, unsigned int rowAddress);
void V2FReadPageTransferAsync(T4REGS* t4regs, int way, void* pageDataBuffer, void* spareDataBuffer, unsigned int* errorInformation, unsigned int* completion, unsigned int rowAddress);
void V2FReadPageTransferRawAsync(T4REGS* t4regs, int way, void* pageDataBuffer, unsigned int* completion);
void V2FProgramPageAsync(T4REGS* t4regs, int way, unsigned int rowAddress, void* pageDataBuffer, void* spareDataBuffer);
void V2FEraseBlockAsync(T4REGS* t4regs, int way, unsigned int rowAddress);
void V2FStatusCheckAsync(T4REGS* t4regs, int way, unsigned int* statusReport);
void V2FStatusCheckSync(T4REGS* t4regs, int way, unsigned int* statusReport);
void V2FReadIdAsync(T4REGS* t4regs, int way, unsigned int* statusReport, unsigned int* completion);
void V2FReadIdSync(T4REGS* t4regs, int way, unsigned int* statusReport);
unsigned int V2FReadyBusyAsync(T4REGS* t4regs);


#endif /* FMC_DRIVER_H_ */
