#ifndef T4NSC_LLD_H_
#define T4NSC_LLD_H_

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

#define T4NSC_CMD_SET_BUFFER_BASEADDRESS (T4NSC_CMD_END_OF_PLAINOPS + 0)
#define T4NSC_CMD_INDEXED_READ_TRANSFER (T4NSC_CMD_END_OF_PLAINOPS + 12)
#define T4NSC_CMD_INDEXED_PROGRAM_PAGE (T4NSC_CMD_END_OF_PLAINOPS + 520)
#define T4NSC_CMD_INDEXED_FSP_PAGES (T4NSC_CMD_END_OF_PLAINOPS + 944)

#define T4NSCFillRegisters(t4regs, cmdtype, cmdpayload) (*((volatile cmdtype*)((t4regs)->t4regSP)) = (cmdpayload))
#define T4NSCIssueCommand(t4regs) (((t4regs)->t4regCC)->issueCmd = 1)

#define T4NSCIsControllerBusy(t4regs) ((t4regs)->t4regID->queueNotFull == 0)
#define T4NSCGetFreeQueueCount(t4regs) (32 - ((t4regs)->t4regID->queueCount))
#define T4NSCGetNANDReadyBusy(t4regs, way) !!((t4regs)->t4regBP->nandReadyBusy & (1 << (way)))

#define T4NSCCrcValid(errorInformation) !!(*((uint32_t*)(errorInformation)) & 0x10000000)
//#define T4NSCCrcValid(errorInformation) !!(((T4NSC_BCH_ERROR_INFO*)(errorInformation))->crcSuccess)
//#define T4NSCSpareChunkValid(errorInformation) !!(((T4NSC_BCH_ERROR_INFO*)(errorInformation))->spareSuccess)
//#define T4NSCPageChunkValid(errorInformation) (((T4NSC_BCH_ERROR_INFO*)(errorInformation))->pageSuccess == 0xFF)
//#define T4NSCWorstChunkErrorCount(errorInformation) (((T4NSC_BCH_ERROR_INFO*)(errorInformation))->worstErrorCount)


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

typedef struct
{
    unsigned int spareData[7];
    unsigned int CRC;
    T4NSC_BCH_ERROR_INFO bchErrorInfo;
    unsigned int reserved[5];
} T4NSC_SPARE_DATA_BUFFER;

typedef struct _DATA_BUF_ADDRESSES {
    unsigned int dataBufAddr[4];
} DATA_BUF_ADDRESSES, *P_DATA_BUF_ADDRESSES;

typedef struct _SPARE_DATA_BUF_ADDRESSES {
    unsigned int spareDataBufAddr[4];
} SPARE_DATA_BUF_ADDRESSES, *P_SPARE_DATA_BUF_ADDRESSES;

typedef struct _ERROR_INFO_ADDRESSES {
    unsigned int* errorInfoAddr[4];
} ERROR_INFO_ADDRESSES, *PERROR_INFO_ADDRESSES;

typedef struct _DATA_BUF_INDEXES {
    unsigned short dataBufIndex[4];
} DATA_BUF_INDEXES, *P_DATA_BUF_INDEXES;

void T4NSCInitializeHandle(T4REGS* t4regs, void* t4nscRegisterBaseAddress);
void T4NSCResetNandDie(unsigned int chNo, unsigned int wayNo);
void T4NSCChangeNandInterfaceToggle(unsigned int chNo, unsigned int wayNo, unsigned int* payload);
void T4NSCGetReadyBusy(unsigned int chNo, volatile unsigned int* report);
void T4NSCSetFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int address, unsigned int payload);
void T4NSCSetLUNFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int lun, unsigned int address, unsigned int payload);
void T4NSCGetFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int address, unsigned int* completion, unsigned int* report);
void T4NSCGetLUNFeaturesT(unsigned int chNo, unsigned int wayNo, unsigned int lun, unsigned int address, unsigned int* completion, unsigned int* report);
void T4NSCSetScramblerState(unsigned int chNo, int enable);
void T4NSCStatusCheck(unsigned int chNo, unsigned int wayNo, volatile unsigned int* statusReport);
void T4NSCReadIDAsync(unsigned int chNo, unsigned int wayNo, int sel, unsigned int dataBufAddr, volatile unsigned int* completion);
void T4NSCEraseBlockAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress);
void T4NSCProgramPageAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, DATA_BUF_ADDRESSES dataBufAddresses, SPARE_DATA_BUF_ADDRESSES spareDataBufAddresses);
void T4NSCFullSequenceProgramPageAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, DATA_BUF_ADDRESSES dataBufAddresses, SPARE_DATA_BUF_ADDRESSES spareDataBufAddresses, int numberOfPageGroups);
void T4NSCReadPageTriggerAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int sb, int pSlcMode);
void T4NSCReadPageTriggerWRLPREAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int sb);
void T4NSCReadPageTransferRawAsync(unsigned int chNo, unsigned int wayNo, unsigned int colAddr, unsigned int wordLength, unsigned int dataBufAddr, unsigned int* completion);
void T4NSCProgramPageRawAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddr, unsigned int colAddr, unsigned int wordLength, unsigned int dataBufAddr, unsigned int sb, int pSlcMode);
void T4NSCSetReadLevelACEG(unsigned int chNo, unsigned int wayNo, unsigned int lunAddr, volatile unsigned int* payloadBuf, char A, char C, char E, char G);
void T4NSCSetReadLevelBDF(unsigned int chNo, unsigned int wayNo, unsigned int lunAddr, volatile unsigned int* payloadBuf, char B, char D, char F);

void T4NSCProgramPagepSLCAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int dataBufAddr, unsigned int spareDataBufAddr);
void T4NSCReadPageTransferpSLCAsync(unsigned int chNo, unsigned int wayNo, unsigned int rowAddress, unsigned int dataBufAddr, unsigned int spareDataBufAddr, unsigned int errorInfoDataBufAddr, volatile unsigned int* completion);

extern volatile T4REGS chCtlReg[8];

#endif
