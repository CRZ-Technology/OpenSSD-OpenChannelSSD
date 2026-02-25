#include "xarmv8.h"

XARMv8_Config XARMv8_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {
	{
		0x1fc9f08,  /* stamp-frequency */
		0x4f78d984,  /* cpu-frequency */
		0x0  /* reg */
	}
};