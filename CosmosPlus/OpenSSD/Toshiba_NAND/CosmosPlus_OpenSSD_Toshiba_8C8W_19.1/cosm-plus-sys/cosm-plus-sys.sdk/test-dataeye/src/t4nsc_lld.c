#include "t4nsc_lld.h"

volatile T4REGS chCtlReg[8];

void T4NSCInitializeHandle(T4REGS* t4regs, void* t4nscRegisterBaseAddress)
{
	t4regs->t4regID = (T4REG_ID*)((unsigned int)t4nscRegisterBaseAddress + 0);
	t4regs->t4regCFG = (T4REG_CFG*)((unsigned int)t4nscRegisterBaseAddress + 0x1000);
	t4regs->t4regEXT = (T4REG_EXT*)((unsigned int)t4nscRegisterBaseAddress + 0x2000);
	t4regs->t4regCC = (T4REG_CC*)((unsigned int)t4nscRegisterBaseAddress + 0x3000);
	t4regs->t4regBP = (T4REG_BP*)((unsigned int)t4nscRegisterBaseAddress + 0x3800);
	t4regs->t4regSP = (T4REG_SP*)((unsigned int)t4nscRegisterBaseAddress + 0x4000);
}


void T4NSCResetNandDie(unsigned int chNo, unsigned int wayNo)
{
	T4REG_CMD_NAND_RESET resetCmd;

	resetCmd.cmdSelect = T4NSC_CMD_NAND_RESET;
	resetCmd.waySelect = 1 << wayNo;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_NAND_RESET, resetCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCSetFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int address, unsigned int payload)
{
	T4REG_CMD_SET_FEATURES setFeaturesCmd;

	setFeaturesCmd.cmdSelect = T4NSC_CMD_SET_FEATUREST;
	setFeaturesCmd.waySelect = 1 << wayNo;
	setFeaturesCmd.payloadAddress = (unsigned int)&payload;
	setFeaturesCmd.setFeaturesAddress = address;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_SET_FEATURES, setFeaturesCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCSetLUNFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int lun, unsigned int address, unsigned int payload)
{
	T4REG_CMD_SET_LUN_FEATURES setLUNFeaturesCmd;

	setLUNFeaturesCmd.cmdSelect = T4NSC_CMD_SET_LUN_FEATUREST;
	setLUNFeaturesCmd.waySelect = 1 << wayNo;
	setLUNFeaturesCmd.payloadAddress = (unsigned int)&payload;
	setLUNFeaturesCmd.setFeaturesAddress = address;
	setLUNFeaturesCmd.lunSelect = lun;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_SET_LUN_FEATURES, setLUNFeaturesCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCGetFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int address, unsigned int* completion, unsigned int* report)
{
	T4REG_CMD_GET_FEATURES getFeaturesCmd;

	getFeaturesCmd.cmdSelect = T4NSC_CMD_GET_FEATUREST;
	getFeaturesCmd.waySelect = 1 << wayNo;
	getFeaturesCmd.reportAddress = (unsigned int)report;
	getFeaturesCmd.getFeaturesAddress = address;
	getFeaturesCmd.completionAddress = (unsigned int)completion;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_GET_FEATURES, getFeaturesCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCGetLUNFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int lun, unsigned int address, unsigned int* completion, unsigned int* report)
{
	T4REG_CMD_GET_LUN_FEATURES getLUNFeaturesCmd;

	getLUNFeaturesCmd.cmdSelect = T4NSC_CMD_GET_LUN_FEATUREST;
	getLUNFeaturesCmd.waySelect = 1 << wayNo;
	getLUNFeaturesCmd.reportAddress = (unsigned int)report;
	getLUNFeaturesCmd.getFeaturesAddress = address;
	getLUNFeaturesCmd.completionAddress = (unsigned int)completion;
	getLUNFeaturesCmd.lunSelect = lun;
	*(volatile unsigned int*)completion = 0;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_GET_LUN_FEATURES, getLUNFeaturesCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCSetScramblerState(unsigned int chNo, int enable)
{
	T4REG_CMD_SET_SCRAMBLER setScramblerCmd;

	setScramblerCmd.cmdSelect = (enable)?T4NSC_CMD_SET_SCRAMBLER_ENABLE:T4NSC_CMD_SET_SCRAMBLER_DISABLE;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_SET_SCRAMBLER, setScramblerCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCChangeNandInterfaceToggle(unsigned int chNo, unsigned int wayNo, unsigned int* payload)
{
	T4REG_CMD_MODE_CHANGE modeChangeCmd;
	payload[0] = 0x7;//02h
	payload[1] = 0x08;//10h
	payload[2] = 0x20;//01h

	modeChangeCmd.cmdSelect = T4NSC_CMD_MODE_CHANGE;
	modeChangeCmd.waySelect = 1 << wayNo;
	modeChangeCmd.payloadAddress = (unsigned int)payload;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_MODE_CHANGE, modeChangeCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCGetReadyBusy(unsigned int chNo, volatile unsigned int* report)
{
	T4REG_CMD_GET_READYBUSY getReadyBusyCmd;

	getReadyBusyCmd.cmdSelect = T4NSC_CMD_GET_READYBUSY;
	getReadyBusyCmd.reserved = 0;
	getReadyBusyCmd.reportAddress = (unsigned int)report;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_GET_READYBUSY, getReadyBusyCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCStatusCheck(unsigned int chNo, unsigned int wayNo, volatile unsigned int* statusReport)
{
	T4REG_CMD_READ_STATUS readStatusCmd;

	readStatusCmd.cmdSelect = T4NSC_CMD_READ_STATUS;
	readStatusCmd.waySelect = 1 << wayNo;
	readStatusCmd.reportAddress = (unsigned int)statusReport;
	*statusReport = 0;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_READ_STATUS, readStatusCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCReadIDAsync(unsigned int chNo, unsigned int wayNo, int sel, unsigned int dataBufAddr, volatile unsigned int* completion)
{
	T4REG_CMD_READ_PAGE_TRANSFER_RAW readPageTransferRaw;

	readPageTransferRaw.cmdSelect = T4NSC_CMD_READ_ID;
	readPageTransferRaw.waySelect = 1 << wayNo;
	readPageTransferRaw.colAddress = (sel)?0x4090:0x0090;
	readPageTransferRaw.wordLength = 3;
	readPageTransferRaw.pageDataAddress = dataBufAddr;
	readPageTransferRaw.completionReportAddress = (unsigned int)completion;
	*completion = 0;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_READ_PAGE_TRANSFER_RAW, readPageTransferRaw);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCEraseBlockAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress)
{
	T4REG_CMD_ERASE_BLOCK eraseBlockCmd;

	eraseBlockCmd.cmdSelect = T4NSC_CMD_ERASE_BLOCK;
	eraseBlockCmd.waySelect = 1 << wayNo;
	eraseBlockCmd.rowAddress = rowAddress;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_ERASE_BLOCK, eraseBlockCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCProgramPageAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, DATA_BUF_ADDRESSES dataBufAddresses, SPARE_DATA_BUF_ADDRESSES spareDataBufAddresses)
{
    unsigned int subPageOffset;
    T4REG_CMD_PROGRAM_PAGE_TRANSFER progPageCmd;

    progPageCmd.cmdSelect = T4NSC_CMD_PROGRAM_PAGES;
    progPageCmd.waySelect = 1 << wayNo;
    progPageCmd.rowAddress = rowAddress;

    for (subPageOffset = 0; subPageOffset<4; subPageOffset++)
    {
        progPageCmd.Subpages[subPageOffset].pageDataAddress = dataBufAddresses.dataBufAddr[subPageOffset];
        progPageCmd.Subpages[subPageOffset].spareDataAddress = spareDataBufAddresses.spareDataBufAddr[subPageOffset];
    }

    T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_PROGRAM_PAGE_TRANSFER, progPageCmd);
    T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCFullSequenceProgramPageAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, DATA_BUF_ADDRESSES dataBufAddresses, SPARE_DATA_BUF_ADDRESSES spareDataBufAddresses, int numberOfPageGroups)
{
    unsigned int subPageOffset;
    int pageSel;
    T4REG_CMD_FSP_TRANSFER progPageCmd;

    progPageCmd.cmdSelect = T4NSC_CMD_FSP_PAGES;
    progPageCmd.waySelect = 1 << wayNo;
    progPageCmd.rowAddress = rowAddress;

    for (pageSel = 0; pageSel < numberOfPageGroups; pageSel++)
    {
        switch (pageSel)
        {
        case 0:
            progPageCmd.option = (numberOfPageGroups > 1)?T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_PASSNEXT:T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_COMMIT;
            break;
        case 1:
            progPageCmd.option = (numberOfPageGroups > 2) ? T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_PASSNEXT : T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_COMMIT;
            break;
        case 2:
            progPageCmd.option = T4NSC_CMD_FSP_TRANSFER_OPTION_MSB_COMMIT;
            break;
        }

        for (subPageOffset = 0; subPageOffset<4; subPageOffset++)
        {
            progPageCmd.Subpages[subPageOffset].pageDataAddress = dataBufAddresses.dataBufAddr[subPageOffset];
            progPageCmd.Subpages[subPageOffset].spareDataAddress = spareDataBufAddresses.spareDataBufAddr[subPageOffset];
        }

        T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_FSP_TRANSFER, progPageCmd);
        T4NSCIssueCommand(&chCtlReg[chNo]);
    }
}

void T4NSCSingleStateReadPageTriggerAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int stateSelect)
{
	T4REG_CMD_SINGLE_STATE_READ_PAGE_TRIGGER readPageTrigggerCmd;

	readPageTrigggerCmd.cmdSelect = T4NSC_CMD_SINGLE_STATE_READ_PAGE_TRIGGER;
	readPageTrigggerCmd.waySelect = 1 << wayNo;
	readPageTrigggerCmd.rowAddress = rowAddress;
	readPageTrigggerCmd.stateSelect = stateSelect;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_SINGLE_STATE_READ_PAGE_TRIGGER, readPageTrigggerCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCReadPageTriggerAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int sb, int pSlcMode)
{
	T4REG_CMD_READ_PAGE_TRIGGER readPageTrigggerCmd;

	if (pSlcMode)
	{
		readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_PSLC;
	}
	else
	{
		switch (sb)
		{
		case 1:
			readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_LSB;
			break;
		case 2:
			readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_CSB;
			break;
		case 3:
			readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_MSB;
			break;
		default:
			readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER;
			break;
		}
	}
	readPageTrigggerCmd.waySelect = 1 << wayNo;
	readPageTrigggerCmd.rowAddress = rowAddress;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_READ_PAGE_TRIGGER, readPageTrigggerCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCReadPageTriggerWRLPREAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int sb)
{
	T4REG_CMD_READ_PAGE_TRIGGER readPageTrigggerCmd;

	switch (sb)
	{
	case 1:
		readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_WRLPRE_LSB;
		break;
	case 2:
		readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_WRLPRE_CSB;
		break;
	case 3:
		readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER_WRLPRE_MSB;
		break;
	default:
		readPageTrigggerCmd.cmdSelect = T4NSC_CMD_READ_PAGE_TRIGGER;
		break;
	}
	readPageTrigggerCmd.waySelect = 1 << wayNo;
	readPageTrigggerCmd.rowAddress = rowAddress;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_READ_PAGE_TRIGGER, readPageTrigggerCmd);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCReadPageTransferRawAsync(unsigned int chNo, unsigned int wayNo, unsigned int colAddr, unsigned int wordLength, unsigned int dataBufAddr, unsigned int* completion)
{
	T4REG_CMD_READ_PAGE_TRANSFER_RAW readPageTransferRaw;

	readPageTransferRaw.cmdSelect = T4NSC_CMD_READ_TRANSFER_RAW;
	readPageTransferRaw.waySelect = 1 << wayNo;
	readPageTransferRaw.colAddress = colAddr;
	readPageTransferRaw.wordLength = wordLength;
	readPageTransferRaw.pageDataAddress = dataBufAddr;
	readPageTransferRaw.completionReportAddress = (unsigned int)completion;
	*completion = 0;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_READ_PAGE_TRANSFER_RAW, readPageTransferRaw);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCProgramPageRawAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddr, unsigned int colAddr, unsigned int wordLength, unsigned int dataBufAddr, unsigned int sb, int pSlcMode)
{
	T4REG_CMD_PROGRAM_PAGE_TRANSFER_RAW_XSBOPTION progPageRaw;

	progPageRaw.cmdSelect = T4NSC_CMD_PROGRAM_PAGE_RAW_xSB;
	progPageRaw.waySelect = 1 << wayNo;
	progPageRaw.rowAddress = rowAddr;
	progPageRaw.colAddress = colAddr;
	progPageRaw.wordLength = wordLength;
	progPageRaw.pageDataAddress = dataBufAddr;
	progPageRaw.option = (pSlcMode)?1:sb;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_PROGRAM_PAGE_TRANSFER_RAW_XSBOPTION, progPageRaw);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCSetReadLevelACEG(unsigned int chNo, unsigned int wayNo, unsigned int lunAddr, volatile unsigned int* payloadBuf, char A, char C, char E, char G)
{
    payloadBuf[0] = A;
    payloadBuf[1] = C;
    payloadBuf[2] = E;
    payloadBuf[3] = G;
    T4NSCSetLUNFeaturesT(chNo, wayNo, lunAddr, 0x89, payloadBuf);
}

void T4NSCSetReadLevelBDF(unsigned int chNo, unsigned int wayNo, unsigned int lunAddr, volatile unsigned int* payloadBuf, char B, char D, char F)
{
    payloadBuf[0] = B;
    payloadBuf[1] = D;
    payloadBuf[2] = F;
    payloadBuf[3] = 0;
    T4NSCSetLUNFeaturesT(chNo, wayNo, lunAddr, 0x8A, payloadBuf);
}

void T4NSCProgramPagepSLCAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int dataBufAddr, unsigned int spareDataBufAddr)
{
	T4REG_CMD_PROGRAM_PAGE_TRANSFER_PSLC progPagepSLC;

	progPagepSLC.cmdSelect = T4NSC_CMD_PROGRAM_PAGE_PSLC;
	progPagepSLC.waySelect = 1 << wayNo;
	progPagepSLC.rowAddress = rowAddress;
	progPagepSLC.pageDataAddress = dataBufAddr;
	progPagepSLC.spareDataAddress = spareDataBufAddr;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_PROGRAM_PAGE_TRANSFER_PSLC, progPagepSLC);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}

void T4NSCReadPageTransferpSLCAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int dataBufAddr, unsigned int spareDataBufAddr, unsigned int errorInfoDataBufAddr, volatile unsigned int* completion)
{
	T4REG_CMD_READ_PAGE_TRANSFER_PSLC readpagepSLC;

	readpagepSLC.cmdSelect = T4NSC_CMD_READ_TRANSFER_PSLC;
	readpagepSLC.waySelect = 1 << wayNo;
	readpagepSLC.rowAddress = rowAddress;
	readpagepSLC.pageDataAddress = dataBufAddr;
	readpagepSLC.spareDataAddress = spareDataBufAddr;
	readpagepSLC.errorInfoAddress = errorInfoDataBufAddr;
	*completion = 0;
	readpagepSLC.completionReportAddress = completion;

	T4NSCFillRegisters(&chCtlReg[chNo], T4REG_CMD_READ_PAGE_TRANSFER_PSLC, readpagepSLC);
	T4NSCIssueCommand(&chCtlReg[chNo]);
}
