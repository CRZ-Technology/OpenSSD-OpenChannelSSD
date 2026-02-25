#include "xaxipmon.h"

XAxiPmon_Config XAxiPmon_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-perf-monitor", /* compatible */
		0xffa00000, /* reg */
		0x20, /* xlnx,global-count-width */
		0x20, /* xlnx,metrics-sample-count-width */
		0x1, /* xlnx,enable-event-count */
		0x1, /* xlnx,num-monitor-slots */
		0x3, /* xlnx,num-of-counters */
		0x1, /* xlnx,have-sampled-metric-cnt */
		0x0, /* xlnx,enable-event-log */
		0x20, /* xlnx,fifo-axis-depth */
		0x38, /* xlnx,fifo-axis-tdata-width */
		0x1, /* xlnx,fifo-axis-tid-width */
		0x1, /* xlnx,metric-count-scale */
		0x1, /* xlnx,enable-advanced */
		0x0, /* xlnx,enable-profile */
		0x0, /* xlnx,enable-trace */
		0x1, /* xlnx,enable-32bit-filter-id */
		0x4019, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-perf-monitor", /* compatible */
		0xfd0b0000, /* reg */
		0x20, /* xlnx,global-count-width */
		0x20, /* xlnx,metrics-sample-count-width */
		0x1, /* xlnx,enable-event-count */
		0x6, /* xlnx,num-monitor-slots */
		0xa, /* xlnx,num-of-counters */
		0x1, /* xlnx,have-sampled-metric-cnt */
		0x0, /* xlnx,enable-event-log */
		0x20, /* xlnx,fifo-axis-depth */
		0x38, /* xlnx,fifo-axis-tdata-width */
		0x1, /* xlnx,fifo-axis-tid-width */
		0x1, /* xlnx,metric-count-scale */
		0x1, /* xlnx,enable-advanced */
		0x0, /* xlnx,enable-profile */
		0x0, /* xlnx,enable-trace */
		0x1, /* xlnx,enable-32bit-filter-id */
		0x407b, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-perf-monitor", /* compatible */
		0xfd490000, /* reg */
		0x20, /* xlnx,global-count-width */
		0x20, /* xlnx,metrics-sample-count-width */
		0x1, /* xlnx,enable-event-count */
		0x1, /* xlnx,num-monitor-slots */
		0x3, /* xlnx,num-of-counters */
		0x1, /* xlnx,have-sampled-metric-cnt */
		0x0, /* xlnx,enable-event-log */
		0x20, /* xlnx,fifo-axis-depth */
		0x38, /* xlnx,fifo-axis-tdata-width */
		0x1, /* xlnx,fifo-axis-tid-width */
		0x1, /* xlnx,metric-count-scale */
		0x1, /* xlnx,enable-advanced */
		0x0, /* xlnx,enable-profile */
		0x0, /* xlnx,enable-trace */
		0x1, /* xlnx,enable-32bit-filter-id */
		0x407b, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	{
		"xlnx,axi-perf-monitor", /* compatible */
		0xffa10000, /* reg */
		0x20, /* xlnx,global-count-width */
		0x20, /* xlnx,metrics-sample-count-width */
		0x1, /* xlnx,enable-event-count */
		0x1, /* xlnx,num-monitor-slots */
		0x3, /* xlnx,num-of-counters */
		0x1, /* xlnx,have-sampled-metric-cnt */
		0x0, /* xlnx,enable-event-log */
		0x20, /* xlnx,fifo-axis-depth */
		0x38, /* xlnx,fifo-axis-tdata-width */
		0x1, /* xlnx,fifo-axis-tid-width */
		0x1, /* xlnx,metric-count-scale */
		0x1, /* xlnx,enable-advanced */
		0x0, /* xlnx,enable-profile */
		0x0, /* xlnx,enable-trace */
		0x1, /* xlnx,enable-32bit-filter-id */
		0x4019, /* interrupts */
		0xf9010000 /* interrupt-parent */
	},
	 {
		 NULL
	}
};