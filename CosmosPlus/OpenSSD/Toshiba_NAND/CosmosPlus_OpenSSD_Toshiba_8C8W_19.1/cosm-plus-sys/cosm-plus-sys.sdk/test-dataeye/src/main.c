#include "xparameters_ps.h"

#include "ps-cpu.h"
#include "nfc-helper.h"

#include <stddef.h>
#include <stdint.h>

#include <stdio.h>

unsigned int numberOfSetBits(unsigned int i)
{
     i = i - ((i >> 1) & 0x55555555);
     i = (i & 0x33333333) + ((i >> 2) & 0x33333333);
     return (((i + (i >> 4)) & 0x0F0F0F0F) * 0x01010101) >> 24;
}

int test_readwrite()
{
	int loops = 5;
	int err;
	int testChannels[] = {0,1,2,4,5,6,7,3};
	uint32_t* write_pbuf = (uint32_t*)0x1000000;
	uint32_t* write_sbuf = (uint32_t*)0x1100000;
	uint32_t* read_pbuf = (uint32_t*)0x1200000;
	uint32_t* read_sbuf = (uint32_t*)0x1300000;
	uint32_t* read_errinfo = (uint32_t*)0x1400000;

	cpu_init();

	setvbuf(stdout, 0, _IONBF, 0);

	printf("[!] Initializing NFC handles... ");
	nfc_handle_init();
	printf("done.\r\n");

	while (loops--)
	{
		for (int chidxer = 0; chidxer < sizeof(testChannels)/sizeof(int); chidxer++)
		{
			int ch = testChannels[chidxer];
			for (int way = 0; way < 8; way++)
			{
				printf("[!] Initializing NFC Ch %d Way %d... ", ch, way);
				//nfc_init(ch, way, 0, 4);
				nfc_init(ch, way, 0, 6);
				printf("done.\r\n");

				int pat = 1234;
				{
					int block = 2;
					int row = 0;

					err = nfc_erase(ch, way, block * 256);
					if (err)
						printf("[-] Erase fail at block %d of ch %d and way %d\n", block, ch, way);
					else
					{
						volatile int dum;
						uint32_t words = 16384 / 4;
						for (int i = words / 4 * 0 ; i < words / 4 * 1; i++)
							write_pbuf[i] = 0x55aaaa55 - pat * i;
						for (int i = words / 4 * 1 ; i < words / 4 * 2; i++)
							write_pbuf[i] = ((block * 256 + row) << 16) + i;
						for (int i = words / 4 * 2 ; i < words / 4 * 3; i++)
							write_pbuf[words / 4 * 3 - i - 1] = ((block * 256 + row) << 16) + i;
						for (int i = words / 4 * 3 ; i < words / 4 * 4; i++)
							write_pbuf[i] = 0xaa5555aa + pat * i;

						for (int i = 0 ; i < 63; i++)
							write_sbuf[i] = 0xaa5555aa + ((block * 256 + row) << 16) + i;

						err = nfc_prog(ch, way, block * 256 + row, write_pbuf, write_sbuf);
						if (err)
							printf("[-] Program fail at block %d and row %d of ch %d and way %d\n", block, row, ch, way);

						for (int dqsDelay = 0; dqsDelay < 32; dqsDelay++)
						{
							nfc_set_dqs_delay(ch, dqsDelay);

							for (int dqDelay = 0; dqDelay < 32; dqDelay++)
							{
								nfc_set_dq_delay(ch, dqDelay);

								uint32_t errSum = 0;
								uint32_t succs = 0;
								for (int t = 0; t < 32; t++)
								{
									((uint32_t*)read_errinfo)[0] = 0;
									err = nfc_read(ch, way, block * 256 + row, read_pbuf, read_sbuf, read_errinfo, 1);
									if (err)
										printf("[-] Read fail at block %d and row %d of ch %d and way %d; err0=0x%x, err1=0x%x\n", block, row, ch, way, read_errinfo[0], read_errinfo[1]);
									else
									{
										succs++;
										for (int i = 0; i < 16384 / 4; i++)
										{
											uint32_t errs = numberOfSetBits(read_pbuf[i] ^ write_pbuf[i]);
											if (errs > 0)
												dum = errs;
											errSum += errs;
										}

										for (int i = 0 ; i < 62; i++)
										{
											uint32_t errs = numberOfSetBits(read_sbuf[i] ^ write_sbuf[i]);
											if (errs > 0)
												dum = errs;
											errSum += errs;
										}

										for (int i = 0 ; i < words; i++)
											read_pbuf[i] = 0;
										for (int i = 0 ; i < 62; i++)
											read_sbuf[i] = 0;
									}
								}

								printf("[!] Ch %d Way %d, Avgerrs: %.1f DQSdelay: %d DQdelay: %d\r\n", ch, way, (float)errSum / succs, dqsDelay, dqDelay);
							}
						}
					}
				}
			}
		}
	}

	return 0;
}

int test_read_status()
{
	int loops = 5;
	int err;
	int testChannels[] = {0,1,2,4,5,6,7,3};
	uint32_t* write_pbuf = (uint32_t*)0x1000000;
	uint32_t* write_sbuf = (uint32_t*)0x1100000;
	uint32_t* read_pbuf = (uint32_t*)0x1200000;
	uint32_t* read_sbuf = (uint32_t*)0x1300000;
	uint32_t* read_errinfo = (uint32_t*)0x1400000;

	cpu_init();

	setvbuf(stdout, 0, _IONBF, 0);

	printf("[!] Initializing NFC handles... ");
	nfc_handle_init();
	printf("done.\r\n");

	while (loops--)
	{
		for (int chidxer = 0; chidxer < sizeof(testChannels)/sizeof(int); chidxer++)
		{
			int ch = testChannels[chidxer];
			for (int way = 0; way < 8; way++)
			{
				printf("[!] Initializing NFC Ch %d Way %d... ", ch, way);
				//nfc_init(ch, way, 0, 4);
				nfc_init(ch, way, 0, 4);
				printf("done.\r\n");

				int pat = 1234;
				{
					int block = 2;
					int row = 0;

					for (int dqsDelay = 0; dqsDelay < 32; dqsDelay++)
					{
						nfc_set_dqs_delay(ch, dqsDelay);

						for (int dqDelay = 0; dqDelay < 32; dqDelay++)
						{
							nfc_set_dq_delay(ch, dqDelay);

							uint32_t errSum = 0;
							uint32_t succs = 0;
							for (int t = 0; t < 64; t++)
							{
								int stat = nfc_status(ch, way);
								if (stat != 0xe0e0)
									errSum++;
								succs++;
							}

							printf("[!] Ch %d Way %d, Avgerrs: %.1f DQSdelay: %d DQdelay: %d\r\n", ch, way, (float)errSum / succs, dqsDelay, dqDelay);
						}
					}
				}
			}
		}
	}

	return 0;
}

int main()
{
	return test_readwrite();
}
