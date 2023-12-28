//////////////////////////////////////////////////////////////////////////////////
// nand_parameter.vh for Cosmos OpenSSD
// Copyright (c) 2014 Hanyang University ENC Lab.
// Contributed by Taeyeong Huh <tyhuh@enc.hanyang.ac.kr>
//                Jaehyeong Jeong <jhjeong@enc.hanyang.ac.kr>
//                Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//
// This file is part of Cosmos OpenSSD.
//
// Cosmos OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>. 
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Taeyeong Huh <tyhuh@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: nand controller
// Module Name: -
// File Name: nand_parameter.vh
//
// Version: v1.0.1
//
// Description: 
//   - global parameters for nand controller
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.1
//   - minor modification for releasing
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
//nand command set - configurable
`define PAGE_READ_1                               8'h00
`define PAGE_READ_2                               8'h30
`define MULTI_PLANE_PAGE_READ_1                   8'h60
`define MULTI_PLANE_PAGE_READ_2                   8'h60
`define MULTI_PLANE_PAGE_READ_3                   8'h30
`define MULTI_PLANE_CACHE_READ_START_1            8'h60
`define MULTI_PLANE_CACHE_READ_START_2            8'h60
`define MULTI_PLANE_CACHE_READ_START_3            8'h33
`define SINGLE_MULTI_PLANE_CACHE_READ             8'h31
`define SINGLE_MULTI_PLANE_CACHE_READ_END         8'h3f
`define RANDOM_DATA_OUTPUT_1                      8'h05
`define RANDOM_DATA_OUTPUT_2                      8'he0
`define PAGE_PROGRAM_1                            8'h80
`define PAGE_PROGRAM_2                            8'h10
`define CACHE_PROGRAM_END_1                       8'h80
`define CACHE_PROGRAM_END_2                       8'h10
`define RANDOM_DATA_INPUT                         8'h85
`define BLOCK_ERASE_1                             8'h60
`define BLOCK_ERASE_2                             8'hd0
`define READ_FOR_COPY_BACK_1                      8'h00
`define READ_FOR_COPY_BACK_2                      8'h35
`define COPY_BACK_PROGRAM_1                       8'h85
`define COPY_BACK_PROGRAM_2                       8'h10
`define CACHE_PROGRAM_START_1                     8'h80
`define CACHE_PROGRAM_START_2                     8'h15
`define READ_STATUS_REGISTER                      8'h70     //acceptable command during command
`define MULTI_PLANE_PAGE_PROGRAM_1                8'h80
`define MULTI_PLANE_PAGE_PROGRAM_2                8'h11
`define MULTI_PLANE_PAGE_PROGRAM_3                8'h81
`define MULTI_PLANE_PAGE_PROGRAM_4                8'h10
`define MULTI_PLANE_CACHE_PROGRAM_END_1           8'h80
`define MULTI_PLANE_CACHE_PROGRAM_END_2           8'h11
`define MULTI_PLANE_CACHE_PROGRAM_END_3           8'h81
`define MULTI_PLANE_CACHE_PROGRAM_END_4           8'h10
`define MULTI_PLANE_BLOCK_ERASE_1                 8'h60
`define MULTI_PLANE_BLOCK_ERASE_2                 8'h60
`define MULTI_PLANE_BLOCK_ERASE_3                 8'hd0
`define MULTI_PLANE_COPY_BACK_READ_1              8'h60
`define MULTI_PLANE_COPY_BACK_READ_2              8'h60
`define MULTI_PLANE_COPY_BACK_READ_3              8'h35
`define MULTI_PLANE_COPY_BACK_PROGRAM_1           8'h85
`define MULTI_PLANE_COPY_BACK_PROGRAM_2           8'h11
`define MULTI_PLANE_COPY_BACK_PROGRAM_3           8'h81
`define MULTI_PLANE_COPY_BACK_PROGRAM_4           8'h10
`define MULTI_PLANE_CACHE_PROGRAM_START_1         8'h80
`define MULTI_PLANE_CACHE_PROGRAM_START_2         8'h11
`define MULTI_PLANE_CACHE_PROGRAM_START_3         8'h81
`define MULTI_PLANE_CACHE_PROGRAM_START_4         8'h15
`define MULTI_PLANE_DATA_OUTPUT_1                 8'h00
`define MULTI_PLANE_DATA_OUTPUT_2                 8'h05
`define MULTI_PLANE_DATA_OUTPUT_3                 8'he0
`define MULTI_PLANE_READ_STATUS_REGISTER          8'h70 //78//acceptable command during command
`define READ_ID                                   8'h90
`define READ_ID_ADDRESS                           8'h00
`define RESET                                     8'hff     //acceptable command during command

//nand address configurable
`define COL_ADDR_1                                       i_nand_addr[7 : 0]
`define COL_ADDR_2                                {2'h0, i_nand_addr[13: 8]}
`define ROW_ADDR_1                                       i_nand_addr[21:14]
`define ROW_ADDR_2                                       i_nand_addr[29:22]
`define ROW_ADDR_3                                {4'h0, i_nand_addr[33:30]}

`define MPE_ADDR_1                                8'h0
`define MPE_ADDR_2                                {i_nand_addr[29:23], 1'h0}
`define MPE_ADDR_3                                {4'h0, i_nand_addr[33:30]}
`define MPE_ADDR_4                                8'h0
`define MPE_ADDR_5                                {i_nand_addr[29:23], 1'h1}
`define MPE_ADDR_6                                {4'h0, i_nand_addr[33:30]}

//nand flash - AC timing characteristics (time unit - nano secound) - configurable
//timing_counter = timing/clock_cyclk
//real timing    = timing/clock_cyclk + timing margin ( 1 clock cycle)
`define tADL_min                          (200)      //  (100)               //address to data loading time
`define tALS_min                          (50)     //  (12)                //ale setup time
`define tALH_min                          (20)     //  (5)                 //ale hold time
`define tAR_min                           (25)      //  (10)                //ale to re delay
`define tCH_min                           (20)      //  (5)                 //ce hold time
`define tCHZ_min                          (100)      //  (50)                //ce high to output high Z
`define tCLH_min                          (20)      //  (5)                 //cle hold time
`define tCLR_min                          (20)      //  (10)                //cle to re delay
`define tCLS_min                          (50)      //  (12)                //cle setup time
`define tCOH_min                          (0)      //  (15)                //re or ce high to output hold
`define tCR_min                           (60)      //  (10)                //ce low to re low
`define tCS_min                           (70)     //  (20)                //ce setup time
`define tDH_min                           (20)      //  (5)                 //data hold time
`define tDS_min                           (40)      //  (12)                //data setup time
`define tIR_min                           (10)      //  (0)                 //output high Z to re low
`define tRC_min                           (100)     //  (25)                //read cycle time
`define tREA_max                          (10)      //40  (20+(`CC/10))       //re access time
`define tREH_min                          (30)      //  (10)                //re high hold time
`define tRHOH_min                         (0)      //  (15)                //re high to output hold
`define tRHW_min                          (200)      //  (100)               //re high to we low
`define tRHZ_min                          (200)      //  (100)               //re high to output high Z
`define tRLOH_min                         (0)      //  (5)                 //re low to output hold
`define tRP_min                           (50)      //  (12)                //re pulse width
`define tRR_min                           (40)      //  (25)                //ready to re low
`define tWB_max                           (200)     //  (100)               //we high to busy
`define tWC_min                           (100)      //  (25)                //write cycle time
`define tWH_min                           (30)      //  (10)                //we high hold time
`define tWHR_min                          (120)      //  (80)                //we high to re low
`define tWP_min                           (50)      //  (12)                //we pulse width
`define tWW_min                           (100)      //  (100)               //write protection time
                                                                      
//      tADL                                      `tADL_min /(`CC/10) //address to data loading time
//      tALS                                      `tALS_min /(`CC/10) //ale setup time
`define tALH                                      `tALH_min /(`CC/10) //ale hold time
`define tAR                                       `tAR_min  /(`CC/10) //ale to re delay
`define tCH                                       `tCH_min  /(`CC/10) //ce hold time
`define tCHZ                                      `tCHZ_min /(`CC/10) //ce high to output high Z
`define tCLH                                      `tCLH_min /(`CC/10) //cle hold time
`define tCLR                                      `tCLR_min /(`CC/10) //cle to re delay
`define tCLS                                      `tCLS_min /(`CC/10) //cle setup time
`define tCOH                                      `tCOH_min /(`CC/10) //re or ce high to output hold
`define tCR                                       `tCR_min  /(`CC/10) //ce low to re low
//      tCS                                       `tCS_min  /(`CC/10) //ce setup time
`define tDH                                       `tDH_min  /(`CC/10) //data hold time
`define tDS                                       `tDS_min  /(`CC/10) //data setup time
`define tIR                                       `tIR_min  /(`CC/10) //output high Z to re low
`define tRC                                       `tRC_min  /(`CC/10) //read cycle time
`define tREA                                      `tREA_max /(`CC/10) //re access time
`define tREH                                      `tREH_min /(`CC/10) //re high hold time
`define tRHOH                                     `tRHOH_min/(`CC/10) //re high to output hold
`define tRHW                                      `tRHW_min /(`CC/10) //re high to we low
`define tRHZ                                      `tRHZ_min /(`CC/10) //re high to output high Z
`define tRLOH                                     `tRLOH_min/(`CC/10) //re low to output hold
`define tRP                                       `tRP_min  /(`CC/10) //re pulse width
`define tRR                                       `tRR_min  /(`CC/10) //ready to re low
`define tWB                                       `tWB_max  /(`CC/10) //we high to busy
`define tWC                                       `tWC_min  /(`CC/10) //write cycle time
`define tWH                                       `tWH_min  /(`CC/10) //we high hold time
`define tWHR                                      `tWHR_min /(`CC/10) //we high to re low
`define tWP                                       `tWP_min  /(`CC/10) //we pulse width
`define tWW                                       `tWW_min  /(`CC/10) //write protection time

//pre
`define tADL                                      (`tADL_min-`tWP_min-`tWH_min)/(`CC/10)
`define tALS                                      (`tALS_min-`tWP_min)/(`CC/10)
`define tCS                                       (`tCS_min -`tWP_min)/(`CC/10)
