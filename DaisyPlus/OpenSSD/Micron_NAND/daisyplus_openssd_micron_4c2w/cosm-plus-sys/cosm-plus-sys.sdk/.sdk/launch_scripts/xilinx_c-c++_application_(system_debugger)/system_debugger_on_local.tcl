connect -url tcp:127.0.0.1:3121
source C:/Xilinx/SDK/2019.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C"} -index 1
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C"} -index 1
reset_apu
targets -set -nocase -filter {name =~"RPU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C"} -index 1
clear_rpu_reset
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C" && level==0} -index 0
fpga -file D:/tmp/daisyplus_openssd_micron_4c2w_66.6mhz_300_input_20231101/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/sys_top_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C"} -index 1
loadhw -hw D:/tmp/daisyplus_openssd_micron_4c2w_66.6mhz_300_input_20231101/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C"} -index 1
source D:/tmp/daisyplus_openssd_micron_4c2w_66.6mhz_300_input_20231101/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-HS2 210249A73D9C"} -index 1
dow D:/tmp/daisyplus_openssd_micron_4c2w_66.6mhz_300_input_20231101/cosm-plus-sys/cosm-plus-sys.sdk/run-gr3ftl/Debug/run-gr3ftl.elf
configparams force-mem-access 0
bpadd -addr &main
