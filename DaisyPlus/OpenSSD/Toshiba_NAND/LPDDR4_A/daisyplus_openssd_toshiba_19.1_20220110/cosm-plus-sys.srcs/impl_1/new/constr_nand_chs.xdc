create_generated_clock -name pll_bank10_nand_phy_clk -source [get_pins sys_top_i/pll_bank10/clk_in1] -multiply_by 2 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank10/clk_out1]
create_generated_clock -name pll_bank11_nand_phy_clk -source [get_pins sys_top_i/pll_bank11/clk_in1] -multiply_by 2 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank11/clk_out1]
create_generated_clock -name pll_bank12_nand_phy_clk -source [get_pins sys_top_i/pll_bank12/clk_in1] -multiply_by 2 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank12/clk_out1]
create_generated_clock -name pll_bank13_nand_phy_clk -source [get_pins sys_top_i/pll_bank13/clk_in1] -multiply_by 2 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank13/clk_out1]

create_generated_clock -name nand_ch0_fabric_clk -source [get_pins sys_top_i/pll_bank10/clk_in1] -multiply_by 1 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank10/clk_out2]
create_generated_clock -name nand_ch1_fabric_clk -source [get_pins sys_top_i/pll_bank11/clk_in1] -multiply_by 1 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank11/clk_out2]
create_generated_clock -name nand_ch2_fabric_clk -source [get_pins sys_top_i/pll_bank12/clk_in1] -multiply_by 1 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank12/clk_out2]
create_generated_clock -name nand_ch3_fabric_clk -source [get_pins sys_top_i/pll_bank13/clk_in1] -multiply_by 1 -add -master_clock clk_pl_0 [get_pins sys_top_i/pll_bank13/clk_out2]

#set_clock_uncertainty 0.000 [get_clocks nand_ch0_fabric_clk]
#set_clock_uncertainty 0.000 [get_clocks nand_ch1_fabric_clk]
#set_clock_uncertainty 0.000 [get_clocks nand_ch2_fabric_clk]
#set_clock_uncertainty 0.000 [get_clocks nand_ch3_fabric_clk]

#set_property BEL IN_FIFO [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
#set_property LOC IN_FIFO_X0Y11 [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
create_clock -period 15 -name nand_ch0_virt_clk
create_clock -period 15 -name nand_ch0_dqs_as_clk [get_ports nand_if_0_nand_dqs_p]
set_clock_uncertainty 0.700 [get_clocks nand_ch0_dqs_as_clk]
set_clock_latency -source -0.000 [get_clocks nand_ch0_dqs_as_clk]
set_multicycle_path -setup -end -rise_from [get_clocks nand_ch0_virt_clk] -rise_to [get_clocks nand_ch0_dqs_as_clk] 0
set_multicycle_path -setup -end -fall_from [get_clocks nand_ch0_virt_clk] -fall_to [get_clocks nand_ch0_dqs_as_clk] 0
set_false_path -setup -fall_from [get_clocks nand_ch0_virt_clk] -rise_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -setup -rise_from [get_clocks nand_ch0_virt_clk] -fall_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -hold -rise_from [get_clocks nand_ch0_virt_clk] -rise_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -hold -fall_from [get_clocks nand_ch0_virt_clk] -fall_to [get_clocks nand_ch0_dqs_as_clk]
set_input_delay -clock [get_clocks nand_ch0_virt_clk] -max 0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch0_virt_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch0_virt_clk] -min -add_delay -0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch0_virt_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch0_dqs_as_clk] -max 0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch0_dqs_as_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch0_dqs_as_clk] -min -add_delay -0.900 [get_ports {nand_if_0_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch0_dqs_as_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_0_nand_dq[*]}]
create_generated_clock -name nand_ch0_weo_clk -source [get_pins sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Output/Inst_WEOSERDES/OQ] -edges {1 3 5} -add -master_clock pll_bank10_nand_phy_clk [get_ports nand_if_0_nand_we]
set_output_delay -clock [get_clocks nand_ch0_weo_clk] 1.300 [get_ports {nand_if_0_nand_ce[*]}]
set_output_delay -clock [get_clocks nand_ch0_weo_clk] 1.300 [get_ports nand_if_0_nand_ale]
set_output_delay -clock [get_clocks nand_ch0_weo_clk] 1.300 [get_ports nand_if_0_nand_cle]
set_output_delay -clock [get_clocks nand_ch0_weo_clk] 1.300 [get_ports {nand_if_0_nand_dq[*]}]
#set_multicycle_path -setup -end -rise_from [get_clocks nand_ch0_weo_clk] -rise_to [get_clocks pll_bank10_nand_phy_clk] 0
#set_multicycle_path -setup -end -fall_from [get_clocks nand_ch0_weo_clk] -fall_to [get_clocks pll_bank10_nand_phy_clk] 0
set_false_path -setup -fall_from pll_bank10_nand_phy_clk -rise_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -setup -fall_from pll_bank10_nand_phy_clk -fall_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -hold -fall_from pll_bank10_nand_phy_clk -rise_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -hold -fall_from pll_bank10_nand_phy_clk -fall_to [get_clocks nand_ch0_dqs_as_clk]
set_false_path -setup -fall_from pll_bank10_nand_phy_clk -rise_to [get_clocks nand_ch0_weo_clk]
set_false_path -setup -fall_from pll_bank10_nand_phy_clk -fall_to [get_clocks nand_ch0_weo_clk]
set_false_path -hold -fall_from pll_bank10_nand_phy_clk -rise_to [get_clocks nand_ch0_weo_clk]
set_false_path -hold -fall_from pll_bank10_nand_phy_clk -fall_to [get_clocks nand_ch0_weo_clk]
set_property IODELAY_GROUP BANK_0_IODELAY_GROUP [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property IODELAY_GROUP BANK_0_IODELAY_GROUP [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property BEL CONTROL [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property LOC BITSLICE_CONTROL_X0Y60 [get_cells sys_top_i/v2nfc_0/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
create_pblock CH0PBLK
add_cells_to_pblock [get_pblocks CH0PBLK] [get_cells -quiet [list sys_top_i/v2nfc_0 sys_top_i/bch_sccs_256B_21B_13b_0 sys_top_i/pll_bank10 sys_top_i/pll_bank10_psr]]
resize_pblock [get_pblocks CH0PBLK] -add {CLOCKREGION_X2Y7:CLOCKREGION_X2Y7}
create_pblock CH0PROCPBLK
add_cells_to_pblock [get_pblocks CH0PROCPBLK] [get_cells -quiet [list sys_top_i/t4nfc_hlper_0]]
resize_pblock [get_pblocks CH0PROCPBLK] -add {CLOCKREGION_X1Y7:CLOCKREGION_X3Y7}

#set_property BEL IN_FIFO [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
#set_property LOC IN_FIFO_X0Y8 [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
create_clock -period 15 -name nand_ch1_virt_clk
create_clock -period 15 -name nand_ch1_dqs_as_clk [get_ports nand_if_1_nand_dqs_p]
set_clock_uncertainty 0.700 [get_clocks nand_ch1_dqs_as_clk]
set_clock_latency -source 0.000 [get_clocks nand_ch1_dqs_as_clk]
set_multicycle_path -setup -end -rise_from [get_clocks nand_ch1_virt_clk] -rise_to [get_clocks nand_ch1_dqs_as_clk] 0
set_multicycle_path -setup -end -fall_from [get_clocks nand_ch1_virt_clk] -fall_to [get_clocks nand_ch1_dqs_as_clk] 0
set_false_path -setup -fall_from [get_clocks nand_ch1_virt_clk] -rise_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -setup -rise_from [get_clocks nand_ch1_virt_clk] -fall_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -hold -rise_from [get_clocks nand_ch1_virt_clk] -rise_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -hold -fall_from [get_clocks nand_ch1_virt_clk] -fall_to [get_clocks nand_ch1_dqs_as_clk]
set_input_delay -clock [get_clocks nand_ch1_virt_clk] -max 0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch1_virt_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch1_virt_clk] -min -add_delay -0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch1_virt_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch1_dqs_as_clk] -max 0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch1_dqs_as_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch1_dqs_as_clk] -min -add_delay -0.900 [get_ports {nand_if_1_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch1_dqs_as_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_1_nand_dq[*]}]
create_generated_clock -name nand_ch1_weo_clk -source [get_pins sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Output/Inst_WEOSERDES/OQ] -edges {1 3 5} -add -master_clock pll_bank11_nand_phy_clk [get_ports nand_if_1_nand_we]
set_output_delay -clock [get_clocks nand_ch1_weo_clk] 1.300 [get_ports {nand_if_1_nand_ce[*]}]
set_output_delay -clock [get_clocks nand_ch1_weo_clk] 1.300 [get_ports nand_if_1_nand_ale]
set_output_delay -clock [get_clocks nand_ch1_weo_clk] 1.300 [get_ports nand_if_1_nand_cle]
set_output_delay -clock [get_clocks nand_ch1_weo_clk] 1.300 [get_ports {nand_if_1_nand_dq[*]}]
#set_multicycle_path -setup -end -rise_from [get_clocks nand_ch1_weo_clk] -rise_to [get_clocks pll_bank11_nand_phy_clk] 0
#set_multicycle_path -setup -end -fall_from [get_clocks nand_ch1_weo_clk] -fall_to [get_clocks pll_bank11_nand_phy_clk] 0
set_false_path -setup -fall_from pll_bank11_nand_phy_clk -rise_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -setup -fall_from pll_bank11_nand_phy_clk -fall_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -hold -fall_from pll_bank11_nand_phy_clk -rise_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -hold -fall_from pll_bank11_nand_phy_clk -fall_to [get_clocks nand_ch1_dqs_as_clk]
set_false_path -setup -fall_from pll_bank11_nand_phy_clk -rise_to [get_clocks nand_ch1_weo_clk]
set_false_path -setup -fall_from pll_bank11_nand_phy_clk -fall_to [get_clocks nand_ch1_weo_clk]
set_false_path -hold -fall_from pll_bank11_nand_phy_clk -rise_to [get_clocks nand_ch1_weo_clk]
set_false_path -hold -fall_from pll_bank11_nand_phy_clk -fall_to [get_clocks nand_ch1_weo_clk]
set_property IODELAY_GROUP BANK_1_IODELAY_GROUP [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property IODELAY_GROUP BANK_1_IODELAY_GROUP [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property BEL CONTROL [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property LOC BITSLICE_CONTROL_X0Y44 [get_cells sys_top_i/v2nfc_1/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
create_pblock CH1PBLK
add_cells_to_pblock [get_pblocks CH1PBLK] [get_cells -quiet [list sys_top_i/v2nfc_1 sys_top_i/bch_sccs_256B_21B_13b_1 sys_top_i/pll_bank11 sys_top_i/pll_bank11_psr]]
resize_pblock [get_pblocks CH1PBLK] -add {CLOCKREGION_X2Y5:CLOCKREGION_X2Y5}
create_pblock CH1PROCPBLK
add_cells_to_pblock [get_pblocks CH1PROCPBLK] [get_cells -quiet [list sys_top_i/t4nfc_hlper_1]]
resize_pblock [get_pblocks CH1PROCPBLK] -add {CLOCKREGION_X1Y5:CLOCKREGION_X3Y5}

#set_property BEL IN_FIFO [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
#set_property LOC IN_FIFO_X0Y12 [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
create_clock -period 15 -name nand_ch2_virt_clk
create_clock -period 15 -name nand_ch2_dqs_as_clk [get_ports nand_if_2_nand_dqs_p]
set_clock_uncertainty 0.600 [get_clocks nand_ch2_dqs_as_clk]
set_clock_latency -source 0.000 [get_clocks nand_ch2_dqs_as_clk]
set_multicycle_path -setup -end -rise_from [get_clocks nand_ch2_virt_clk] -rise_to [get_clocks nand_ch2_dqs_as_clk] 0
set_multicycle_path -setup -end -fall_from [get_clocks nand_ch2_virt_clk] -fall_to [get_clocks nand_ch2_dqs_as_clk] 0
set_false_path -setup -fall_from [get_clocks nand_ch2_virt_clk] -rise_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -setup -rise_from [get_clocks nand_ch2_virt_clk] -fall_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -hold -rise_from [get_clocks nand_ch2_virt_clk] -rise_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -hold -fall_from [get_clocks nand_ch2_virt_clk] -fall_to [get_clocks nand_ch2_dqs_as_clk]
set_input_delay -clock [get_clocks nand_ch2_virt_clk] -max 0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch2_virt_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch2_virt_clk] -min -add_delay -0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch2_virt_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch2_dqs_as_clk] -max 0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch2_dqs_as_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch2_dqs_as_clk] -min -add_delay -0.900 [get_ports {nand_if_2_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch2_dqs_as_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_2_nand_dq[*]}]
create_generated_clock -name nand_ch2_weo_clk -source [get_pins sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Output/Inst_WEOSERDES/OQ] -edges {1 3 5} -add -master_clock pll_bank12_nand_phy_clk [get_ports nand_if_2_nand_we]
set_output_delay -clock [get_clocks nand_ch2_weo_clk] 1.300 [get_ports {nand_if_2_nand_ce[*]}]
set_output_delay -clock [get_clocks nand_ch2_weo_clk] 1.300 [get_ports nand_if_2_nand_ale]
set_output_delay -clock [get_clocks nand_ch2_weo_clk] 1.300 [get_ports nand_if_2_nand_cle]
set_output_delay -clock [get_clocks nand_ch2_weo_clk] 1.300 [get_ports {nand_if_2_nand_dq[*]}]
#set_multicycle_path -setup -end -rise_from [get_clocks nand_ch2_weo_clk] -rise_to [get_clocks pll_bank12_nand_phy_clk] 0
#set_multicycle_path -setup -end -fall_from [get_clocks nand_ch2_weo_clk] -fall_to [get_clocks pll_bank12_nand_phy_clk] 0
set_false_path -setup -fall_from pll_bank12_nand_phy_clk -rise_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -setup -fall_from pll_bank12_nand_phy_clk -fall_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -hold -fall_from pll_bank12_nand_phy_clk -rise_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -hold -fall_from pll_bank12_nand_phy_clk -fall_to [get_clocks nand_ch2_dqs_as_clk]
set_false_path -setup -fall_from pll_bank12_nand_phy_clk -rise_to [get_clocks nand_ch2_weo_clk]
set_false_path -setup -fall_from pll_bank12_nand_phy_clk -fall_to [get_clocks nand_ch2_weo_clk]
set_false_path -hold -fall_from pll_bank12_nand_phy_clk -rise_to [get_clocks nand_ch2_weo_clk]
set_false_path -hold -fall_from pll_bank12_nand_phy_clk -fall_to [get_clocks nand_ch2_weo_clk]
set_property IODELAY_GROUP BANK_2_IODELAY_GROUP [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property IODELAY_GROUP BANK_2_IODELAY_GROUP [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property BEL CONTROL [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property LOC BITSLICE_CONTROL_X0Y36 [get_cells sys_top_i/v2nfc_2/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
create_pblock CH2PBLK
add_cells_to_pblock [get_pblocks CH2PBLK] [get_cells -quiet [list sys_top_i/v2nfc_2 sys_top_i/bch_sccs_256B_21B_13b_2 sys_top_i/pll_bank12 sys_top_i/pll_bank12_psr]]
resize_pblock [get_pblocks CH2PBLK] -add {CLOCKREGION_X2Y4:CLOCKREGION_X2Y4}
create_pblock CH2PROCPBLK
add_cells_to_pblock [get_pblocks CH2PROCPBLK] [get_cells -quiet [list sys_top_i/t4nfc_hlper_2]]
resize_pblock [get_pblocks CH2PROCPBLK] -add {CLOCKREGION_X1Y4:CLOCKREGION_X3Y4}

#set_property BEL IN_FIFO [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
#set_property LOC IN_FIFO_X0Y19 [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQINFIFO4x4]
create_clock -period 15 -name nand_ch3_virt_clk
create_clock -period 15 -name nand_ch3_dqs_as_clk [get_ports nand_if_3_nand_dqs_p]
set_clock_uncertainty 0.600 [get_clocks nand_ch3_dqs_as_clk]
set_clock_latency -source 0.000 [get_clocks nand_ch3_dqs_as_clk]
set_multicycle_path -setup -end -rise_from [get_clocks nand_ch3_virt_clk] -rise_to [get_clocks nand_ch3_dqs_as_clk] 0
set_multicycle_path -setup -end -fall_from [get_clocks nand_ch3_virt_clk] -fall_to [get_clocks nand_ch3_dqs_as_clk] 0
set_false_path -setup -fall_from [get_clocks nand_ch3_virt_clk] -rise_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -setup -rise_from [get_clocks nand_ch3_virt_clk] -fall_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -hold -rise_from [get_clocks nand_ch3_virt_clk] -rise_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -hold -fall_from [get_clocks nand_ch3_virt_clk] -fall_to [get_clocks nand_ch3_dqs_as_clk]
set_input_delay -clock [get_clocks nand_ch3_virt_clk] -max 0.850 [get_ports {nand_if_3_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch3_virt_clk] -clock_fall -max -add_delay 0.850 [get_ports {nand_if_3_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch3_virt_clk] -min -add_delay -0.900 [get_ports {nand_if_3_nand_dq[*]}]
set_input_delay -clock [get_clocks nand_ch3_virt_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_3_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch3_dqs_as_clk] -max 0.900 [get_ports {nand_if_3_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch3_dqs_as_clk] -clock_fall -max -add_delay 0.900 [get_ports {nand_if_3_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch3_dqs_as_clk] -min -add_delay -0.900 [get_ports {nand_if_3_nand_dq[*]}]
set_output_delay -clock [get_clocks nand_ch3_dqs_as_clk] -clock_fall -min -add_delay -0.900 [get_ports {nand_if_3_nand_dq[*]}]
create_generated_clock -name nand_ch3_weo_clk -source [get_pins sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Output/Inst_WEOSERDES/OQ] -edges {1 3 5} -add -master_clock pll_bank13_nand_phy_clk [get_ports nand_if_3_nand_we]
set_output_delay -clock [get_clocks nand_ch3_weo_clk] 1.300 [get_ports {nand_if_3_nand_ce[*]}]
set_output_delay -clock [get_clocks nand_ch3_weo_clk] 1.300 [get_ports nand_if_3_nand_ale]
set_output_delay -clock [get_clocks nand_ch3_weo_clk] 1.300 [get_ports nand_if_3_nand_cle]
set_output_delay -clock [get_clocks nand_ch3_weo_clk] 1.300 [get_ports {nand_if_3_nand_dq[*]}]
#set_multicycle_path -setup -end -rise_from [get_clocks nand_ch3_weo_clk] -rise_to [get_clocks pll_bank13_nand_phy_clk] 0
#set_multicycle_path -setup -end -fall_from [get_clocks nand_ch3_weo_clk] -fall_to [get_clocks pll_bank13_nand_phy_clk] 0
set_false_path -setup -fall_from pll_bank13_nand_phy_clk -rise_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -setup -fall_from pll_bank13_nand_phy_clk -fall_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -hold -fall_from pll_bank13_nand_phy_clk -rise_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -hold -fall_from pll_bank13_nand_phy_clk -fall_to [get_clocks nand_ch3_dqs_as_clk]
set_false_path -setup -fall_from pll_bank13_nand_phy_clk -rise_to [get_clocks nand_ch3_weo_clk]
set_false_path -setup -fall_from pll_bank13_nand_phy_clk -fall_to [get_clocks nand_ch3_weo_clk]
set_false_path -hold -fall_from pll_bank13_nand_phy_clk -rise_to [get_clocks nand_ch3_weo_clk]
set_false_path -hold -fall_from pll_bank13_nand_phy_clk -fall_to [get_clocks nand_ch3_weo_clk]
set_property IODELAY_GROUP BANK_3_IODELAY_GROUP [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property IODELAY_GROUP BANK_3_IODELAY_GROUP [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAY]
set_property BEL CONTROL [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
set_property LOC BITSLICE_CONTROL_X0Y52 [get_cells sys_top_i/v2nfc_3/inst/Inst_NPhy_Toggle_Top/Inst_NPhy_Toggle_Physical_Input/Inst_DQSIDELAYCTRL]
create_pblock CH3PBLK
add_cells_to_pblock [get_pblocks CH3PBLK] [get_cells -quiet [list sys_top_i/v2nfc_3 sys_top_i/bch_sccs_256B_21B_13b_3 sys_top_i/pll_bank13 sys_top_i/pll_bank13_psr]]
resize_pblock [get_pblocks CH3PBLK] -add {CLOCKREGION_X2Y6:CLOCKREGION_X2Y6}
create_pblock CH3PROCPBLK
add_cells_to_pblock [get_pblocks CH3PROCPBLK] [get_cells -quiet [list sys_top_i/t4nfc_hlper_3]]
resize_pblock [get_pblocks CH3PROCPBLK] -add {CLOCKREGION_X1Y6:CLOCKREGION_X3Y6}