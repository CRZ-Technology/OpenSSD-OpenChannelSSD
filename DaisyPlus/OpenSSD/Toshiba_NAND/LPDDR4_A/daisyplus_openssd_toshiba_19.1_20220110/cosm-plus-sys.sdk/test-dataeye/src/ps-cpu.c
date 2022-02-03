/*
 * ps-cpu.c
 *
 *  Created on: 2018. 4. 11.
 *      Author: Administrator
 */

#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_mmu.h"

void cpu_init()
{
	unsigned int u;

//	Xil_ICacheDisable();
	Xil_DCacheDisable();
//	Xil_DisableMMU();

#if 0
	// Paging table set
	#define MB (1024*1024)
	for (u = 0; u < 4096; u+=2)
	{
		if (u < 0x800)
			Xil_SetTlbAttributes(u * MB, NORM_NONCACHE);
		else
			Xil_SetTlbAttributes(u * MB, STRONG_ORDERED);
	}
#endif
}

