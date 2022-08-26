##################################################################################
## pinmap_nand_ch2 for Cosmos OpenSSD
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
## Design Name: pinmap_nand_ch2
## File Name: pinmap_nand_ch2.xdc
##
## Version: v1.0.0
##
## Description: pinmaps for nand channel 2
##
##################################################################################

##################################################################################
## Revision History:
##
## * v1.0.0
##   - first draft
##################################################################################

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[0]}]
set_property PACKAGE_PIN J18 [get_ports {nand_if_2_nand_dq[0]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[0]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[1]}]
set_property PACKAGE_PIN H18 [get_ports {nand_if_2_nand_dq[1]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[1]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[2]}]
set_property PACKAGE_PIN G18 [get_ports {nand_if_2_nand_dq[2]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[2]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[3]}]
set_property PACKAGE_PIN F18 [get_ports {nand_if_2_nand_dq[3]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[3]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[4]}]
set_property PACKAGE_PIN D13 [get_ports {nand_if_2_nand_dq[4]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[4]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[5]}]
set_property PACKAGE_PIN C13 [get_ports {nand_if_2_nand_dq[5]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[5]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[6]}]
set_property PACKAGE_PIN B13 [get_ports {nand_if_2_nand_dq[6]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[6]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_dq[7]}]
set_property PACKAGE_PIN A12 [get_ports {nand_if_2_nand_dq[7]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_dq[7]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_dq[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[0]}]
set_property PACKAGE_PIN C16 [get_ports {nand_if_2_nand_ce[0]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[0]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[1]}]
set_property PACKAGE_PIN B15 [get_ports {nand_if_2_nand_ce[1]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[1]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[2]}]
set_property PACKAGE_PIN E16 [get_ports {nand_if_2_nand_ce[2]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[2]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[3]}]
set_property PACKAGE_PIN C14 [get_ports {nand_if_2_nand_ce[3]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[3]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[4]}]
set_property PACKAGE_PIN D16 [get_ports {nand_if_2_nand_ce[4]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[4]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[5]}]
set_property PACKAGE_PIN C15 [get_ports {nand_if_2_nand_ce[5]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[5]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[6]}]
set_property PACKAGE_PIN A13 [get_ports {nand_if_2_nand_ce[6]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[6]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_ce[7]}]
set_property PACKAGE_PIN A14 [get_ports {nand_if_2_nand_ce[7]}]
set_property SLEW SLOW [get_ports {nand_if_2_nand_ce[7]}]
set_property DRIVE 12 [get_ports {nand_if_2_nand_ce[7]}]

set_property IOSTANDARD SSTL18_I [get_ports nand_if_2_nand_cle]
set_property PACKAGE_PIN J16 [get_ports nand_if_2_nand_cle]
set_property SLEW SLOW [get_ports nand_if_2_nand_cle]
#set_property DRIVE 12 [get_ports nand_if_2_nand_cle]

set_property IOSTANDARD SSTL18_I [get_ports nand_if_2_nand_ale]
set_property PACKAGE_PIN H16 [get_ports nand_if_2_nand_ale]
set_property SLEW SLOW [get_ports nand_if_2_nand_ale]
#set_property DRIVE 12 [get_ports nand_if_2_nand_ale]

set_property IOSTANDARD SSTL18_I [get_ports nand_if_2_nand_we]
set_property PACKAGE_PIN G16 [get_ports nand_if_2_nand_we]
set_property SLEW SLOW [get_ports nand_if_2_nand_we]
#set_property DRIVE 12 [get_ports nand_if_2_nand_we]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_2_nand_re_p]
set_property SLEW SLOW [get_ports nand_if_2_nand_re_p]
#set_property DRIVE 12 [get_ports nand_if_2_nand_re_p]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_2_nand_re_n]
set_property PACKAGE_PIN E15 [get_ports nand_if_2_nand_re_p]
set_property PACKAGE_PIN D14 [get_ports nand_if_2_nand_re_n]
set_property SLEW SLOW [get_ports nand_if_2_nand_re_n]
#set_property DRIVE 12 [get_ports nand_if_2_nand_re_n]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_2_nand_dqs_p]
set_property SLEW SLOW [get_ports nand_if_2_nand_dqs_p]
#set_property DRIVE 12 [get_ports nand_if_2_nand_dqs_p]

set_property IOSTANDARD DIFF_SSTL18_I [get_ports nand_if_2_nand_dqs_n]
set_property PACKAGE_PIN G17 [get_ports nand_if_2_nand_dqs_p]
set_property PACKAGE_PIN F17 [get_ports nand_if_2_nand_dqs_n]
set_property SLEW SLOW [get_ports nand_if_2_nand_dqs_n]
#set_property DRIVE 12 [get_ports nand_if_2_nand_dqs_n]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[0]}]
set_property PACKAGE_PIN G15 [get_ports {nand_if_2_nand_rb[0]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[1]}]
set_property PACKAGE_PIN L17 [get_ports {nand_if_2_nand_rb[1]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[2]}]
set_property PACKAGE_PIN R15 [get_ports {nand_if_2_nand_rb[2]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[3]}]
set_property PACKAGE_PIN K17 [get_ports {nand_if_2_nand_rb[3]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[4]}]
set_property PACKAGE_PIN H15 [get_ports {nand_if_2_nand_rb[4]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[5]}]
set_property PACKAGE_PIN K15 [get_ports {nand_if_2_nand_rb[5]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[6]}]
set_property PACKAGE_PIN K16 [get_ports {nand_if_2_nand_rb[6]}]

set_property IOSTANDARD LVCMOS18 [get_ports {nand_if_2_nand_rb[7]}]
set_property PACKAGE_PIN L15 [get_ports {nand_if_2_nand_rb[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports nand_if_2_nand_wp]
set_property PACKAGE_PIN B16 [get_ports nand_if_2_nand_wp]
set_property SLEW SLOW [get_ports nand_if_2_nand_wp]
set_property DRIVE 12 [get_ports nand_if_2_nand_wp]



