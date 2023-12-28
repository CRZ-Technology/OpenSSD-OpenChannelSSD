#include "xil_types.h"
#include "xil_cache.h"
#include "xil_printf.h"

#include "xparameters.h"

#include "IncrementalAllocator.h"
#include "NFCDriver.h"

#define DRAM_0_BASEADDR 0x00200000

const int Channels = 4;
const int Ways = 4;
const int Blocks = 4096;
const int PagesPerBlocks = 256;
const int Pages = PagesPerBlocks * Blocks;
const int PageSize = 8192;
OpenSSD2 channel[Channels];

Boolean NFCInit(Boolean verbose);

typedef struct
{
	Int32 rowCursor;
	Int32 state;
	Byte buffer[PageSize];
} WayContext;

typedef struct
{
	WayContext* wayContext;
} ChannelContext;

Boolean BadBlockMarkRead(Int32 ChNo, OpenSSD2* target, ChannelContext* channelContext);

int CountBits(UInt32 i)
{
	i = i - ((i >> 1) & 0x55555555);
	i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
	return (((i + (i >> 4)) & 0x0F0F0F0F) * 0x01010101) >> 24;
}

int main()
{
	int i, j;
	ChannelContext* channelContext;

	Xil_DCacheDisable();

	xil_printf("Starting..\r\n");

	Memory.Initialize((Byte*)DRAM_0_BASEADDR, 1024 * 1024 * 512);

	NFCInit(True);

	channelContext = (ChannelContext*)Memory.Allocate(sizeof(ChannelContext) * Channels);
	for (i = 0; i < Channels; i++)
	{
		channelContext[i].wayContext = (WayContext*)Memory.Allocate(sizeof(WayContext) * Ways);
		for (j = 0; j < Ways; j++)
		{
			channelContext[i].wayContext[j].rowCursor = 0;
			channelContext[i].wayContext[j].state = 0;
		}
	}

	xil_printf("[!] Starting..\r\n");
	while
	(
		!BadBlockMarkRead(0, &channel[0], &channelContext[0]) |
		!BadBlockMarkRead(1, &channel[1], &channelContext[1]) |
		!BadBlockMarkRead(2, &channel[2], &channelContext[2]) |
		!BadBlockMarkRead(3, &channel[3], &channelContext[3])
	);
	xil_printf("[+] Finished.\r\n");


	return 0;
}

#define STATE_ISSUECMD 0
#define STATE_DATAREAD 1
Boolean BadBlockMarkRead(Int32 ChNo, OpenSSD2* target, ChannelContext* channelContext)
{
	Int32 way;
	volatile Byte* buffer;
	Boolean done = True;

	for (way = 0; way < Ways; way++)
	{
		if (channelContext->wayContext[way].rowCursor < Pages)
		{
			done = False;
			if (target->NFCQueryResult(way).IsReady())
			{
				switch (channelContext->wayContext[way].state)
				{
				case STATE_ISSUECMD:
					target->NFCReadPageAsync(way, channelContext->wayContext[way].rowCursor, channelContext->wayContext[way].buffer);
					channelContext->wayContext[way].state = STATE_DATAREAD;
					break;
				case STATE_DATAREAD:
					buffer = channelContext->wayContext[way].buffer;
					if (target->NFCQueryResult(way).IsFailed() ||
							CountBits(
							((UInt32)buffer[1827]) +
							(((UInt32)buffer[1828]) << 8) +
							(((UInt32)buffer[1829]) << 16))
							< 20
							)
						xil_printf("Bad block at: Ch %d Way %d Block %d Reason: %s\r\n",
								ChNo, way, channelContext->wayContext[way].rowCursor >> 8,
								target->NFCQueryResult(way).IsFailed()?"Op Failed":"Mark");
					channelContext->wayContext[way].state = STATE_ISSUECMD;
					channelContext->wayContext[way].rowCursor += PagesPerBlocks;
					buffer[1827] = buffer[1828] = buffer[1829] = 0;
					break;
				}
			}
		}
	}

	return done;
}

Boolean NFCInit(Boolean verbose)
{
	if (!channel[0].NFCInitialize((Address)XPAR_SYNC_CH_CTL_BL16_0_BASEADDR, True))
		return False;
	else
		if (verbose)
			xil_printf("[+] Channel 0 has finished its reset.\r\n");
	if (!channel[1].NFCInitialize((Address)XPAR_SYNC_CH_CTL_BL16_1_BASEADDR, True))
		return False;
	else
		if (verbose)
			xil_printf("[+] Channel 1 has finished its reset.\r\n");
	if (!channel[2].NFCInitialize((Address)XPAR_SYNC_CH_CTL_BL16_2_BASEADDR, True))
		return False;
	else
		if (verbose)
			xil_printf("[+] Channel 2 has finished its reset.\r\n");
	if (!channel[3].NFCInitialize((Address)XPAR_SYNC_CH_CTL_BL16_3_BASEADDR, True))
		return False;
	else
		if (verbose)
			xil_printf("[+] Channel 3 has finished its reset.\r\n");
	return True;
}

