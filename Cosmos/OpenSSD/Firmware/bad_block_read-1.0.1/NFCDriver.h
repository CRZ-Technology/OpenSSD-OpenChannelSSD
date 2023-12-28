#ifndef NFCDRIVER_H_
#define NFCDRIVER_H_

#include "TBasis.h"

class OpenSSD2
{
public:
	class Status
	{
		friend class OpenSSD2;
	public:
		Boolean IsReady() { return ready; }
		Boolean IsFailed() { return failed; }

	private:
		Boolean ready;
		Boolean failed;
	};
public:
	Boolean NFCInitialize(Address baseAddress, Boolean instantReset);

	Boolean NFCReset();

	Boolean NFCEraseBlockSync(Int32 way, Int32 blockAddress);
	Boolean NFCProgramPageSync(Int32 way, Int32 rowAddress, Byte* buffer);
	Boolean NFCReadPageSync(Int32 way, Int32 rowAddress, Byte* buffer);

	void NFCEraseBlockAsync(Int32 way, Int32 blockAddress);
	void NFCProgramPageAsync(Int32 way, Int32 rowAddress, Byte* buffer);
	void NFCReadPageAsync(Int32 way, Int32 rowAddress, Byte* buffer);

	Status NFCQueryResult(Int32 way);

private:
	UInt32 NFCReadStatus(Int32 way);

	Boolean NFCBusyWait(Int32 way);

	void NFCWriteRowAddressRegister(Int32 way, UInt32 rowAddress);
	void NFCWriteBufferAddressRegister(Int32 way, UInt32 bufferAddress);
	void NFCWriteCommandRegister(Int32 way, UInt32 command);

public:
	const static Int32 Ways = 4;
	const static Int32 Blocks = 4096;
	const static Int32 Pages = 256;
	const static Int32 PageSize = 8192;

private:
	volatile Address baseAddress;
};

#endif
