#include "nfc-helper.h"
#include "xparameters.h"
#include "t4nsc_ucode.h"

#define T4NSC(ch) XPAR_T4NFC_HLPER_##ch##_BASEADDR

void nfc_ctrler_assign()
{
#ifdef XPAR_T4NFC_HLPER_0_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[0], T4NSC(0));
#endif
#ifdef XPAR_T4NFC_HLPER_1_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[1], T4NSC(1));
#endif
#ifdef XPAR_T4NFC_HLPER_2_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[2], T4NSC(2));
#endif
#ifdef XPAR_T4NFC_HLPER_3_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[3], T4NSC(3));
#endif
#ifdef XPAR_T4NFC_HLPER_4_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[4], T4NSC(4));
#endif
#ifdef XPAR_T4NFC_HLPER_5_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[5], T4NSC(5));
#endif
#ifdef XPAR_T4NFC_HLPER_6_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[6], T4NSC(6));
#endif
#ifdef XPAR_T4NFC_HLPER_7_BASEADDR
	T4NSCInitializeHandle(&chCtlReg[7], T4NSC(7));
#endif
}

unsigned int NSC_UCODES[] = {
		XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_1_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_2_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_3_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_4_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_5_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_6_S_AXI_BASEADDR,
		XPAR_AXI_BRAM_CTRL_7_S_AXI_BASEADDR
};

static void nfc_install_ucode(unsigned int* bram0)
{
	int i;
	for (i = 0; i < T4NSCu_Common_CodeWordLength; i++)
	{
		bram0[i] = T4NSCuCode_Common[i];
	}
	for (i = 0; i < T4NSCu_PlainOps_CodeWordLength; i++)
	{
		bram0[T4NSCu_Common_CodeWordLength + i] = T4NSCuCode_PlainOps[i];
	}
}

volatile unsigned int* payload_buf = (volatile unsigned int*)0x2000000;

void nfc_handle_init()
{
	nfc_ctrler_assign();
}

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

void nfc_init(int ch, int way, unsigned char odt, unsigned char drvstrength)
{
	int i = ch, j = way;
	volatile unsigned int status = 0;
	volatile unsigned int comp = 0;
	volatile unsigned int rep = 0;

	nfc_install_ucode((unsigned int*)NSC_UCODES[ch]);

	while (T4NSCIsControllerBusy(&chCtlReg[i]));
	T4NSCResetNandDie(i, j);
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[i]));
		T4NSCGetReadyBusy(i, &status);
		while (!(status & 1));
		status >>= 16;
	}
	while (!(status & (1 << j)));

	while (T4NSCIsControllerBusy(&chCtlReg[i]));
	T4NSCSetFeaturesT(i, j, 0x02, 0x7 | odt);

	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[i]));
		T4NSCGetReadyBusy(i, &status);
		while (!(status & 1));
		status >>= 16;
	}
	while (!(status & (1 << j)));

	while (T4NSCIsControllerBusy(&chCtlReg[i]));
	T4NSCSetFeaturesT(i, j, 0x10, drvstrength);

	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[i]));
		T4NSCGetReadyBusy(i, &status);
		while (!(status & 1));
		status >>= 16;
	}
	while (!(status & (1 << j)));

	while (T4NSCIsControllerBusy(&chCtlReg[i]));
	T4NSCSetScramblerState(i, 0);
}

int nfc_prog_raw(int channel, int way, unsigned int row, void* buf, int sb)
{
	volatile unsigned int status;
	volatile unsigned int completion;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCProgramPageRawAsync(channel, way, row, 0, 4584, buf, sb, 1);
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status & 0x03)
		return 1;

	return 0;
}

int nfc_read_raw(int channel, int way, unsigned int row, void* buf, int sb)
{
	volatile unsigned int status;
	volatile unsigned int completion;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCReadPageTriggerAsync(channel, way, row, sb, 1);
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status & 0x03)
		return 1;

	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCReadPageTransferRawAsync(channel, way, 0, 4584, buf, &completion);
 	while (!(completion & 1));

	return 0;
}

int nfc_erase(int channel, int way, unsigned int row)
{
	volatile unsigned int status;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCEraseBlockAsync(channel, way, row);
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status & 0x03)
		return 1;

	return 0;
}

int nfc_fsprog(int channel, int way, unsigned int row, void* buf, void* sbuf)
{
	volatile unsigned int status;
	volatile unsigned int completion;
	T4REG_CMD_FSP_TRANSFER fsp;
	int i;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));

	fsp.cmdSelect = T4NSC_CMD_FSP_PAGES;
	fsp.rowAddress = row;
	fsp.option = T4NSC_CMD_FSP_TRANSFER_OPTION_LSB_PASSNEXT;
	fsp.waySelect = 1 << way;

	for (i = 0; i < 4; i++)
	{
		fsp.Subpages[i].pageDataAddress = ((char*)buf) + 4096 * i;
		fsp.Subpages[i].spareDataAddress = ((char*)sbuf) + 32 * i;
	}

	T4NSCFillRegisters(&chCtlReg[channel], T4REG_CMD_FSP_TRANSFER, fsp);
	T4NSCIssueCommand(&chCtlReg[channel]);

	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status & 0x03)
		return 1;

	/*do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCPollReadyBusy(channel, &status);
		while (!(status & 1));
		status >>= 16;
	}
	while (!(status & (1 << way)));*/

	while (T4NSCIsControllerBusy(&chCtlReg[channel]));

	fsp.cmdSelect = T4NSC_CMD_FSP_PAGES;
	fsp.rowAddress = row;
	fsp.option = T4NSC_CMD_FSP_TRANSFER_OPTION_CSB_PASSNEXT;
	fsp.waySelect = 1 << way;

	for (i = 0; i < 4; i++)
	{
		fsp.Subpages[i].pageDataAddress = ((char*)buf) + 4096 * (4 + i);
		fsp.Subpages[i].spareDataAddress = ((char*)sbuf) + 32 * (4 + i);
	}

	T4NSCFillRegisters(&chCtlReg[channel], T4REG_CMD_FSP_TRANSFER, fsp);
	T4NSCIssueCommand(&chCtlReg[channel]);

	/*do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCGetReadyBusy(channel, &status);
		while (!(status & 1));
		status >>= 16;
	}
	while (!(status & (1 << way)));*/
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status & 0x03)
		return 1;

	while (T4NSCIsControllerBusy(&chCtlReg[channel]));

	fsp.cmdSelect = T4NSC_CMD_FSP_PAGES;
	fsp.rowAddress = row;
	fsp.option = T4NSC_CMD_FSP_TRANSFER_OPTION_MSB_COMMIT;
	fsp.waySelect = 1 << way;

	for (i = 0; i < 4; i++)
	{
		fsp.Subpages[i].pageDataAddress = ((char*)buf) + 4096 * (8 + i);
		fsp.Subpages[i].spareDataAddress = ((char*)sbuf) + 32 * (8 + i);
	}

	T4NSCFillRegisters(&chCtlReg[channel], T4REG_CMD_FSP_TRANSFER, fsp);
	T4NSCIssueCommand(&chCtlReg[channel]);

	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status & 0x03)
		return 1;

	return 0;
}


int nfc_prog(int channel, int way, unsigned int row, void* buf, void* sbuf)
{
	volatile unsigned int status;
	volatile unsigned int completion;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCProgramPagepSLCAsync(channel, way, row, buf, sbuf);
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status == 0xFF)
		return 2;

	if (status & 0x03)
		return 1;

	return 0;
}

int nfc_status(int channel, int way)
{
	volatile unsigned int status;

	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);

	return status;
}

int nfc_read(int channel, int way, unsigned int row, void* buf, void* sbuf, void* err, int sb)
{
	volatile unsigned int status;
	volatile unsigned int completion;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCReadPageTriggerAsync(channel, way, row, sb, 1);
	do
	{
		while (T4NSCIsControllerBusy(&chCtlReg[channel]));
		T4NSCStatusCheck(channel, way, &status);
		while (!(status & 1));
		status >>= 1;
	}
	while ((status & 0x60) != 0x60);
	if (status == 0xFF)
		return 2;

	if (status & 0x03)
		return 1;

	while (T4NSCIsControllerBusy(&chCtlReg[channel]));

	/*read.waySelect = 1 << way;
	read.cmdSelect = T4NSC_CMD_READ_TRANSFER;
	read.completionReportAddress = (unsigned int)&completion;
	read.rowAddress = row;

	for (i = 0; i < 4; i++)
	{
		read.Subpages[i].pageDataAddress = ((char*)buf) + 4096 * i;
		read.Subpages[i].spareDataAddress = ((char*)sbuf) + 32 * i;
		read.Subpages[i].errorInfoAddress = ((char*)err) + 12 * i;
	}

	T4NSCFillRegisters(&chCtlReg[channel], T4REG_CMD_READ_PAGE_TRANSFER, read);
	T4NSCIssueCommand(&chCtlReg[channel]);*/
	T4NSCReadPageTransferpSLCAsync(channel, way, row, buf, sbuf, err, &completion);

 	while (!(completion & 1));

 	if ((completion & 0xffff) != 0xa501)
 		return 3;

	return 0;
}

int nfc_read_id(int channel, int way, void* buf, int sel)
{
	volatile unsigned int completion;
	while (T4NSCIsControllerBusy(&chCtlReg[channel]));
	T4NSCReadIDAsync(channel, way, sel, buf, &completion);
 	while (!(completion & 1));

 	return 0;
}
