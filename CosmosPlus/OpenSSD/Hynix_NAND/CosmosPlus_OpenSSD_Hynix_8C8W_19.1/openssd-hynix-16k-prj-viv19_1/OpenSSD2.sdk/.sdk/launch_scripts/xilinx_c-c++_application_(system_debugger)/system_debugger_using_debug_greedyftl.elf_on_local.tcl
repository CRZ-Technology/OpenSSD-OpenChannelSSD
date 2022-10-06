connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Cosmos+/Cosmos-plus_prjs/OpenSSD2-8C8W-16K_19.1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/OpenSSD2_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A543CD"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A543CD" && level==0} -index 1
fpga -file C:/Xilinx/Cosmos+/Cosmos-plus_prjs/OpenSSD2-8C8W-16K_19.1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/OpenSSD2_hw_platform_0/OpenSSD2.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A543CD"} -index 0
loadhw -hw C:/Xilinx/Cosmos+/Cosmos-plus_prjs/OpenSSD2-8C8W-16K_19.1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/OpenSSD2_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A543CD"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A543CD"} -index 0
dow C:/Xilinx/Cosmos+/Cosmos-plus_prjs/OpenSSD2-8C8W-16K_19.1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/GreedyFTL/Debug/GreedyFTL.elf
configparams force-mem-access 0
bpadd -addr &main
