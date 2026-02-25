#include "xrtcpsu.h"

XRtcPsu_Config XRtcPsu_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-rtc", /* compatible */
		0xffa60000, /* reg */
		{0x401a,  0x401b}, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};