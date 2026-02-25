#include "xcsudma.h"

XCsuDma_Config XCsuDma_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-csudma-1.0", /* compatible */
		0xffc80000, /* reg */
		0x0, /* xlnx,dma-type */
		0x4056, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};