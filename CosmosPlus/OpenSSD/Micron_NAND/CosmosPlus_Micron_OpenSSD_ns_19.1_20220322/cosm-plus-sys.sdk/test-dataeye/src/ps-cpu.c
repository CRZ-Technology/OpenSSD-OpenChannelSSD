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
	Xil_ICacheDisable();
	Xil_DCacheDisable();
	Xil_DisableMMU();
}

