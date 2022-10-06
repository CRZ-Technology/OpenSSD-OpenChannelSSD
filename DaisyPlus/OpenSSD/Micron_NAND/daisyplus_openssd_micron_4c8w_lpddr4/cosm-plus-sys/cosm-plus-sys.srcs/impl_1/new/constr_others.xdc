set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/wDelayedDQS]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/wDelayedDQS]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/wDelayedDQS]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/wDelayedDQS]

set_property DELAY_VALUE 1100 [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property DELAY_VALUE 1100 [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property DELAY_VALUE 1050 [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property DELAY_VALUE 1050 [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]

set_false_path -from [get_clocks clk_pl_0] -to [get_pins sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/rIN_FIFO_WE_Latch_reg/D]
set_false_path -from [get_clocks clk_pl_0] -to [get_pins sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/rIN_FIFO_WE_Latch_reg/D]
set_false_path -from [get_clocks clk_pl_0] -to [get_pins sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/rIN_FIFO_WE_Latch_reg/D]
set_false_path -from [get_clocks clk_pl_0] -to [get_pins sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/rIN_FIFO_WE_Latch_reg/D]

set_property DELAY_VALUE 0 [get_cells {sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]
set_property DELAY_VALUE 0 [get_cells {sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]
set_property DELAY_VALUE 0 [get_cells {sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]
set_property DELAY_VALUE 0 [get_cells {sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]

set_property IODELAY_GROUP BANK_0_IODELAY_GROUP [get_cells {sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]
set_property IODELAY_GROUP BANK_1_IODELAY_GROUP [get_cells {sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]
set_property IODELAY_GROUP BANK_2_IODELAY_GROUP [get_cells {sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]
set_property IODELAY_GROUP BANK_3_IODELAY_GROUP [get_cells {sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/DQIDDRBits[*].Inst_DQIDELAY}]

#set_false_path -from [get_clocks *userclk2] -to [get_clocks clk_fpga_0]
#set_false_path -from [get_clocks clk_pl_2] -to [get_clocks *userclk2]
#set_false_path -from [get_clocks *userclk2] -to [get_clocks clk_pl_2]
#set_false_path -from [get_clocks clk_fpga_3] -to [get_clocks *userclk2]
#set_false_path -from [get_clocks *userclk2] -to [get_clocks clk_pl_3]
#set_false_path -from [get_clocks clk_125mhz_mux_x0y0] -to [get_clocks clk_pl_2]
##set_false_path -from [get_clocks clk_fpga_2] -to [get_clocks clk_125mhz_mux_x0y0]
#set_false_path -from [get_clocks clk_250mhz_mux_x0y0] -to [get_clocks clk_pl_2]
##set_false_path -from [get_clocks clk_fpga_2] -to [get_clocks clk_250mhz_mux_x0y0]
#set_false_path -from [get_clocks clk_pl_3] -to [get_clocks clk_pl_2]
#set_false_path -from [get_clocks clk_pl_2] -to [get_clocks clk_pl_3]

set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_0_nand_dq[5]}]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_1_nand_dq[5]}]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_2_nand_dq[2]}]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_3_nand_dq[2]}]

set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_0_nand_rb[1]}]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_1_nand_rb[1]}]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_2_nand_rb[1]}]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {nand_if_3_nand_rb[1]}]

#create_pblock CH03ECCPBLK
#add_cells_to_pblock [get_pblocks CH03ECCPBLK] [get_cells -quiet [list sys_top_i/bch_skes_256B_21B_13b_0]]
#resize_pblock [get_pblocks CH03ECCPBLK] -add {CLOCKREGION_X0Y4:CLOCKREGION_X3Y7}

#set_property INTERNAL_VREF 0.9 [get_iobanks 11]
#set_property INTERNAL_VREF 0.9 [get_iobanks 12]
#set_property INTERNAL_VREF 0.9 [get_iobanks 13]
#set_property INTERNAL_VREF 0.9 [get_iobanks 33]
#set_property INTERNAL_VREF 0.9 [get_iobanks 34]
#set_property INTERNAL_VREF 0.9 [get_iobanks 35]
set_property INTERNAL_VREF 0.9 [get_iobanks 68]
set_property INTERNAL_VREF 0.9 [get_iobanks 69]
set_property INTERNAL_VREF 0.9 [get_iobanks 70]
set_property INTERNAL_VREF 0.9 [get_iobanks 71]


set_clock_groups -asynchronous -group clk_pl_1 -group nand_ch0_fabric_clk -group nand_ch1_fabric_clk -group nand_ch2_fabric_clk -group nand_ch3_fabric_clk
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

