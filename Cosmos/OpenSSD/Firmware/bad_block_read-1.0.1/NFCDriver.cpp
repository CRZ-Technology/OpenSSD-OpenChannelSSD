#include "NFCDriver.h"

#define NFC_CMD_READ 0x00000001
#define NFC_CMD_PROG  0x00000002
#define NFC_CMD_ERASE 0x00000003
#define NFC_CMD_RESET 0x000000ff
#define NFC_CMD_MODE_CHANGE 0x000000ef
#define NFC_CMD_READ_ID 0x00000090

#define WAY_RB_MASK  0x20202020
#define WAY_ERR_MASK 0x03030303

Boolean OpenSSD2::NFCInitialize(Address baseAddress, Boolean instantReset)
{
	this->baseAddress = baseAddress;

	if (instantReset)
		return NFCReset();
	else
		return True;
}

Boolean OpenSSD2::NFCReset()
{
	Int32 i;
	for (i = 0; i < Ways; i++)
		NFCWriteCommandRegister(i, NFC_CMD_RESET);

	for (i = 0; i < Ways; i++)
	{
		if (!NFCBusyWait(i))
			return False;
	}

	for (i = 0; i < Ways; i++)
		NFCWriteCommandRegister(i, NFC_CMD_MODE_CHANGE);

	for (i = 0; i < Ways; i++)
	{
		if (!NFCBusyWait(i))
			return False;
	}

	return True;
}

Boolean OpenSSD2::NFCEraseBlockSync(Int32 way, Int32 blockAddress)
{
	NFCEraseBlockAsync(way, blockAddress);

	return NFCBusyWait(way);
}

Boolean OpenSSD2::NFCProgramPageSync(Int32 way, Int32 rowAddress, Byte* buffer)
{
	NFCProgramPageAsync(way, rowAddress, buffer);

	return NFCBusyWait(way);
}

Boolean OpenSSD2::NFCReadPageSync(Int32 way, Int32 rowAddress, Byte* buffer)
{
	NFCReadPageAsync(way, rowAddress, buffer);

	return NFCBusyWait(way);
}

void OpenSSD2::NFCEraseBlockAsync(Int32 way, Int32 blockAddress)
{
	NFCWriteRowAddressRegister(way, blockAddress << 8);
	NFCWriteCommandRegister(way, NFC_CMD_ERASE);
}

void OpenSSD2::NFCProgramPageAsync(Int32 way, Int32 rowAddress, Byte* buffer)
{
	NFCWriteRowAddressRegister(way, rowAddress);
	NFCWriteBufferAddressRegister(way, (UInt32)buffer);
	NFCWriteCommandRegister(way, NFC_CMD_PROG);
}

void OpenSSD2::NFCReadPageAsync(Int32 way, Int32 rowAddress, Byte* buffer)
{
	NFCWriteRowAddressRegister(way, rowAddress);
	NFCWriteBufferAddressRegister(way, (UInt32)buffer);
	NFCWriteCommandRegister(way, NFC_CMD_READ);
}

OpenSSD2::Status OpenSSD2::NFCQueryResult(Int32 way)
{
	Status status;
	UInt32 wayStatus = NFCReadStatus(way);

	if ((wayStatus & WAY_RB_MASK) == WAY_RB_MASK)
	{
		status.ready = True;

		if ((wayStatus & WAY_ERR_MASK) == 0)
			status.failed = False;
		else
			status.failed = True;
	}
	else
	{
		status.ready = False;
		status.failed = False;
	}

	return status;
}

UInt32 OpenSSD2::NFCReadStatus(Int32 way)
{
	volatile UInt32* statusRegister = (volatile UInt32*)(baseAddress + ((7 - way) << 4));
	return *statusRegister;
}

Boolean OpenSSD2::NFCBusyWait(Int32 way)
{
	while (!NFCQueryResult(way).IsReady());

	if (NFCQueryResult(way).failed)
		return False;
	else
		return True;
}

void OpenSSD2::NFCWriteRowAddressRegister(Int32 way, UInt32 rowAddress)
{
	volatile UInt32* rowAddressRegister = (volatile UInt32*)(baseAddress + 0xC + ((7 - way) << 4));
	*rowAddressRegister = rowAddress;
}

void OpenSSD2::NFCWriteBufferAddressRegister(Int32 way, UInt32 bufferAddress)
{
	volatile UInt32* bufferAddressRegister = (volatile UInt32*)(baseAddress + 0x8 + ((7 - way) << 4));
	*bufferAddressRegister = bufferAddress;
}

void OpenSSD2::NFCWriteCommandRegister(Int32 way, UInt32 command)
{
	volatile UInt32* commandRegister = (volatile UInt32*)(baseAddress + 0x0 + ((7 - way) << 4));
	*commandRegister = command;
}

