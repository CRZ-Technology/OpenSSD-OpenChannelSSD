##################################################################################
## pinmap_nand_ch3 for Cosmos OpenSSD
## Copyright (c) 2015 Hanyang University ENC Lab.
## Contributed by Kibin Park <kbpark@enc.hanyang.ac.kr>
##                Yong Ho Song <yhsong@enc.hanyang.ac.kr>
##
## This file is part of Cosmos OpenSSD.
##
## Cosmos OpenSSD is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3, or (at your option)
## any later version.
##
## Cosmos OpenSSD is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
## See the GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Cosmos OpenSSD; see the file COPYING.
## If not, see <http://www.gnu.org/licenses/>.
##################################################################################

##################################################################################
## Company: ENC Lab. <http://enc.hanyang.ac.kr>
## Engineer: Kibin Park <kbpark@enc.hanyang.ac.kr>
##
## Project Name: Cosmos OpenSSD
## Design Name: pinmap_nand_ch3
## File Name: pinmap_nand_ch3.xdc
##
## Version: v1.0.0
##
## Description: pinmaps for nand channel 3
##
##################################################################################

##################################################################################
## Revision History:
##
## * v1.0.0
##   - first draft
##################################################################################

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[0]}]
set_property PACKAGE_PIN J23 [get_ports {nand_if_3_nand_dq[0]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[0]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[1]}]
set_property PACKAGE_PIN J24 [get_ports {nand_if_3_nand_dq[1]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[1]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[2]}]
set_property PACKAGE_PIN H23 [get_ports {nand_if_3_nand_dq[2]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[2]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[3]}]
set_property PACKAGE_PIN G23 [get_ports {nand_if_3_nand_dq[3]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[3]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[4]}]
set_property PACKAGE_PIN F27 [get_ports {nand_if_3_nand_dq[4]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[4]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[5]}]
set_property PACKAGE_PIN F28 [get_ports {nand_if_3_nand_dq[5]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[5]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[6]}]
set_property PACKAGE_PIN E26 [get_ports {nand_if_3_nand_dq[6]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[6]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_dq[7]}]
set_property PACKAGE_PIN E27 [get_ports {nand_if_3_nand_dq[7]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_dq[7]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_dq[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[0]}]
set_property PACKAGE_PIN A27 [get_ports {nand_if_3_nand_ce[0]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[0]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[1]}]
set_property PACKAGE_PIN E24 [get_ports {nand_if_3_nand_ce[1]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[1]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[2]}]
set_property PACKAGE_PIN C28 [get_ports {nand_if_3_nand_ce[2]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[2]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[3]}]
set_property PACKAGE_PIN D26 [get_ports {nand_if_3_nand_ce[3]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[3]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[4]}]
set_property PACKAGE_PIN B28 [get_ports {nand_if_3_nand_ce[4]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[4]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[5]}]
set_property PACKAGE_PIN F24 [get_ports {nand_if_3_nand_ce[5]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[5]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[6]}]
set_property PACKAGE_PIN D28 [get_ports {nand_if_3_nand_ce[6]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[6]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_ce[7]}]
set_property PACKAGE_PIN D27 [get_ports {nand_if_3_nand_ce[7]}]
set_property SLEW SLOW [get_ports {nand_if_3_nand_ce[7]}]
set_property DRIVE 12 [get_ports {nand_if_3_nand_ce[7]}]

set_property IOSTANDARD SSTL18_I [get_ports nand_if_3_nand_cle]
set_property PACKAGE_PIN K26 [get_ports nand_if_3_nand_cle]
set_property SLEW SLOW [get_ports nand_if_3_nand_cle]
#set_property DRIVE 12 [get_ports nand_if_3_nand_cle]

set_property IOSTANDARD SSTL18_I [get_ports nand_if_3_nand_ale]
set_property PACKAGE_PIN J26 [get_ports nand_if_3_nand_ale]
set_property SLEW SLOW [get_ports nand_if_3_nand_ale]
#set_property DRIVE 12 [get_ports nand_if_3_nand_ale]

set_property IOSTANDARD SSTL18_I [get_ports nand_if_3_nand_we]
set_property PACKAGE_PIN H24 [get_ports nand_if_3_nand_we]
set_property SLEW SLOW [get_ports nand_if_3_nand_we]
#set_property DRIVE 12 [get_ports nand_if_3_nand_we]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_3_nand_re_p]
set_property SLEW SLOW [get_ports nand_if_3_nand_re_p]
#set_property DRIVE 12 [get_ports nand_if_3_nand_re_p]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_3_nand_re_n]
set_property PACKAGE_PIN F25 [get_ports nand_if_3_nand_re_p]
set_property PACKAGE_PIN E25 [get_ports nand_if_3_nand_re_n]
set_property SLEW SLOW [get_ports nand_if_3_nand_re_n]
#set_property DRIVE 12 [get_ports nand_if_3_nand_re_n]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_3_nand_dqs_p]
set_property SLEW SLOW [get_ports nand_if_3_nand_dqs_p]
#set_property DRIVE 12 [get_ports nand_if_3_nand_dqs_p]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_3_nand_dqs_n]
set_property PACKAGE_PIN H25 [get_ports nand_if_3_nand_dqs_p]
set_property PACKAGE_PIN H26 [get_ports nand_if_3_nand_dqs_n]
set_property SLEW SLOW [get_ports nand_if_3_nand_dqs_n]
#set_property DRIVE 12 [get_ports nand_if_3_nand_dqs_n]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[0]}]
set_property PACKAGE_PIN J27 [get_ports {nand_if_3_nand_rb[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[1]}]
set_property PACKAGE_PIN M23 [get_ports {nand_if_3_nand_rb[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[2]}]
set_property PACKAGE_PIN M26 [get_ports {nand_if_3_nand_rb[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[3]}]
set_property PACKAGE_PIN L23 [get_ports {nand_if_3_nand_rb[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[4]}]
set_property PACKAGE_PIN K27 [get_ports {nand_if_3_nand_rb[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[5]}]
set_property PACKAGE_PIN N23 [get_ports {nand_if_3_nand_rb[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[6]}]
set_property PACKAGE_PIN P23 [get_ports {nand_if_3_nand_rb[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_3_nand_rb[7]}]
set_property PACKAGE_PIN K24 [get_ports {nand_if_3_nand_rb[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports nand_if_3_nand_wp]
set_property PACKAGE_PIN A28 [get_ports nand_if_3_nand_wp]
set_property SLEW SLOW [get_ports nand_if_3_nand_wp]
set_property DRIVE 12 [get_ports nand_if_3_nand_wp]



