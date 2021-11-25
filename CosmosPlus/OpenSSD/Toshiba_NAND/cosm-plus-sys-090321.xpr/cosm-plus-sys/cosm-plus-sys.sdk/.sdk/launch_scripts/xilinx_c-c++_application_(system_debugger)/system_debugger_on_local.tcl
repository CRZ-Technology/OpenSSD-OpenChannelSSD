connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Cosmos+/Toshiba/cosm-plus-sys-083021.xpr/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B191"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B191" && level==0} -index 1
fpga -file C:/Xilinx/Cosmos+/Toshiba/cosm-plus-sys-083021.xpr/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/sys_top_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B191"} -index 0
loadhw -hw C:/Xilinx/Cosmos+/Toshiba/cosm-plus-sys-083021.xpr/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B191"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1B191"} -index 0
dow C:/Xilinx/Cosmos+/Toshiba/cosm-plus-sys-083021.xpr/cosm-plus-sys/cosm-plus-sys.sdk/run-gftl3/Debug/run-gftl3.elf
configparams force-mem-access 0
bpadd -addr &main
