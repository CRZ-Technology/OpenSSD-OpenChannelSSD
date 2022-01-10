//-----------------------------------------------------------------------------
//
// (c) Copyright 2012-2012 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
//-----------------------------------------------------------------------------
//
// Project    : UltraScale+ FPGA PCI Express v4.0 Integrated Block
// File       : design_1_xdma_0_0_pcie4_ip_gt_eyescanreset_drp.v
// Version    : 1.3 
//-----------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
//  Design :  PHY Wrapper 
//  Module :  EYE SCAN RESET GT DRP 
//--------------------------------------------------------------------------------------------------

`timescale 1ps / 1ps


(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_xdma_0_0_pcie4_ip_gt_eyescanreset_drp #
(
      parameter SYNC_STAGE       = 3
)
(
  input wire          EYESCANRESET_PCLK,
  input wire          EYESCANRESET_PCLK_RESET_N,
  input wire          EYESCANRESET_DRPCLK,
  input wire          [1:0] EYESCANRESET_RXRATE,
  input wire          EYESCANRESET_RESET,
  
  input wire          EYESCANRESET_EYESCANRESET,
  
  input wire          EYESCANRESET_PLL_SELECTION,
  input wire          EYESCANRESET_RXRESETDONE,
  input wire          EYESCANRESET_RXRATEDONE,
  
  output wire         EYESCANRESET_GT,
  output wire         EYESCANRESET_RXRATEMODE,
  output wire [1:0]   EYESCANRESET_RATEOUT,
  
  input       [15:0]  EYESCANRESET_DRP_DO,
  input               EYESCANRESET_DRP_RDY,
  
  output reg     [9:0]   EYESCANRESET_DRP_ADDR,
  output reg             EYESCANRESET_DRP_EN,
  output reg     [15:0]  EYESCANRESET_DRP_DI,
  output reg             EYESCANRESET_DRP_WE
);

  wire eyescanreset_sync;
  wire reset_in_sync;
  wire rxresetdone_sync; 
  wire eyescanreset_pll_sel;
  wire eyescanreset_occurred_pclk; 
  
  reg [6:0] drp_state = 7'd1;
  wire drp_done;
  (*DONT_TOUCH = "TRUE"*) reg [9:0] daddr = 10'd0;
  reg [15:0] di = 16'd0;
  wire [15:0] dout;
  reg den = 1'b0;
  reg dwe = 1'b0;
  reg wr = 1'b0;
  reg rd = 1'b0;
  reg [15:0] di_msk;
  (*DONT_TOUCH = "TRUE"*) reg [15:0] mask;
  reg [7:0] eyescanreset_state = 8'd0;
  reg [1:0] eyescanreset_sync_r;
  reg [1:0] rxratedone_pclk_r;
  reg       rate_change;
  wire      rate_change_a; 
  reg [7:0] rate_change_extend = 8'd0;
  reg rate_change_extend_pclk;  
  wire drdy;
  reg [2:0] current_div_value;
  reg [1:0] rxresetdone_sync_r;
  reg rxratemode;
  
  reg         [ 1:0]                  rate_r;     
  reg         [ 1:0]                  rate_r2;  
  reg                                 eyescanreset_occurred;
  reg [1:0] new_rate = 2'b00;
  reg [1:0] old_rate = 2'b00;  
  reg [2:0] pclk_fsm = 2'd0; 
  reg [1:0] rateout = 2'b00;
  reg eyescanreset_occured_sticky = 1'b0; 

  design_1_xdma_0_0_pcie4_ip_sync #(.WIDTH (1), .STAGE (SYNC_STAGE)) sync_reset           (.CLK (EYESCANRESET_DRPCLK), .D (EYESCANRESET_RESET),         .Q (reset_in_sync));
  design_1_xdma_0_0_pcie4_ip_sync #(.WIDTH (1), .STAGE (SYNC_STAGE)) sync_eyescanreset    (.CLK (EYESCANRESET_DRPCLK), .D (EYESCANRESET_EYESCANRESET),  .Q (eyescanreset_sync));
  design_1_xdma_0_0_pcie4_ip_sync #(.WIDTH (1), .STAGE (SYNC_STAGE)) sync_eyescan_pll_sel (.CLK (EYESCANRESET_DRPCLK), .D (EYESCANRESET_PLL_SELECTION), .Q (eyescanreset_pll_sel));  
  design_1_xdma_0_0_pcie4_ip_sync #(.WIDTH (1), .STAGE (SYNC_STAGE)) sync_rxresetdone     (.CLK (EYESCANRESET_DRPCLK), .D (EYESCANRESET_RXRESETDONE),   .Q (rxresetdone_sync));

  localparam [9:0]  ADDR_RXOUT_DIV = 10'h063;
  localparam [9:0]  ADDR_CURRENT_DIVIDER = 10'h203;

  //DRP FSM
  localparam DRP_WAIT      = 0;
  localparam DRP_READ      = 1;
  localparam DRP_READ_ACK  = 2;
  localparam DRP_MODIFY    = 3;
  localparam DRP_WRITE     = 4;
  localparam DRP_WRITE_ACK = 5;
  localparam DRP_DONE      = 6;

  //Main FSM 
  localparam RESET                 = 0;
  localparam RESTORE_OUTDIV_GEN1   = 1;
  localparam IDLE                  = 2;
  localparam READ_CURRENT_DIVIDER  = 3;
  localparam WRITE_OUTDIV          = 4;
  localparam PULSE_EYESCANRESET    = 5;
  localparam RXRESETDONE           = 6;
  localparam DETECT_RATE_CHANGE    = 7;
  
  //PCLK FSM
  localparam PCLK_FSM_IDLE = 2'd0;
  localparam PCLK_FSM_CHECK_EYESCAN_OCCURED = 2'd1;
  localparam PCLK_FSM_WAIT_RXRESETDONE = 2'd2;
  localparam PCLK_FSM_OUTPUT_RATE = 2'd3;
  always @ (posedge EYESCANRESET_DRPCLK) 
  begin
    if (!reset_in_sync) begin
      eyescanreset_sync_r <= 2'd0;
      rxresetdone_sync_r <= 2'd0; 
    end 
    else begin 
      eyescanreset_sync_r <= {eyescanreset_sync_r[0], eyescanreset_sync}; 
      rxresetdone_sync_r <= {rxresetdone_sync_r[0], rxresetdone_sync}; 
    end
  end
  
    always @ (posedge EYESCANRESET_PCLK) 
    begin
      if (!EYESCANRESET_PCLK_RESET_N) begin
        rxratedone_pclk_r <= 2'd0; 
      end 
      else begin 
        rxratedone_pclk_r <= {rxratedone_pclk_r[0], EYESCANRESET_RXRATEDONE}; 
      end
    end 
    always @(posedge EYESCANRESET_PCLK)
    begin
      if (!EYESCANRESET_PCLK_RESET_N) begin
        rate_r <= 2'd0;
        rate_r2 <= 2'd0;
        rate_change <= 1'b0;
        rate_change_extend_pclk <= 1'd0;
        rate_change_extend <= 7'd0;
        old_rate <= 2'd0; 
        new_rate <= 2'd0;
      end
      else begin
        rate_r <= EYESCANRESET_RXRATE;
        rate_r2 <= rate_r;

        if (rate_r2 != rate_r) begin
          rate_change <= 1'b1;
          old_rate <= rate_r2; 
          new_rate <= rate_r;
        end
        else begin
          rate_change <= 1'b0;
        end 
          
        rate_change_extend <= {rate_change_extend[6:0],rate_change};
        rate_change_extend_pclk <= |rate_change_extend;    

      end  
    end
    
   always @(posedge EYESCANRESET_PCLK) begin 
      if (rxratedone_pclk_r[0])
        eyescanreset_occured_sticky <= 1'b0; 
      else if (eyescanreset_occurred_pclk)
        eyescanreset_occured_sticky <= 1'b1;
      else 
        eyescanreset_occured_sticky <= eyescanreset_occured_sticky;
    end
    
    always @(posedge EYESCANRESET_PCLK)
    begin 
      if (!EYESCANRESET_PCLK_RESET_N) begin 
        pclk_fsm <= PCLK_FSM_IDLE; 
        rateout <= 2'b00; 
      end 
      else begin 
        case (pclk_fsm)
        
        PCLK_FSM_IDLE: 
        begin
          rateout <= rateout;
          if (rate_change)
            pclk_fsm <= PCLK_FSM_CHECK_EYESCAN_OCCURED;
          else 
            pclk_fsm <= PCLK_FSM_IDLE;
        end 
        
        PCLK_FSM_CHECK_EYESCAN_OCCURED: 
        begin
          rateout <= rateout;
          if (eyescanreset_occured_sticky && (((new_rate == 2'b11) && (old_rate == 2'b10)) || ((new_rate == 2'b10) && (old_rate == 2'b11)) || ((new_rate == 2'b00) && (old_rate == 2'b01)))) 
            pclk_fsm <= PCLK_FSM_WAIT_RXRESETDONE;
          else
            pclk_fsm <= PCLK_FSM_OUTPUT_RATE;
        end 
        
        PCLK_FSM_WAIT_RXRESETDONE: 
        begin
          rateout <= rateout;
          if (!rxratedone_pclk_r[1]&rxratedone_pclk_r[0])
            pclk_fsm <= PCLK_FSM_OUTPUT_RATE;
          else 
            pclk_fsm <= PCLK_FSM_WAIT_RXRESETDONE;
        end 
        
        PCLK_FSM_OUTPUT_RATE: 
        begin 
          rateout <= new_rate; 
          pclk_fsm <= PCLK_FSM_IDLE; 
        end 
        
        endcase
      end 
    end
    
    design_1_xdma_0_0_pcie4_ip_sync #(.WIDTH (1), .STAGE (SYNC_STAGE)) sync_rate_change    (.CLK (EYESCANRESET_DRPCLK), .D (rate_change_extend_pclk), .Q (rate_change_a));  
    design_1_xdma_0_0_pcie4_ip_sync #(.WIDTH (1), .STAGE (SYNC_STAGE)) sync_eyescanreset_occurred    (.CLK (EYESCANRESET_PCLK), .D (eyescanreset_occurred), .Q (eyescanreset_occurred_pclk));      
  
  always @(posedge EYESCANRESET_DRPCLK) begin
      if (!reset_in_sync) begin
        eyescanreset_state <= 8'd0; 
        eyescanreset_state[RESET] <= 1'b1;
        wr <= 0; 
        rd <= 0; 
        current_div_value <= 0; 
        rxratemode <= 0; 
        eyescanreset_occurred <= 0;
      end else begin
         eyescanreset_state <= 0;
         case(1'b1) // synthesis parallel_case full_case
             eyescanreset_state[RESET]:
             begin
              eyescanreset_state[RESTORE_OUTDIV_GEN1] <= 1'b1;
              rxratemode <= 0; 
              eyescanreset_occurred <= 0; 
             end
             
             eyescanreset_state[RESTORE_OUTDIV_GEN1]:
             begin
              rxratemode <= 0;
              eyescanreset_occurred <= eyescanreset_occurred;
               wr <= 1'b1;
               if (drp_done) begin
                 wr <= 1'b0;
                 eyescanreset_state[IDLE] <= 1'b1;
               end
               else begin
                 eyescanreset_state[RESTORE_OUTDIV_GEN1] <= 1'b1;
               end
               di_msk <= {1'b1,1'b1,9'b000000110,2'b00,eyescanreset_pll_sel?3'b001:3'b010};
             end
          
             eyescanreset_state[IDLE]:
             begin
              rxratemode <= 0; 
              eyescanreset_occurred <= 0;
              if (!eyescanreset_sync_r[1]&&eyescanreset_sync_r[0])
                eyescanreset_state[READ_CURRENT_DIVIDER] <= 1'b1;
              else 
                eyescanreset_state[IDLE] <= 1'b1;
             end
            eyescanreset_state[READ_CURRENT_DIVIDER]: 
            begin
               rxratemode <= 1'b1; 
               eyescanreset_occurred <= 1'b0;
               rd <= 1'b1;
               if (drp_done) begin
                 rd <= 1'b0;
                 current_div_value <= dout[8:6];
                 eyescanreset_state[WRITE_OUTDIV] <= 1'b1;
               end
               else begin
                 eyescanreset_state[READ_CURRENT_DIVIDER] <= 1'b1;
               end
            end
              
             eyescanreset_state[WRITE_OUTDIV]:
             begin 
              rxratemode <= 1'b1;
              eyescanreset_occurred <= 1'b0;
               wr <= 1'b1; 
               if (drp_done) begin
                 wr <= 1'b0;
                 eyescanreset_state[PULSE_EYESCANRESET] <= 1'b1;
               end
               else begin
                 eyescanreset_state[WRITE_OUTDIV] <= 1'b1;
               end
               di_msk <= {1'b1,1'b1,9'b000000110,2'b00,current_div_value};
             end
             
             eyescanreset_state[PULSE_EYESCANRESET]:
             begin
              rxratemode <= 1'b1;
              eyescanreset_occurred <= 1'b1;
              if (eyescanreset_sync_r[0])
                eyescanreset_state[PULSE_EYESCANRESET] <= 1'b1;
              else 
                eyescanreset_state[DETECT_RATE_CHANGE] <=  1'b1; 
             end
             
             eyescanreset_state[RXRESETDONE]: 
             begin 
              rxratemode <= 1'b1;
              eyescanreset_occurred <= 1'b1;
              if (!rxresetdone_sync_r[1]&&rxresetdone_sync_r[0])
                eyescanreset_state[DETECT_RATE_CHANGE] <= 1'b1; 
              else 
                eyescanreset_state[RXRESETDONE] <= 1'b1; 
             end
             
             eyescanreset_state[DETECT_RATE_CHANGE]:
             begin
              rxratemode <= 0; 
              eyescanreset_occurred <= 1'b1; 
              if (!eyescanreset_sync_r[1]&eyescanreset_sync_r[0]) begin 
                eyescanreset_state[PULSE_EYESCANRESET] <= 1'b1;
              end 
              else if (rate_change_a) begin 
                eyescanreset_state[RESTORE_OUTDIV_GEN1] <= 1'b1;
              end else begin 
                eyescanreset_state[DETECT_RATE_CHANGE] <= 1'b1; 
              end
             end
             
         endcase 
      end
  end

   always @(posedge EYESCANRESET_DRPCLK) begin
     if      (eyescanreset_state[RESET]) begin
       daddr <= 10'h000;
       mask  <= 16'b1111_1111_1111_1111;
     end
     else if (eyescanreset_state[RESTORE_OUTDIV_GEN1] | eyescanreset_state[WRITE_OUTDIV]) begin
       daddr <= ADDR_RXOUT_DIV;
       mask  <= 16'b0000_0000_0000_0000;
     end
     else if (eyescanreset_state[READ_CURRENT_DIVIDER]) begin
       daddr <= ADDR_CURRENT_DIVIDER;
       mask  <= 16'b1111_1111_1111_1111;
     end     
     else begin 
       daddr <= 10'h000;
       mask  <= 16'b1111_1111_1111_1111;
     end
   end

  always @(posedge EYESCANRESET_DRPCLK) begin
      EYESCANRESET_DRP_ADDR     <= daddr;
      EYESCANRESET_DRP_DI       <= di;
      EYESCANRESET_DRP_EN       <= den;
      EYESCANRESET_DRP_WE       <= dwe;
  end
  
  assign drdy = EYESCANRESET_DRP_RDY;
  assign dout = EYESCANRESET_DRP_DO;
  
  always @(posedge EYESCANRESET_DRPCLK or negedge reset_in_sync) begin
    if (!reset_in_sync) begin
      den <= 1'b0;
      dwe <= 1'b0;
      di <= 16'h0000;
      drp_state <= 0;
      drp_state[DRP_WAIT] <= 1'b1;
    end
    else begin
      drp_state <= 0;
      case (1'b1) // synthesis parallel_case full_case
          drp_state[DRP_WAIT]:
          begin
            if (rd)      drp_state[DRP_READ] <= 1'b1;
            else if (wr) drp_state[DRP_MODIFY] <= 1'b1;
            else         drp_state[DRP_WAIT] <= 1'b1;
          end
          drp_state[DRP_READ]:
          begin
            den <= 1'b1;
            drp_state[DRP_READ_ACK] <= 1'b1;
          end
          drp_state[DRP_READ_ACK]:
          begin
            den <= 1'b0;
            if (drdy == 1'b1) begin
              if (rd) drp_state[DRP_DONE] <= 1'b1;
              else    drp_state[DRP_MODIFY] <= 1'b1;
            end
            else      drp_state[DRP_READ_ACK] <= 1'b1;
          end
          drp_state[DRP_MODIFY]:
          begin
            di <= di_msk;
            drp_state[DRP_WRITE] <= 1'b1;
          end
          drp_state[DRP_WRITE]:
          begin
            den <= 1'b1;
            dwe <= 1'b1;
            drp_state[DRP_WRITE_ACK] <= 1'b1;
          end
          drp_state[DRP_WRITE_ACK]:
          begin
            den <= 1'b0;
            dwe <= 1'b0;
            if (drdy == 1'b1) drp_state[DRP_DONE] <= 1'b1;
            else              drp_state[DRP_WRITE_ACK] <= 1'b1;
          end
          drp_state[DRP_DONE]:
          begin
            drp_state[DRP_WAIT] <= 1'b1;
          end
      endcase
    end
  end

  assign drp_done = drp_state[DRP_DONE];

  assign EYESCANRESET_GT = eyescanreset_state[PULSE_EYESCANRESET];
  assign EYESCANRESET_RXRATEMODE = rxratemode;
  assign EYESCANRESET_RATEOUT = rateout;
  
endmodule 
