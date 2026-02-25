#include "xcoresightps_dcc.h"

XCoresightps_dcc_Config XCoresightps_dcc_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,coresight-1.0", /* compatible */
		0xfe800000 /* reg */
	},
	 {
		 NULL
	}
};