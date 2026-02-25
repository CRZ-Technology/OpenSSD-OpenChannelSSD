#include "xgpiops.h"

XGpioPs_Config XGpioPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-gpio-1.0", /* compatible */
		0xff0a0000, /* reg */
		0x4010, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};