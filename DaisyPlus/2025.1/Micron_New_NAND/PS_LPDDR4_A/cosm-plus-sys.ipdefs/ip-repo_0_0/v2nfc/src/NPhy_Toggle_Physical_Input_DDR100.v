//////////////////////////////////////////////////////////////////////////////////
// NPhy_Toggle_Physical_Input_DDR100 for Cosmos OpenSSD
// Copyright (c) 2015 Hanyang University ENC Lab.
// Contributed by Ilyong Jung <iyjung@enc.hanyang.ac.kr>
//                Kibin Park <kbpark@enc.hanyang.ac.kr>
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
// Engineer: Ilyong Jung <iyjung@enc.hanyang.ac.kr>, Kibin Park <kbpark@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: NPhy_Toggle_Physical_Input_DDR100
// Module Name: NPhy_Toggle_Physical_Input_DDR100
// File Name: NPhy_Toggle_Physical_Input_DDR100.v
//
// Version: v1.0.0
//
// Description: NFC phy input module
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module NPhy_Toggle_Physical_Input_DDR100
#
(
    parameter IDelayValue           = 0,
    parameter DQIDelayValue         = 0,
    parameter InputClockBufferType  = 0,
    parameter BufferType            = 0,
    parameter IDelayCtrlInst        = 1,
    parameter DQIDelayInst          = 0
)
(
    iSystemClock            ,
    iDelayRefClock          ,
    iModuleReset            ,
    iBufferReset            ,
    iPI_Buff_RE             ,
    iPI_Buff_WE             ,
    iPI_Buff_OutSel         ,
    oPI_Buff_Empty          ,
    oPI_DQ                  ,
    oPI_ValidFlag           ,
    iPI_DelayTapLoad        ,
    iPI_DelayTap            ,
    oPI_DelayReady          ,
    iDQSFromNAND            ,
    iDQFromNAND             ,
    iDQSIDelayTap           ,
    iDQSIDelayTapLoad       ,
    iDQ0IDelayTap           ,
    iDQ0IDelayTapLoad       ,
    iDQ1IDelayTap           ,
    iDQ1IDelayTapLoad       ,
    iDQ2IDelayTap           ,
    iDQ2IDelayTapLoad       ,
    iDQ3IDelayTap           ,
    iDQ3IDelayTapLoad       ,
    iDQ4IDelayTap           ,
    iDQ4IDelayTapLoad       ,
    iDQ5IDelayTap           ,
    iDQ5IDelayTapLoad       ,
    iDQ6IDelayTap           ,
    iDQ6IDelayTapLoad       ,
    iDQ7IDelayTap           ,
    iDQ7IDelayTapLoad
);
    input           iSystemClock        ;
    input           iDelayRefClock      ;
    input           iModuleReset        ;
    input           iBufferReset        ;
    input           iPI_Buff_RE         ;
    input           iPI_Buff_WE         ;
    input   [2:0]   iPI_Buff_OutSel     ; // 000: IN_FIFO, 100: Nm4+Nm3, 101: Nm3+Nm2, 110: Nm2+Nm1, 111: Nm1+ZERO
    output          oPI_Buff_Empty      ;
    output  [31:0]  oPI_DQ              ; // DQ, 4 bit * 8 bit data width = 32 bit interface width
    output  [3:0]   oPI_ValidFlag       ; // { Nm1, Nm2, Nm3, Nm4 }
    input           iPI_DelayTapLoad    ;
    input   [4:0]   iPI_DelayTap        ;
    output          oPI_DelayReady      ;
    input           iDQSFromNAND        ;
    input   [7:0]   iDQFromNAND         ;
    
    input   [8:0]   iDQSIDelayTap       ;
    input   [1:0]   iDQSIDelayTapLoad   ;
    input   [8:0]   iDQ0IDelayTap       ;
    input   [1:0]   iDQ0IDelayTapLoad   ;
    input   [8:0]   iDQ1IDelayTap       ;
    input   [1:0]   iDQ1IDelayTapLoad   ;
    input   [8:0]   iDQ2IDelayTap       ;
    input   [1:0]   iDQ2IDelayTapLoad   ;
    input   [8:0]   iDQ3IDelayTap       ;
    input   [1:0]   iDQ3IDelayTapLoad   ;
    input   [8:0]   iDQ4IDelayTap       ;
    input   [1:0]   iDQ4IDelayTapLoad   ;
    input   [8:0]   iDQ5IDelayTap       ;
    input   [1:0]   iDQ5IDelayTapLoad   ;
    input   [8:0]   iDQ6IDelayTap       ;
    input   [1:0]   iDQ6IDelayTapLoad   ;
    input   [8:0]   iDQ7IDelayTap       ;
    input   [1:0]   iDQ7IDelayTapLoad   ;
    // Input Capture Clock -> delayed DQS signal with IDELAYE2
    // IDELAYE2, REFCLK: SDR 300MHz
    //           Tap resolution: 1/(32*2*300MHz) = 78.125 ps
    //           Initial Tap: 28, 78.125 ps * 28 = 2187.5 ps
    
    // Data Width (DQ): 8 bit
    
    // 1:2 DDR Deserializtion with IDDR
    // IDDR, 1:2 Desirialization
    //       C: delayed DDR 100MHz
    // IN_FIFO
    //          WRCLK: delayed SDR 100MHz RDCLK: SDR 100MHz ARRAY_MODE_4_X_4
    
    // IDELAYCTRL, Minimum Reset Pulse Width: 52 ns
    //             Reset to Ready: 3.22 us
    // IN_FIFO, Maximum Frequency (RDCLK, WRCLK): 533.05 MHz, 1.0 V, -3
    
    // Internal Wires/Regs
    
    wire    [8 * 9 - 1 :0]  wDQIDelayTaps       ;
    wire    [8 - 1 :0]      wDQIDelayTapLoads   ;
    wire    [8 - 1 :0]      wDQIDelayTapVTC     ;
    
    assign wDQIDelayTaps = {
        iDQ0IDelayTap,
        iDQ1IDelayTap,
        iDQ2IDelayTap,
        iDQ3IDelayTap,
        iDQ4IDelayTap,
        iDQ5IDelayTap,
        iDQ6IDelayTap,
        iDQ7IDelayTap
    };
    
    assign wDQIDelayTapLoads = {
        iDQ0IDelayTapLoad[0],
        iDQ1IDelayTapLoad[0],
        iDQ2IDelayTapLoad[0],
        iDQ3IDelayTapLoad[0],
        iDQ4IDelayTapLoad[0],
        iDQ5IDelayTapLoad[0],
        iDQ6IDelayTapLoad[0],
        iDQ7IDelayTapLoad[0]
    };

    assign wDQIDelayTapVTC = {
        ~iDQ0IDelayTapLoad[1],
        ~iDQ1IDelayTapLoad[1],
        ~iDQ2IDelayTapLoad[1],
        ~iDQ3IDelayTapLoad[1],
        ~iDQ4IDelayTapLoad[1],
        ~iDQ5IDelayTapLoad[1],
        ~iDQ6IDelayTapLoad[1],
        ~iDQ7IDelayTapLoad[1]
    };
    
    reg     rBufferReset        ;
    
    wire    wDelayedDQS         ;
    wire    wDelayedDQSClock    ;
    wire    wtestFULL;
    
    generate
        if (IDelayCtrlInst == 1)
        begin
            IDELAYCTRL
            Inst_DQSIDELAYCTRL
            (
                .REFCLK (iDelayRefClock     ),
                .RST    (iModuleReset       ),
                .RDY    (oPI_DelayReady     )
            );
        end
        else
        begin
            assign oPI_DelayReady = 1'b1;
        end
    endgenerate

    generate
        // InputClockBufferType
        // 0: IBUFG (default)
        // 1: IBUFG + BUFG
        // 2: BUFR
        if (InputClockBufferType == 0)
        begin
    IDELAYE3
            #
            (
//        .DELAY_TYPE         ("FIXED" ),
        .DELAY_TYPE         ("VAR_LOAD" ),
        .DELAY_SRC          ("IDATAIN"  ),
        .DELAY_VALUE        (IDelayValue),
        .DELAY_FORMAT       ("TIME"     ),
        .REFCLK_FREQUENCY   (300        ),
        .SIM_DEVICE         ("ULTRASCALE_PLUS"),
        .CASCADE            ("NONE")
    )
    Inst_DQSIDELAY
    (
        .CNTVALUEOUT    (                   ),
        .DATAOUT        (wDelayedDQS        ),
        .CLK            (iSystemClock       ),
        .CE             (0                  ),
                .CNTVALUEIN     (iDQSIDelayTap      ),
        .DATAIN         (0                  ),
        .IDATAIN        (iDQSFromNAND       ),
        .INC            (0                  ),
                .LOAD             (iDQSIDelayTapLoad[0]  ),
        .EN_VTC         (~iDQSIDelayTapLoad[1]               ),
        .RST            (iModuleReset       ),
        .CASC_RETURN    (                   ),
        .CASC_IN        (                   ),
        .CASC_OUT       (                   )
    );
            
            IBUFG
            Inst_DQSCLOCK
            (
                .I  (wDelayedDQS        ),
                .O  (wDelayedDQSClock   )
            );
        end
        else if (InputClockBufferType == 1)
        begin
    IDELAYE3
            #
            (
//        .DELAY_TYPE         ("FIXED" ),
        .DELAY_TYPE         ("VAR_LOAD" ),
        .DELAY_SRC          ("IDATAIN"  ),
        .DELAY_VALUE        (IDelayValue),
        .DELAY_FORMAT       ("TIME"     ),
        .REFCLK_FREQUENCY   (300        ),
        .SIM_DEVICE         ("ULTRASCALE_PLUS"),
        .CASCADE            ("NONE")
    )
    Inst_DQSIDELAY
    (
        .CNTVALUEOUT    (                   ),
        .DATAOUT        (wDelayedDQS        ),
        .CLK            (iSystemClock       ),
        .CE             (0                  ),
                .CNTVALUEIN     (iDQSIDelayTap      ),
        .DATAIN         (0                  ),
        .IDATAIN        (iDQSFromNAND       ),
        .INC            (0                  ),
                .LOAD             (iDQSIDelayTapLoad[0]  ),
        .EN_VTC         (~iDQSIDelayTapLoad[1]               ),
        .RST            (iModuleReset       ),
        .CASC_RETURN    (                   ),
        .CASC_IN        (                   ),
        .CASC_OUT       (                   )
    );
            
            wire wIBUFGOut;
            IBUFG
            Inst_DQSCLOCK
            (
                .I  (wDelayedDQS        ),
                .O  (wIBUFGOut          )
            );
            BUFG
            Inst_DQSCLOCK_BUFG
            (
                .I  (wIBUFGOut          ),
                .O  (wDelayedDQSClock   )
            );
        end
        else if (InputClockBufferType == 3)
        begin
    IDELAYE3
            #
            (
//        .DELAY_TYPE         ("FIXED" ),
        .DELAY_TYPE         ("VAR_LOAD" ),
        .DELAY_SRC          ("IDATAIN"  ),
        .DELAY_VALUE        (IDelayValue),
        .DELAY_FORMAT       ("TIME"     ),
        .REFCLK_FREQUENCY   (300        ),
        .SIM_DEVICE         ("ULTRASCALE_PLUS"),
        .CASCADE            ("NONE")
    )
    Inst_DQSIDELAY
    (
        .CNTVALUEOUT    (                   ),
        .DATAOUT        (wDelayedDQS        ),
        .CLK            (iSystemClock       ),
        .CE             (0                  ),
                .CNTVALUEIN     (iDQSIDelayTap      ),
        .DATAIN         (0                  ),
        .IDATAIN        (iDQSFromNAND       ),
        .INC            (0                  ),
                .LOAD             (iDQSIDelayTapLoad[0]  ),
        .EN_VTC         (~iDQSIDelayTapLoad[1]               ),
        .RST            (iModuleReset       ),
        .CASC_RETURN    (                   ),
        .CASC_IN        (                   ),
        .CASC_OUT       (                   )
    );

            BUFG
            Inst_DQSCLOCK_BUFG
            (
                .I  (wDelayedDQS       ),
                .O  (wDelayedDQSClock   )
            );
        end
        else if (InputClockBufferType == 2)
        begin
    IDELAYE3
            #
            (
//        .DELAY_TYPE         ("FIXED" ),
        .DELAY_TYPE         ("VAR_LOAD" ),
        .DELAY_SRC          ("IDATAIN"  ),
        .DELAY_VALUE        (IDelayValue),
        .DELAY_FORMAT       ("TIME"     ),
        .REFCLK_FREQUENCY   (300        ),
        .SIM_DEVICE         ("ULTRASCALE_PLUS"),
        .CASCADE            ("NONE")
    )
    Inst_DQSIDELAY
    (
        .CNTVALUEOUT    (                   ),
        .DATAOUT        (wDelayedDQS        ),
        .CLK            (iSystemClock       ),
        .CE             (0                  ),
                .CNTVALUEIN     (iDQSIDelayTap      ),
        .DATAIN         (0                  ),
        .IDATAIN        (iDQSFromNAND       ),
        .INC            (0                  ),
                .LOAD             (iDQSIDelayTapLoad[0]  ),
        .EN_VTC         (~iDQSIDelayTapLoad[1]               ),
        .RST            (iModuleReset       ),
        .CASC_RETURN    (                   ),
        .CASC_IN        (                   ),
        .CASC_OUT       (                   )
    );

            
            BUFR
            Inst_DQSCLOCK
            (
                .I  (wDelayedDQS        ),
                .O  (wDelayedDQSClock   ),
                .CE (1                  ),
                .CLR(0                  )
            );
        end
        else
        begin
        end
    endgenerate
    
    genvar c;
    
    wire    [7:0]   wDQAtRising     ;
    wire    [7:0]   wDQAtFalling    ;
    
    generate
    for (c = 0; c < 8; c = c + 1)
    begin: DQIDDRBits
        if (DQIDelayInst == 0)
        begin
        IDDRE1
            #
            (
                .DDR_CLK_EDGE   ("OPPOSITE_EDGE"    )
            //.IS_CB_INVERTED (0                  )
            //.INIT_Q1        (0                  ),
            //.INIT_Q2        (0                  ),
            //.SRTYPE         ("SYNC"             )
            )
            Inst_DQIDDR
            (
                .Q1 ( wDQAtRising[c]    ),
                .Q2 (wDQAtFalling[c]    ),
                .C  (wDelayedDQSClock   ),
            .CB (!wDelayedDQSClock  ),
                .D  (iDQFromNAND[c]     ),
                .R  (0                  )
                //.S  (0                  )
            );
        end
        else
        begin
            wire wDelayedDQ;
            IDELAYE3
            #
            (
//				.DELAY_TYPE         ("FIXED" ),
				.DELAY_TYPE         ("VAR_LOAD" ),
				.DELAY_SRC          ("IDATAIN"  ),
				.DELAY_VALUE        (DQIDelayValue),
				.DELAY_FORMAT       ("TIME"     ),
				.REFCLK_FREQUENCY   (300        ),
				.SIM_DEVICE         ("ULTRASCALE_PLUS"),
				.CASCADE            ("NONE")
            )
            Inst_DQIDELAY
            (
				.CNTVALUEOUT    (                   ),
				.DATAOUT        (wDelayedDQ         ),
				.CLK            (iSystemClock       ),
				.CE             (0                  ),
				.CNTVALUEIN     (wDQIDelayTaps[c * 9 + 8:c * 9] ),
				.DATAIN         (0                  ),
				.IDATAIN        (iDQFromNAND[c]                 ),
				.INC            (0                  ),
				.LOAD           (  wDQIDelayTapLoads[c]           ),
				.EN_VTC         (wDQIDelayTapVTC[c]               ),
				.RST            (iModuleReset       ),
				.CASC_RETURN    (                   ),
				.CASC_IN        (                   ),
				.CASC_OUT       (                   )
            );
            IDDRE1
            #
            (
                .DDR_CLK_EDGE   ("OPPOSITE_EDGE"    )
                //.INIT_Q1        (0                  ),
                //.INIT_Q2        (0                  ),
                //.SRTYPE         ("SYNC"             )
            )
            Inst_DQIDDR
            (
                .Q1 ( wDQAtRising[c]    ),
                .Q2 (wDQAtFalling[c]    ),
                .C  (wDelayedDQSClock   ),
            .CB (!wDelayedDQSClock  ),
                .D  (wDelayedDQ         ),
                .R  (0                  )
//                .S  (0                  )
            );
        end
    end
    endgenerate
    
    wire    [7:0]   wDQ0  ;
    wire    [7:0]   wDQ1  ;
    wire    [7:0]   wDQ2  ;
    wire    [7:0]   wDQ3  ;
    
    wire wBufferResetSynced;
    
    always @ (*)
        rBufferReset = wBufferResetSynced;
    
    xpm_cdc_async_rst
    #
    (
        .DEST_SYNC_FF   (2                  ),
        .INIT_SYNC_FF   (0                  ),
        .RST_ACTIVE_HIGH(1                  )
    )
    xpm_cdc_async_rst_inst
    (
        .dest_arst      (wBufferResetSynced ),
        .dest_clk       (wDelayedDQSClock   ),
        .src_arst       (iBufferReset       )
    );

    
    (* dont_touch = "true" *)
    reg rIN_FIFO_WE_Latch;

    (* dont_touch = "true" *)
    reg rIN_FIFO_WE_Latch_Feedback;
    
    /*
    wire wIN_FIFO_WE_Latch;
    wire wiPI_Buff_WE_Sync;
    xpm_cdc_single
    #
    (
        .DEST_SYNC_FF   (2                  ),
        .INIT_SYNC_FF   (0                  ),
        .SIM_ASSERT_CHK(0),
        .SRC_INPUT_REG(0)
    )
    xpm_cdc_single_inst
    (
        .dest_out       (wiPI_Buff_WE_Sync  ),
        .dest_clk       (wDelayedDQSClock   ),
        .src_clk        (iSystemClock       ),
        .src_in         (iPI_Buff_WE        )
    );*/
    
    always @ (posedge wDelayedDQSClock) begin
        if (rBufferReset) begin
            rIN_FIFO_WE_Latch <= 0;
        end else begin
            rIN_FIFO_WE_Latch <= iPI_Buff_WE;
        end
    end

    always @ (posedge iSystemClock) begin
        if (iBufferReset) begin
            rIN_FIFO_WE_Latch_Feedback <= 0;
        end else begin
            rIN_FIFO_WE_Latch_Feedback <= rIN_FIFO_WE_Latch;
        end
    end
    
    generate
        if (BufferType == 0)
        begin
    IN_FIFO_ALT_16x512
    Inst_DQINFIFO_ALT_16x512
    (
        .din    ({
                    wDQAtRising[3:0]    ,
                    wDQAtRising[7:4]    ,
                    wDQAtFalling[3:0]   ,
                    wDQAtFalling[7:4]
                }),
        .dout   ({
                    wDQ0[3:0],
                    wDQ0[7:4],
                    wDQ1[3:0],
                    wDQ1[7:4]
                }),
        
        .rd_clk (iSystemClock                   ),
        .rd_en  (iPI_Buff_RE && !oPI_Buff_Empty ), // minimum safe guard
        .empty  (oPI_Buff_Empty                 ),
        
        .wr_clk (wDelayedDQSClock               ),
        .wr_en  (rIN_FIFO_WE_Latch              ),
        .full   (wtestFULL                      ),
        
        .srst   (rBufferReset                   )
    );
        end
        else if (BufferType == 1)
        begin
            xpm_fifo_async
            #(
                .CDC_SYNC_STAGES        (3),
                .DOUT_RESET_VALUE       ("0"),
                .ECC_MODE               ("no_ecc"),
                .FIFO_MEMORY_TYPE       ("auto"),
                .FIFO_READ_LATENCY      (0),
                .FIFO_WRITE_DEPTH       (16),
                .FULL_RESET_VALUE       (0),
                .PROG_EMPTY_THRESH      (10),
                .PROG_FULL_THRESH       (10),
                .RD_DATA_COUNT_WIDTH    (1),
                .READ_DATA_WIDTH        (16),
                .READ_MODE              ("fwft"),
                .RELATED_CLOCKS         (0),
                .SIM_ASSERT_CHK         (0), 
                .USE_ADV_FEATURES       ("0000"),
                .WAKEUP_TIME            (0),
                .WRITE_DATA_WIDTH       (16),
                .WR_DATA_COUNT_WIDTH    (1)
            )
            Inst_DQINFIFO16x16
            (
                .almost_empty   (                       ),
                .almost_full    (                       ),
                .data_valid     (                       ),
                .dbiterr        (                       ),
                .dout           ({
                                    wDQ0[3:0]           ,
                                    wDQ0[7:4]           ,
                                    wDQ1[3:0]           ,
                                    wDQ1[7:4]
                                }),
                .empty          (oPI_Buff_Empty         ),
                .full           (wtestFULL              ),
                .overflow       (                       ),
                .prog_empty     (                       ),
                .prog_full      (                       ),
                .rd_data_count  (                       ),
                .rd_rst_busy    (                       ),
                .sbiterr        (                       ),
                .underflow      (                       ),
                .wr_ack         (                       ),
                .wr_data_count  (                       ),
                .wr_rst_busy    (                       ),
                .din            ({
                                    wDQAtRising[3:0]    ,
                                    wDQAtRising[7:4]    ,
                                    wDQAtFalling[3:0]   ,
                                    wDQAtFalling[7:4]
                                }),
                .injectdbiterr  (1'b0                   ),
                .injectsbiterr  (1'b0                   ),
                .rd_clk         (iSystemClock           ), 
                .rd_en          (iPI_Buff_RE            ),
                .rst            (iBufferReset           ),
                .sleep          (1'b0                   ),
                .wr_clk         (wDelayedDQSClock       ),
                .wr_en          (rIN_FIFO_WE_Latch      )
            );
        end
    endgenerate
    
    (* dont_touch = "true" *)
    reg [15:0]  rNm2_Buffer     ;
    (* dont_touch = "true" *)
    reg [15:0]  rNm3_Buffer     ;
    (* dont_touch = "true" *)
    reg [15:0]  rNm4_Buffer     ;

    (* dont_touch = "true" *)
    reg [15:0]  rIn_Counter     ;

    (* dont_touch = "true" *)
    reg [15:0]  rIn_Counter_Sync;

    wire        wNm1_ValidFlag  ;
    reg         rNm2_ValidFlag  ;
    reg         rNm3_ValidFlag  ;
    reg         rNm4_ValidFlag  ;
    
    reg [31:0]  rPI_DQ          ;
    
    assign wNm1_ValidFlag = rIN_FIFO_WE_Latch;
    
    always @ (posedge wDelayedDQSClock) begin
        if (rBufferReset) begin
            rNm2_Buffer[15:0] <= 0;
            rNm3_Buffer[15:0] <= 0;
            rNm4_Buffer[15:0] <= 0;
            
            rNm2_ValidFlag <= 0;
            rNm3_ValidFlag <= 0;
            rNm4_ValidFlag <= 0;

            rIn_Counter <= 0;
        end else begin
            rNm2_Buffer[15:0] <= { wDQAtFalling[7:0], wDQAtRising[7:0] };
            rNm3_Buffer[15:0] <= rNm2_Buffer[15:0];
            rNm4_Buffer[15:0] <= rNm3_Buffer[15:0];
            
            rNm2_ValidFlag <= wNm1_ValidFlag;
            rNm3_ValidFlag <= rNm2_ValidFlag;
            rNm4_ValidFlag <= rNm3_ValidFlag;

            rIn_Counter <= rIn_Counter + 1;
        end
    end

    always @ (posedge iSystemClock) begin
    	rIn_Counter_Sync <= rIn_Counter;
    end

    // 000: IN_FIFO, 001 ~ 011: reserved
    // 100: Nm4+Nm3, 101: Nm3+Nm2, 110: Nm2+Nm1, 111: Nm1+ZERO
    
    always @ (*) begin
        case ( iPI_Buff_OutSel[2:0] )
            3'b000: begin // 000: IN_FIFO
                rPI_DQ[ 7: 0] <= wDQ0[7:0];
                rPI_DQ[15: 8] <= wDQ1[7:0];
                rPI_DQ[23:16] <= wDQ2[7:0];
                rPI_DQ[31:24] <= wDQ3[7:0];
            end
            3'b100: begin // 100: Nm4+Nm3
                rPI_DQ[ 7: 0] <= rNm4_Buffer[ 7: 0];
                rPI_DQ[15: 8] <= rNm4_Buffer[15: 8];
                rPI_DQ[23:16] <= rNm3_Buffer[ 7: 0];
                rPI_DQ[31:24] <= rNm3_Buffer[15: 8];
            end
            3'b101: begin // 101: Nm3+Nm2
                rPI_DQ[ 7: 0] <= rNm3_Buffer[ 7: 0];
                rPI_DQ[15: 8] <= rNm3_Buffer[15: 8];
                rPI_DQ[23:16] <= rNm2_Buffer[ 7: 0];
                rPI_DQ[31:24] <= rNm2_Buffer[15: 8];
            end
            3'b110: begin // 110: Nm2+Nm1
                rPI_DQ[ 7: 0] <= rNm2_Buffer[ 7: 0];
                rPI_DQ[15: 8] <= rNm2_Buffer[15: 8];
                rPI_DQ[23:16] <= wDQAtRising[ 7: 0];
                rPI_DQ[31:24] <= wDQAtFalling[ 7: 0];
            end
            3'b111: begin // 111: Nm1+ZERO
                rPI_DQ[ 7: 0] <= wDQAtRising[ 7: 0];
                rPI_DQ[15: 8] <= wDQAtFalling[ 7: 0];
                rPI_DQ[23:16] <= 0;
                rPI_DQ[31:24] <= 0;
            end
            default: begin // 001 ~ 011: reserved
                rPI_DQ[ 7: 0] <= wDQ0[7:0];
                rPI_DQ[15: 8] <= wDQ1[7:0];
                rPI_DQ[23:16] <= wDQ2[7:0];
                rPI_DQ[31:24] <= wDQ3[7:0];
            end
        endcase
    end
    
    assign oPI_DQ[ 7: 0] = rPI_DQ[ 7: 0];
    assign oPI_DQ[15: 8] = rPI_DQ[15: 8];
    assign oPI_DQ[23:16] = rPI_DQ[23:16];
    assign oPI_DQ[31:24] = rPI_DQ[31:24];
    
    assign oPI_ValidFlag[3:0] = { wNm1_ValidFlag, rNm2_ValidFlag, rNm3_ValidFlag, rNm4_ValidFlag };
    
endmodule
