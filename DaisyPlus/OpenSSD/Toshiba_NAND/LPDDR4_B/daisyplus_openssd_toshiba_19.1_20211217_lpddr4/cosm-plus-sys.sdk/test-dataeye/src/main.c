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
	int testChannels[] = {0,1,2,3};
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

						for (int dqsDelay = 0; dqsDelay < 512; dqsDelay++)
						{
							nfc_set_dqs_delay(ch, dqsDelay);

							for (int dqDelay = 0; dqDelay < 512; dqDelay++)
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
	int testChannels[] = {0,1,2,3};
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

//				nfc_set_dqs_delay(ch, 100);

				int pat = 1234;
				{
					int block = 2;
					int row = 0;

//					for (int dqsDelay = 0; dqsDelay < 512; dqsDelay++)
					{
    					int dqsDelay = 100;

						nfc_set_dqs_delay(ch, dqsDelay);

//						for (int dqDelay = 0; dqDelay < 512; dqDelay++)
						{
                            int dqDelay = 0;

							nfc_set_dq_delay(ch, dqDelay);

							uint32_t errSum = 0;
							uint32_t succs = 0;
							for (int t = 0; t < 64; t++)
							{
								int stat = nfc_status(ch, way);
//								if (stat != 0xe0e0)
								if ((stat & 0xFF)!= 0xE0)
									errSum++;
								succs++;
							}

							printf("[!] Ch %d Way %d, Avgerrs: %.3f DQSdelay: %d DQdelay: %d\r\n", ch, way, (float)errSum / succs, dqsDelay, dqDelay);
						}
					}
				}
			}
		}
	}

	return 0;
}

static void print_usage(void)
{
    xil_printf("1. Enter Channel(0-3).\r\n");
    xil_printf("2. Enter Way(0-7).\r\n");
    xil_printf("3. Init NAND.\r\n");
    xil_printf("4. Read Status.\r\n");
    xil_printf("5. Enter DQS Delay(0-511).\r\n");
    xil_printf("6. Enter DQ Delay(0-511).\r\n");
    xil_printf("Enter Menu:");    
}

static int test_design(void)
{
    char ch = 0, way = 0, dummy = 0;
	char menu = 0;
	int dqsDelay = 0, dqDelay = 0, stat = 0;

	cpu_init();

	setvbuf(stdout, 0, _IONBF, 0);

	printf("[!] Initializing NFC handles... ");
	nfc_handle_init();
	printf("done.\r\n");

    print_usage();
	while (1)
	{
	    scanf("%c%*c", &menu);
	    printf("%c\r\n", menu);

	    switch(menu)
	    {
	        case '1':
	            xil_printf("Channel:");
	            scanf("%c%*c", &ch);
        	    printf("%c\r\n", ch);
        	    ch = ch - '0';
	            break;

	        case '2':
	            xil_printf("Way:");
	            scanf("%c%*c", &way);
        	    printf("%c\r\n", way);
        	    way = way - '0';
	            break;

	        case '3':
	            while(1)
	            {
	                static int cnt = 0;

    				printf("[!] Initializing NFC Ch %d Way %d... cnt=%d ", ch, way, cnt++);
    				nfc_init(ch, way, 0, 6);
    				printf("done.\r\n");
    				//usleep(10000000);

                    ch = (ch + 1) % 4;
                    way = (way + 1) % 8;
                }
	            break;

	        case '4':
				stat = nfc_status(ch, way);
	            xil_printf("Read Status:ch %d, way %d, status %x\r\n", ch, way, stat);
	            break;

	        case '5':
	            xil_printf("DQS Delay:");
	            scanf("%d%*c", &dqsDelay);
	            xil_printf("DQS Delay:ch %d, dqs dely %d\r\n", ch, dqsDelay);
				nfc_set_dqs_delay(ch, dqsDelay);
	            break;

	        case '6':
	            xil_printf("DQ Delay:");
	            scanf("%d%*c", &dqDelay);
	            xil_printf("DQ Delay:ch %d, dq dely %d\r\n", ch, dqDelay);
				nfc_set_dq_delay(ch, dqDelay);
	            break;

	        default:
	            break;
	    }

        print_usage();
    }

	return 0;
}

int main()
{
//	return test_readwrite();
//	return test_read_status();
	return test_design();
}
