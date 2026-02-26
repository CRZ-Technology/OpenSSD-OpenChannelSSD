set(ps7_ddr_0_memory_0 "0x100000;0x3ff00000")
set(ps7_ram_0_memory_0 "0x0;0x30000")
set(ps7_ram_1_memory_1 "0xffff0000;0xfe00")
set(axi_bram_ctrl_0_memory_0 "0x45000000;0x4000")
set(axi_bram_ctrl_1_memory_1 "0x45100000;0x4000")
set(axi_bram_ctrl_2_memory_2 "0x45200000;0x4000")
set(axi_bram_ctrl_3_memory_3 "0x45300000;0x4000")
set(axi_bram_ctrl_4_memory_4 "0x45400000;0x4000")
set(axi_bram_ctrl_5_memory_5 "0x45500000;0x4000")
set(axi_bram_ctrl_6_memory_6 "0x45600000;0x4000")
set(axi_bram_ctrl_7_memory_7 "0x45700000;0x4000")
set(DDR ps7_ddr_0_memory_0)
set(CODE ps7_ddr_0_memory_0)
set(DATA ps7_ddr_0_memory_0)
set(TOTAL_MEM_CONTROLLERS "ps7_ddr_0_memory_0;ps7_ram_0_memory_0;ps7_ram_1_memory_1;axi_bram_ctrl_0_memory_0;axi_bram_ctrl_1_memory_1;axi_bram_ctrl_2_memory_2;axi_bram_ctrl_3_memory_3;axi_bram_ctrl_4_memory_4;axi_bram_ctrl_5_memory_5;axi_bram_ctrl_6_memory_6;axi_bram_ctrl_7_memory_7")
set(MEMORY_SECTION "MEMORY
{
	ps7_ddr_0_memory_0 : ORIGIN = 0x100000, LENGTH = 0x3ff00000
	ps7_qspi_linear_0_memory_0 : ORIGIN = 0xfc000000, LENGTH = 0x2000000
	ps7_ram_0_memory_0 : ORIGIN = 0x0, LENGTH = 0x30000
	ps7_ram_1_memory_1 : ORIGIN = 0xffff0000, LENGTH = 0xfe00
	axi_bram_ctrl_0_memory_0 : ORIGIN = 0x45000000, LENGTH = 0x4000
	axi_bram_ctrl_1_memory_1 : ORIGIN = 0x45100000, LENGTH = 0x4000
	axi_bram_ctrl_2_memory_2 : ORIGIN = 0x45200000, LENGTH = 0x4000
	axi_bram_ctrl_3_memory_3 : ORIGIN = 0x45300000, LENGTH = 0x4000
	axi_bram_ctrl_4_memory_4 : ORIGIN = 0x45400000, LENGTH = 0x4000
	axi_bram_ctrl_5_memory_5 : ORIGIN = 0x45500000, LENGTH = 0x4000
	axi_bram_ctrl_6_memory_6 : ORIGIN = 0x45600000, LENGTH = 0x4000
	axi_bram_ctrl_7_memory_7 : ORIGIN = 0x45700000, LENGTH = 0x4000
}")
set(STACK_SIZE 0x2000)
set(HEAP_SIZE 0x2000)
