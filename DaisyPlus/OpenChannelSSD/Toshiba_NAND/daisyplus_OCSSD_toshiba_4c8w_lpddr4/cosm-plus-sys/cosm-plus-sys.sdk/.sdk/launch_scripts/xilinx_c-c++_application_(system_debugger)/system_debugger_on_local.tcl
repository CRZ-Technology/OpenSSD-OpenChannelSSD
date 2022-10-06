connect -url tcp:127.0.0.1:3121
source C:/Xilinx/SDK/2019.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AFAE40"} -index 1
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AFAE40" && level==0} -index 0
fpga -file F:/daisyplus_OCSSD_toshiba_4c8w_20220719_lpddr4/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/sys_top_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AFAE40"} -index 1
loadhw -hw F:/daisyplus_OCSSD_toshiba_4c8w_20220719_lpddr4/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AFAE40"} -index 1
source F:/daisyplus_OCSSD_toshiba_4c8w_20220719_lpddr4/cosm-plus-sys/cosm-plus-sys.sdk/sys_top_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AFAE40"} -index 1
rst -processor
dow F:/daisyplus_OCSSD_toshiba_4c8w_20220719_lpddr4/cosm-plus-sys/cosm-plus-sys.sdk/run-gr3ftl/Debug/run-gr3ftl.elf
configparams force-mem-access 0
bpadd -addr &main
