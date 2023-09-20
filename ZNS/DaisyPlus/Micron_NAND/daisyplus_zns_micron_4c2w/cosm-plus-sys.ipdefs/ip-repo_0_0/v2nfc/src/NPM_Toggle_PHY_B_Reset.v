//////////////////////////////////////////////////////////////////////////////////
// NPM_Toggle_PHY_B_Reset for Cosmos OpenSSD
// Copyright (c) 2015 Hanyang University ENC Lab.
// Contributed by Ilyong Jung <iyjung@enc.hanyang.ac.kr>
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
// Engineer: Ilyong Jung <iyjung@enc.hanyang.ac.kr>
// 
// Project Name: Cosmos OpenSSD
// Design Name: NPM_Toggle_PHY_B_Reset
// Module Name: NPM_Toggle_PHY_B_Reset
// File Name: NPM_Toggle_PHY_B_Reset.v
//
// Version: v1.0.0
//
// Description: NFC Phy reset FSM
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.0
//   - first draft
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module NPM_Toggle_PHY_B_Reset
(
    iSystemClock            ,
    iReset                  ,
    oReady                  ,
    oLastStep               ,
    iStart                  ,
    oPI_BUFF_Reset          ,
    oPI_BUFF_RE             ,
    oPI_BUFF_WE             ,
    oPO_DQStrobe            ,
    oDQSOutEnable            
);
    input                           iSystemClock            ;
    input                           iReset                  ;
    output                          oReady                  ;
    output                          oLastStep               ;
    input                           iStart                  ;
    output                          oPI_BUFF_Reset          ;
    output                          oPI_BUFF_RE             ;
    output                          oPI_BUFF_WE             ;
    output  [7:0]                   oPO_DQStrobe            ;
    output                          oDQSOutEnable           ;
    
    // FSM Parameters/Wires/Regs
    parameter PBR_FSM_BIT = 5;
    parameter PBR_RESET = 5'b00001;
    parameter PBR_READY = 5'b00010;
    parameter PBR_RFRST = 5'b00100; // reset first
    parameter PBR_RWAIT = 5'b01000; // reset loop
    parameter PBR_RLOOP = 5'b10000; // reset loop (deassert buff reset)

    
    reg     [PBR_FSM_BIT-1:0]       rPBR_cur_state          ;
    reg     [PBR_FSM_BIT-1:0]       rPBR_nxt_state          ;
    
    
    
    // Internal Wires/Regs
    reg                             rReady                  ;
    
    reg     [7:0]                   rTimer                  ;

    
    wire                            wWaitDone               ;
    wire                            wJOBDone                ;
    
    reg                             rPI_BUFF_Reset          ;
    reg                             rPI_BUFF_RE             ;
    reg                             rPI_BUFF_WE             ;
    reg     [7:0]                   rPO_DQStrobe            ;
    reg                             rDQSOutEnable           ;
    
    
    
    // Control Signals
    
    // Flow Control
    
    assign wWaitDone = (8'd12 == rTimer);
    assign wJOBDone  = (8'd64 == rTimer);
    // 1 + '7' = 8 cycles
    // there is DQS delay by OSEDESE module,
    // combination of {buffer reset, clock cycle, real DQS's cycle} will be less than design
    
    
    
    // FSM
    
    // update current state to next state
    always @ (posedge iSystemClock, posedge iReset) begin
        if (iReset) begin
            rPBR_cur_state <= PBR_RESET;
        end else begin
            rPBR_cur_state <= rPBR_nxt_state;
        end
    end
    
    // deside next state
    always @ ( * ) begin
        case (rPBR_cur_state)
            PBR_RESET: begin
                rPBR_nxt_state <= PBR_READY;
            end
            PBR_READY: begin
                rPBR_nxt_state <= (iStart)? PBR_RFRST:PBR_READY;
            end
            PBR_RFRST: begin
                rPBR_nxt_state <= PBR_RWAIT;
            end
            PBR_RWAIT: begin
                rPBR_nxt_state <= (wWaitDone)?PBR_RLOOP:PBR_RWAIT;
            end
            PBR_RLOOP: begin
                rPBR_nxt_state <= (wJOBDone)? ((iStart)? PBR_RFRST:PBR_READY):PBR_RLOOP;
            end
            default:
                rPBR_nxt_state <= PBR_READY;
        endcase
    end
    
    // state behaviour
    always @ (posedge iSystemClock, posedge iReset) begin
        if (iReset) begin
            rReady              <= 0;
            
            rTimer              <= 0;
            
            rPI_BUFF_Reset      <= 0;
            rPI_BUFF_RE         <= 0;
            rPI_BUFF_WE         <= 0;
            rPO_DQStrobe[7:0]   <= 0;
            rDQSOutEnable       <= 0;
        end else begin
            case (rPBR_nxt_state)
                PBR_RESET: begin
                    rReady              <= 0;
                    
                    rTimer              <= 0;

                    
                    rPI_BUFF_Reset      <= 0;
                    rPI_BUFF_RE         <= 0;
                    rPI_BUFF_WE         <= 0;
                    rPO_DQStrobe[7:0]   <= 0;
                    rDQSOutEnable       <= 0;
                end
                PBR_READY: begin
                    rReady              <= 1;
                    
                    rTimer              <= 0;

                    
                    rPI_BUFF_Reset      <= 0;
                    rPI_BUFF_RE         <= 0;
                    rPI_BUFF_WE         <= 0;
                    rPO_DQStrobe[7:0]   <= 0;
                    rDQSOutEnable       <= 1'b1;
                end
                PBR_RFRST: begin
                    rReady              <= 0;
                    
                    rTimer              <= 'b0;
                    
                    rPI_BUFF_Reset      <= 1'b1;
                    rPI_BUFF_RE         <= 1'b0;
                    rPI_BUFF_WE         <= 1'b0;
                    rPO_DQStrobe[7:0]   <= 8'b0011_0011;
                    rDQSOutEnable       <= 1'b1;
                end
                PBR_RWAIT: begin
                    rReady              <= 0;
                    
                    rTimer              <= rTimer      + 1'b1;

                    
                    rPI_BUFF_Reset      <= 1'b1;
                    rPI_BUFF_RE         <= 1'b0;
                    rPI_BUFF_WE         <= 1'b0;
                    rPO_DQStrobe[7:0]   <= 8'b0011_0011;
                    rDQSOutEnable       <= 1'b1;
                end
                PBR_RLOOP: begin
                    rReady              <= 0;
                    
                    rTimer              <= rTimer      + 1'b1;
                    
                    rPI_BUFF_Reset      <= 1'b0;
                    rPI_BUFF_RE         <= 1'b0;
                    rPI_BUFF_WE         <= 1'b0;
                    rPO_DQStrobe[7:0]   <= 8'b0011_0011;
                    rDQSOutEnable       <= 1'b1;
                end
            endcase
        end
    end
    
    
    
    // Output
    
    assign oReady           = rReady | wJOBDone ;
    assign oLastStep        = wJOBDone         ;
    
    assign oPI_BUFF_Reset   = rPI_BUFF_Reset    ;
    assign oPI_BUFF_RE      = rPI_BUFF_RE       ;
    assign oPI_BUFF_WE      = rPI_BUFF_WE       ;
    assign oPO_DQStrobe     = rPO_DQStrobe      ;
    assign oDQSOutEnable    = rDQSOutEnable     ;
    
endmodule
