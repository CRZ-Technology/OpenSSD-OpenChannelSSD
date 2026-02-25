#include "xipipsu.h"

XIpiPsu_Config XIpiPsu_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-ipi-mailbox", /* compatible */
		0xff300000, /* reg */
		0x1, /* xlnx,ipi-bitmask */
		0x2, /* xlnx,ipi-buf-index */
		0x4023, /* interrupts */
		0xf9010000, /* interrupt-parent */
		0x7, /* xlnx,ipi-target-count */
		{
			{
				1, /* xlnx,ipi-bitmask */
				2 /* xlnx,ipi-buf-index */
			},
			{
				256, /* xlnx,ipi-bitmask */
				0 /* xlnx,ipi-buf-index */
			},
			{
				512, /* xlnx,ipi-bitmask */
				1 /* xlnx,ipi-buf-index */
			},
			{
				65536, /* xlnx,ipi-bitmask */
				7 /* xlnx,ipi-buf-index */
			},
			{
				131072, /* xlnx,ipi-bitmask */
				7 /* xlnx,ipi-buf-index */
			},
			{
				262144, /* xlnx,ipi-bitmask */
				7 /* xlnx,ipi-buf-index */
			},
			{
				524288, /* xlnx,ipi-bitmask */
				7 /* xlnx,ipi-buf-index */
			},
		}, /* child,required */
	},
	 {
		 NULL
	}
};