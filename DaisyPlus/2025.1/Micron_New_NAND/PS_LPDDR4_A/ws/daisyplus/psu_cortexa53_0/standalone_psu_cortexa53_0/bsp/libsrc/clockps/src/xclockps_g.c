#include "xclockps.h"

XClockPs_Config XClockPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,psu-crl-apb-1.0", /* compatible */
		0xff5e0000 /* reg */
	},
	 {
		 NULL
	}
};