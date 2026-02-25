#include "xresetps.h"

XResetPs_Config XResetPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,psu-crf-apb-1.0", /* compatible */
		0xfd1a0000 /* reg */
	},
	 {
		 NULL
	}
};