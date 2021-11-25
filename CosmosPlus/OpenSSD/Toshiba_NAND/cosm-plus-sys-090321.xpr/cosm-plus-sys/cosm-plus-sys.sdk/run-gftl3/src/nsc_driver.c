//////////////////////////////////////////////////////////////////////////////////
// fmc_driver.c for Cosmos+ OpenSSD
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
// File Name: nsc_driver.c
//
// Version: v1.1.0
//
// Description:
//   - low level driver for NAND storage controller
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.1.0
//   - V2FReadPageTransferAsync needs additional input (rowAddress)
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////

#include "nsc_driver.h"
#include "xparameters.h"
#include <assert.h>

typedef struct
{
	unsigned char delayVal[32];
} iodelay_if;

void nfc_set_dqs_delay(int channel, unsigned int newValue)
{
	volatile unsigned int* ctrl0 = (volatile unsigned int*)XPAR_IODELAY_IF_0_DQS_BASEADDR;
	volatile iodelay_if* data0 = (volatile iodelay_if*)(XPAR_IODELAY_IF_0_DQS_BASEADDR + 0x8000);
	volatile unsigned int* ctrl1 = (volatile unsigned int*)XPAR_IODELAY_IF_1_DQS_BASEADDR;
	volatile iodelay_if* data1 = (volatile iodelay_if*)(XPAR_IODELAY_IF_1_DQS_BASEADDR + 0x8000);

	if (channel < 4)
	{
		data0->delayVal[channel] = newValue;
		ctrl0[1] = 1;
	}
	else
	{
		data1->delayVal[channel % 4] = newValue;
		ctrl1[1] = 1;
	}
}

void nfc_set_dq_delay(int channel, unsigned int newValue)
{
	volatile unsigned int* ctrl0 = (volatile unsigned int*)XPAR_IODELAY_IF_0_BASEADDR;
	volatile iodelay_if* data0 = (volatile iodelay_if*)(XPAR_IODELAY_IF_0_BASEADDR + 0x8000);
	volatile unsigned int* ctrl1 = (volatile unsigned int*)XPAR_IODELAY_IF_0_BASEADDR;
	volatile iodelay_if* data1 = (volatile iodelay_if*)(XPAR_IODELAY_IF_0_BASEADDR + 0x8000);

	int i;
	if (channel < 4)
	{
		for (i = 0; i < 8; i++)
			data0->delayVal[channel * 8 + i] = newValue;
		ctrl0[1] = 1;
	}
	else
	{
		for (i = 0; i < 8; i++)
			data1->delayVal[(channel % 4) * 8 + i] = newValue;
		ctrl1[1] = 1;
	}
}

void V2FInitializeHandle(T4REGS* t4regs, void* t4nscRegisterBaseAddress)
{
	t4regs->t4regID = (T4REG_ID*)((unsigned int)t4nscRegisterBaseAddress + 0);
	t4regs->t4regCFG = (T4REG_CFG*)((unsigned int)t4nscRegisterBaseAddress + 0x1000);
	t4regs->t4regEXT = (T4REG_EXT*)((unsigned int)t4nscRegisterBaseAddress + 0x2000);
	t4regs->t4regCC = (T4REG_CC*)((unsigned int)t4nscRegisterBaseAddress + 0x3000);
	t4regs->t4regBP = (T4REG_BP*)((unsigned int)t4nscRegisterBaseAddress + 0x3800);
	t4regs->t4regSP = (T4REG_SP*)((unsigned int)t4nscRegisterBaseAddress + 0x4000);
}

void __attribute__((optimize("O0"))) V2FSetScramblerState(T4REGS* t4regs, int enable)
{
	T4REG_CMD_SET_SCRAMBLER setScramblerCmd;

	setScramblerCmd.cmdSelect = (enable)?T4NSC_CMD_SET_SCRAMBLER_ENABLE:T4NSC_CMD_SET_SCRAMBLER_DISABLE;

	V2FFillRegisters(t4regs, T4REG_CMD_SET_SCRAMBLER, setScramblerCmd);
	V2FIssueCommand(t4regs);
}

void __attribute__((optimize("O0"))) V2FResetSync(T4REGS* t4regs, int way)
{
	T4REG_CMD_NAND_RESET resetCmd;

	resetCmd.cmdSelect = T4NSC_CMD_NAND_RESET;
	resetCmd.waySelect = 1 << way;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_NAND_RESET, resetCmd);
	V2FIssueCommand(t4regs);

	while (V2FIsControllerBusy(t4regs));
	V2FSetScramblerState(t4regs, 0);
}

void __attribute__((optimize("O0"))) V2FSetFeaturesT(T4REGS* t4regs, int way, unsigned int address, volatile unsigned int* payload)
{
	T4REG_CMD_SET_FEATURES setFeaturesCmd;

	setFeaturesCmd.cmdSelect = T4NSC_CMD_SET_FEATUREST;
	setFeaturesCmd.waySelect = 1 << way;
	setFeaturesCmd.payloadAddress = (unsigned int)payload;
	setFeaturesCmd.setFeaturesAddress = address;

	V2FFillRegisters(t4regs, T4REG_CMD_SET_FEATURES, setFeaturesCmd);
	V2FIssueCommand(t4regs);
}

void V2FGetReadyBusy(T4REGS* t4regs, unsigned int* report)
{
	T4REG_CMD_GET_READYBUSY getReadyBusyCmd;

	getReadyBusyCmd.cmdSelect = T4NSC_CMD_GET_READYBUSY;
	getReadyBusyCmd.reserved = 0;
	getReadyBusyCmd.reportAddress = (unsigned int)report;

	V2FFillRegisters(t4regs, T4REG_CMD_GET_READYBUSY, getReadyBusyCmd);
	V2FIssueCommand(t4regs);
}

void __attribute__((optimize("O0"))) V2FSetFeaturesSync(T4REGS* t4regs, int way, unsigned int feature0x02, unsigned int feature0x10, unsigned int feature0x01, unsigned int payLoadAddr)
{
	volatile unsigned int* payload = (unsigned int*)payLoadAddr;
	volatile unsigned int* status = (unsigned int*)(payLoadAddr + 4);

	*payload = feature0x02;
	while (V2FIsControllerBusy(t4regs));
	V2FSetFeaturesT(t4regs, way, 0x02, payload);
	do
	{
		while (V2FIsControllerBusy(t4regs));
		V2FGetReadyBusy(t4regs, status);
		while (!(*status & 1));
		*status >>= 16;
	}
	while (!(*status & (1 << way)));

	*payload = feature0x10;
	while (V2FIsControllerBusy(t4regs));
	V2FSetFeaturesT(t4regs, way, 0x10, payload);
	do
	{
		while (V2FIsControllerBusy(t4regs));
		V2FGetReadyBusy(t4regs, status);
		while (!(*status & 1));
		*status >>= 16;
	}
	while (!(*status & (1 << way)));

	while (V2FIsControllerBusy(t4regs));
	V2FSetScramblerState(t4regs, 0);
	/**payload = feature0x01;
	while (V2FIsControllerBusy(t4regs));
	V2FSetFeaturesT(t4regs, way, 0x01, payload);
	do
	{
		while (V2FIsControllerBusy(t4regs));
		V2FGetReadyBusy(t4regs, status);
		while (!(*status & 1));
		*status >>= 16;
	}
	while (!(*status & (1 << way)));*/
}

void __attribute__((optimize("O0"))) V2FReadPageTriggerAsync(T4REGS* t4regs, int way, unsigned int rowAddress)
{
	T4REG_CMD_READ_PAGE_TRIGGER readPageTrigggerCmd;

	readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_PSLC;
	readPageTrigggerCmd.waySelect = 1 << way;
	readPageTrigggerCmd.rowAddress = rowAddress;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_READ_PAGE_TRIGGER, readPageTrigggerCmd);
	V2FIssueCommand(t4regs);
}

void __attribute__((optimize("O0"))) V2FReadPageTransferAsync(T4REGS* t4regs, int way, void* pageDataBuffer, void* spareDataBuffer, unsigned int* errorInformation, unsigned int* completion, unsigned int rowAddress)
{
	T4REG_CMD_READ_PAGE_TRANSFER_PSLC readpagepSLC;

	readpagepSLC.cmdSelect = T4NSC_CMD_READ_TRANSFER_PSLC;
	readpagepSLC.waySelect = 1 << way;
	readpagepSLC.rowAddress = rowAddress;
	readpagepSLC.pageDataAddress = pageDataBuffer;
	readpagepSLC.spareDataAddress = spareDataBuffer;
	readpagepSLC.errorInfoAddress = errorInformation;
	*completion = 0;
	readpagepSLC.completionReportAddress = completion;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_READ_PAGE_TRANSFER_PSLC, readpagepSLC);
	V2FIssueCommand(t4regs);
}

void __attribute__((optimize("O0"))) V2FReadPageTransferRawAsync(T4REGS* t4regs, int way, void* pageDataBuffer, unsigned int* completion)
{
	T4REG_CMD_READ_PAGE_TRANSFER_RAW readPageTransferRaw;

	readPageTransferRaw.cmdSelect = T4NSC_CMD_READ_TRANSFER_RAW;
	readPageTransferRaw.waySelect = 1 << way;
	readPageTransferRaw.colAddress = 0;
	readPageTransferRaw.wordLength = (16384 + 1664) / 4;
	readPageTransferRaw.pageDataAddress = pageDataBuffer;
	readPageTransferRaw.completionReportAddress = (unsigned int)completion;
	*completion = 0;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_READ_PAGE_TRANSFER_RAW, readPageTransferRaw);
	V2FIssueCommand(t4regs);
}


void __attribute__((optimize("O0"))) V2FProgramPageAsync(T4REGS* t4regs, int way, unsigned int rowAddress, void* pageDataBuffer, void* spareDataBuffer)
{
	T4REG_CMD_PROGRAM_PAGE_TRANSFER_PSLC progPagepSLC;

	progPagepSLC.cmdSelect = T4NSC_CMD_PROGRAM_PAGE_PSLC;
	progPagepSLC.waySelect = 1 << way;
	progPagepSLC.rowAddress = rowAddress;
	progPagepSLC.pageDataAddress = pageDataBuffer;
	progPagepSLC.spareDataAddress = spareDataBuffer;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_PROGRAM_PAGE_TRANSFER_PSLC, progPagepSLC);
	V2FIssueCommand(t4regs);
}

void __attribute__((optimize("O0"))) V2FEraseBlockAsync(T4REGS* t4regs, int way, unsigned int rowAddress)
{
	T4REG_CMD_ERASE_BLOCK eraseBlockCmd;

	assert((rowAddress & 0xFF) == 0);

	eraseBlockCmd.cmdSelect = T4NSC_CMD_ERASE_BLOCK;
	eraseBlockCmd.waySelect = 1 << way;
	eraseBlockCmd.rowAddress = rowAddress;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_ERASE_BLOCK, eraseBlockCmd);
	V2FIssueCommand(t4regs);
}

void __attribute__((optimize("O0"))) V2FStatusCheckAsync(T4REGS* t4regs, int way, unsigned int* statusReport)
{
	T4REG_CMD_READ_STATUS readStatusCmd;

	readStatusCmd.cmdSelect = T4NSC_CMD_READ_STATUS;
	readStatusCmd.waySelect = 1 << way;
	readStatusCmd.reportAddress = (unsigned int)statusReport;
	*statusReport = 0;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_READ_STATUS, readStatusCmd);
	V2FIssueCommand(t4regs);
}

void V2FReadIdAsync(T4REGS* t4regs, int way, unsigned int* statusReport, unsigned int* completion)
{
	T4REG_CMD_READ_ID readIdCmd;

	readIdCmd.cmdSelect = T4NSC_CMD_READ_ID;
	readIdCmd.waySelect = 1 << way;
	readIdCmd.colAddress = 0x0090;
	readIdCmd.length = 3;
	readIdCmd.reportAddress = (unsigned int)statusReport;
	readIdCmd.completionReportAddress = (unsigned int)completion;

	while (V2FIsControllerBusy(t4regs));
	V2FFillRegisters(t4regs, T4REG_CMD_READ_ID, readIdCmd);
	V2FIssueCommand(t4regs);
}

void V2FReadIdSync(T4REGS* t4regs, int way, unsigned int* statusReport)
{
	unsigned char buf[8] = {0};
	int i;
	for (i = 0; i < 8; i++)
		((unsigned char*)statusReport)[i] = 0;
	unsigned int* completion = &statusReport[4];
	*completion = 0;
	V2FReadIdAsync(t4regs, way, statusReport, completion);
	while (*completion == 0);

	for (i = 0; i < 6; i++)
		buf[i] = ((unsigned char*)statusReport)[i * 2];
	for (i = 0; i < 8; i++)
		((unsigned char*)statusReport)[i] = buf[i];
}

unsigned int __attribute__((optimize("O0"))) V2FReadyBusyAsync(T4REGS* t4regs)
{
	volatile unsigned int readyBusy = (t4regs)->t4regBP->nandReadyBusy;

	return readyBusy;
}


