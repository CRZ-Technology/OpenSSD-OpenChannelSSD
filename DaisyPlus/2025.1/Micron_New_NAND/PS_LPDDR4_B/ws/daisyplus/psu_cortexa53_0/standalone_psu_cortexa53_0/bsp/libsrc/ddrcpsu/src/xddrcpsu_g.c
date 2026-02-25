#include "xddrcpsu.h"

XDdrcpsu_Config XDdrcpsu_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-ddrc-2.40a", /* compatible */
		0xfd070000, /* reg */
		0x0, /* xlnx,has-ecc */
		0x17d77462, /* xlnx,ddrc-clk-freq-hz */
		0x0, /* xlnx,addr-mapping */
		0x2faee8c4, /* xlnx,ddr-freq */
		0x0, /* xlnx,video-buf-size */
		0x0, /* xlnx,brc-mapping */
		0x0, /* xlnx,ddrc-dynamic-ddr-config-enabled */
		0x5, /* xlnx,ddrc-memory-type */
		0x0, /* xlnx,ddrc-memory-address-map */
		0x7, /* xlnx,ddrc-data-mask-and-dbi */
		0x0, /* xlnx,ddrc-address-mirroring */
		0x0, /* xlnx,ddrc-2nd-clock */
		0x0, /* xlnx,ddrc-parity */
		0x0, /* xlnx,ddrc-power-down-enable */
		0x0, /* xlnx,ddrc-clock-stop */
		0x0, /* xlnx,ddrc-low-power-auto-self-refresh */
		0x0, /* xlnx,ddrc-temp-controlled-refresh */
		0x0, /* xlnx,ddrc-fine-granularity-refresh-mode */
		0x0, /* xlnx,ddrc-self-refresh-abort */
		0x0 /* xlnx,ddrc-max-operating-temparature */
	},
	 {
		 NULL
	}
};