#include "xsysmonpsu.h"

XSysMonPsu_Config XSysMonPsu_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-ams", /* compatible */
		0xffa50000, /* reg */
		0x31 /* xlnx,clock-freq */
	},
	{
		"xlnx,zynqmp-ams-ps", /* compatible */
		0x0, /* reg */
		0x0 /* xlnx,clock-freq */
	},
	{
		"xlnx,zynqmp-ams-pl", /* compatible */
		0x400, /* reg */
		0x0 /* xlnx,clock-freq */
	},
	 {
		 NULL
	}
};