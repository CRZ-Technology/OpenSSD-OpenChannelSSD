#include "xsdps.h"

XSdPs_Config XSdPs_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,zynqmp-8.9a", /* compatible */
		0xff170000, /* reg */
		0xbebba31, /* xlnx,sdio-clk-freq-hz */
		0x1, /* xlnx,has-cd */
		0x0, /* xlnx,has-wp */
		0x4, /* xlnx,bus-width */
		0x1, /* xlnx,mio-bank */
		0x0, /* xlnx,has-emio */
		0x2, /* xlnx,slot-type */
		0x0, /* xlnx,is-cache-coherent */
		0x37, /* clocks */
		0x15, /* xlnx,clk-50-sdr-itap-dly */
		0x5, /* xlnx,clk-50-sdr-otap-dly */
		0x0, /* xlnx,clk-50-ddr-itap-dly */
		0x0, /* xlnx,clk-50-ddr-otap-dly */
		0x0, /* xlnx,clk-100-sdr-otap-dly */
		0x0, /* xlnx,clk-200-sdr-otap-dly */
		0x0 /* xlnx,clk-200-ddr-otap-dly */
	},
	 {
		 NULL
	}
};