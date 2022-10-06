/*
 * nfc-helper.h
 *
 *  Created on: 2018. 4. 11.
 *      Author: Administrator
 */

#ifndef NFC_HELPER_H_
#define NFC_HELPER_H_

#include "xparameters.h"
#include "t4nsc_lld.h"

#ifdef XPAR_T4NFC_HLPER_0_BASEADDR
#define CH0ONLINE 1
#else
#define CH0ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_1_BASEADDR
#define CH1ONLINE 1
#else
#define CH1ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_2_BASEADDR
#define CH2ONLINE 1
#else
#define CH2ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_3_BASEADDR
#define CH3ONLINE 1
#else
#define CH3ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_4_BASEADDR
#define CH4ONLINE 1
#else
#define CH4ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_5_BASEADDR
#define CH5ONLINE 1
#else
#define CH5ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_6_BASEADDR
#define CH6ONLINE 1
#else
#define CH6ONLINE 0
#endif

#ifdef XPAR_T4NFC_HLPER_7_BASEADDR
#define CH7ONLINE 1
#else
#define CH7ONLINE 0
#endif

#define NUM_CHANNELS (CH0ONLINE + CH1ONLINE + CH2ONLINE + CH3ONLINE + CH4ONLINE + CH5ONLINE + CH6ONLINE + CH7ONLINE)
#define NUM_WAYS 8

extern volatile T4REGS* nfc_channel[NUM_CHANNELS];

void nfc_handle_init();
void nfc_init(int ch, int way, unsigned char odt, unsigned char drvstrength);
void nfc_set_dqs_delay(int channel, unsigned int newValue);
int nfc_prog_raw(int channel, int way, unsigned int row, void* buf, int sb);
int nfc_read_raw(int channel, int way, unsigned int row, void* buf, int sb);
int nfc_erase(int channel, int way, unsigned int row);
int nfc_fsprog(int channel, int way, unsigned int row, void* buf, void* sbuf);
int nfc_prog(int channel, int way, unsigned int row, void* buf, void* sbuf);
int nfc_status(int channel, int way);
int nfc_read(int channel, int way, unsigned int row, void* buf, void* sbuf, void* err, int sb);
int nfc_read_id(int channel, int way, void* buf, int sel);

#endif /* NFC_HELPER_H_ */
