//////////////////////////////////////////////////////////////////////////////////
// parameter.vh for Cosmos OpenSSD
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
// Design Name: ipif burst interface
// Module Name: -
// File Name: parameter.vh
//
// Version: v1.0.1
//
// Description: 
//   - global parameters for storage controller
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
`timescale 100ps/100ps
//clock
`define BC (100)  //bus clock cycle
`define NC (100)  //npi clock cycle (mpmc clk)
`define CC (100)  //controller clock cycle

//`define DEBUG
//`define USE_RB
//`define DOUBLE_BUFFERING
`define DISABLE_SPARE

//channel/way
`define CH1
`define WAY8
`define CLST1
`ifdef       CH4                                  `define CH 4
`else `ifdef CH2                                  `define CH 2
`else `ifdef CH1                                  `define CH 1
`endif `endif `endif
`ifdef       WAY8                                 `define WAY 8
`else `ifdef WAY4                                 `define WAY 4
`else `ifdef WAY2                                 `define WAY 2
`else `ifdef WAY1                                 `define WAY 1
`endif `endif `endif `endif
`ifdef       CLST4                                `define CLST 4 //cluster size (1  means non-clustered architecture)
`else `ifdef CLST2                                `define CLST 2
`else `ifdef CLST1                                `define CLST 1
`endif `endif `endif

//host
`define SLV_DATA_WD                               32        //slave data width
`define SLV_ADDR_WD                               32        //slave address width
`define MST_ADDR_WD                               32        //master address width
`define MST_DATA_WD                               64//32        //master data width

//nand flash - data parameter
`define DA_SIZE                                   8192      //size of data area(byte)
`define SA_SIZE                                   640//448       //size of spare area(byte)
//`define ID_BYTE                                   6         //device identifier size (byte)

//page buffer
//dma 
`define DMA_LEN                                   12        //dma length
`define DMA_UNIT                                  128//2048//1024      //data transfer size
//`define PB_SIZE                                   `DMA_UNIT+150//1024//8192//`DMA_UNIT //size of page buffer (byte)
//`define NAND_PBDEPTH                              (`PB_SIZE/(`CIO_WD/`IO_WD))
`define NAND_PBAWIDTH                             12//clogb2(`NAND_PBDEPTH)
`define DB_SIZE                                   256      //size of data buffer (byte)
`define NAND_SBDEPTH                              6

//`define TRF_CNT                                   ((`DA_SIZE*`CLST)/`DMA_UNIT)   

//register
`define CH_REG                                    0//8         //# of register in ch controller
`define WAY_REG                                   4//8         //# of register in way controller
`define NUM_REG                                   `WAY*`WAY_REG//`CH*`CH_REG+`WAY*`WAY_REG

`define RB_BIT                                    6         //ready/busy bit, status register
`define SP_PF_BIT                                 0         //pass/fail bit, status register
`define P0_PF_BIT                                 1         //plane 0, pass/fail bit, status register
`define P1_PF_BIT                                 2         //plane 1, pass/fail bit, status register

//nand flash - i/o
`define NADDR_WD                                  34        //address width
`define RA_WD                                     20        //row address width
`define CA_WD                                     14        //col address width
`define RA_PH                                     3         //# of address input phase
`define CA_PH                                     2         //# of address input phase
`define IO_WD                                     8         //nand i/o width
`define CIO_WD                                    `CLST*`IO_WD

//main mode - don't touch!!!
`define CMD_WD                                    8         //command width
`define MODE_NUM                                  8         //# of run mode
`define CMD_SP_READ                               8'h01
`define CMD_SP_PROG                               8'h02
`define CMD_SP_ERASE                              8'h03
`define CMD_SP_CPBACK                             8'h04
`define CMD_MP_READ                               8'h11
`define CMD_MP_PROG                               8'h12
`define CMD_MP_ERASE                              8'h13
`define CMD_MP_CPBACK                             8'h14
`define CMD_SP_READ_WC                            8'h21 // with cache
`define CMD_SP_PROG_WC                            8'h22 // with cache
`define CMD_MP_READ_WC                            8'h21 // with cache
`define CMD_MP_PROG_WC                            8'h22 // with cache
`define CMD_SP_STATUS                             8'hfd
`define CMD_MP_STATUS                             8'hfe
`define CMD_RESET                                 8'hff

//added by tyhuh                                       
`define CMD_MODE_CHANGE                           8'hef
`define CMD_READ_ID                               8'h90

`define PBDEPTH                                   2048+60
`define SBDEPTH                                   40
`define INIT_PBDEPTH                              4096


`define STA_REG_RI                                20        //read interval for check status (clock cycle)

//simulation
`define          C_SLV_DWIDTH         `SLV_DATA_WD
`define          C_MST_AWIDTH         `MST_ADDR_WD
`define          C_MST_DWIDTH         `MST_DATA_WD
`define          C_NUM_REG            `NUM_REG+2//`NUM_REG+4
`define          C_NUM_INTR           1
`define          RA_REG               8'h80 //W0_W1_W2_W3_CH
`define          MEM_REG              8'h40 //W0_W1_W2_W3_CH
//                                      = 8'h20; //W0_W1_W2_W3_CH
//                                      = 8'h10; //W0_W1_W2_W3_CH
//                                      = 8'h08; //W0_W1_W2_W3_CH
//                                      = 8'h04; //W0_W1_W2_W3_CH
`define          STATUS_REG           8'h02 //W0_W1_W2_W3_CH
`define          CMD_REG              8'h01 //W0_W1_W2_W3_CH
`define          CH_STATUS_REG        8'h02 //W0_W1_W2_W3_CH

