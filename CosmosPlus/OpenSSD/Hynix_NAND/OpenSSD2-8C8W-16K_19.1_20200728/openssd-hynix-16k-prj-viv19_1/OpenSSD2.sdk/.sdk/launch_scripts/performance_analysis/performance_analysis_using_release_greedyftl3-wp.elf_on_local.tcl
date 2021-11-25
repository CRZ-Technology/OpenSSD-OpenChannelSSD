connect -url tcp:127.0.0.1:3121
source C:/Work/projects-viv19_1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/OpenSSD2_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1C18F"} -index 0
loadhw -hw C:/Work/projects-viv19_1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/OpenSSD2_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1C18F"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1C18F"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1C18F"} -index 0
dow C:/Work/projects-viv19_1/openssd-hynix-16k-prj-viv19_1/OpenSSD2.sdk/GreedyFTL3-wp/Release/GreedyFTL3-wp.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A1C18F"} -index 0
con
