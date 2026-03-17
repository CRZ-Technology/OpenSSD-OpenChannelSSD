#ifndef T4NSC_PM_H_
#define T4NSC_PM_H_

typedef struct
{
	unsigned int period;
	unsigned int counter;
} T4EXT_PM_SignalCounter;

typedef struct
{
	T4EXT_PM_SignalCounter scLLNFCCmdIdleTime;
	T4EXT_PM_SignalCounter scLLNFCWriteDataIdleTime;
	T4EXT_PM_SignalCounter scLLNFCReadDataIdleTime;
	T4EXT_PM_SignalCounter scDPLWriteCmdIdleTime;
	T4EXT_PM_SignalCounter scDPLWriteDataIdleTime;
	T4EXT_PM_SignalCounter scDPLReadCmdIdleTime;
	T4EXT_PM_SignalCounter scDPLReadDataIdleTime;
} T4EXT_PM;

#endif
