connect -url tcp:127.0.0.1:3121
source C:/Xilinx/SDK/2019.1/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0"} -index 1
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0"} -index 1
reset_apu
targets -set -nocase -filter {name =~"RPU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0"} -index 1
clear_rpu_reset
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0" && level==0} -index 0
fpga -file C:/project/Daisy/OpenSSD/2019.1/512bit/Daisy_NVMe_MIG_19.1_512b_20230102/OpenSSD/OpenSSD.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0"} -index 1
loadhw -hw C:/project/Daisy/OpenSSD/2019.1/512bit/Daisy_NVMe_MIG_19.1_512b_20230102/OpenSSD/OpenSSD.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0"} -index 1
source C:/project/Daisy/OpenSSD/2019.1/512bit/Daisy_NVMe_MIG_19.1_512b_20230102/OpenSSD/OpenSSD.sdk/design_1_wrapper_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308AAF6B0"} -index 1
dow C:/project/Daisy/OpenSSD/2019.1/512bit/Daisy_NVMe_MIG_19.1_512b_20230102/OpenSSD/OpenSSD.sdk/nvme/Debug/nvme.elf
configparams force-mem-access 0
bpadd -addr &main
