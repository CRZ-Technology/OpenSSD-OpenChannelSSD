
/*
----------------------------------------------------------------------------------
Copyright (c) 2013-2014

  Embedded and Network Computing Lab.
  Open SSD Project
  Hanyang University

All rights reserved.

----------------------------------------------------------------------------------

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

  1. Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.

  2. Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.

  3. All advertising materials mentioning features or use of this source code
     must display the following acknowledgement:
     This product includes source code developed 
     by the Embedded and Network Computing Lab. and the Open SSD Project.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

----------------------------------------------------------------------------------

http://enclab.hanyang.ac.kr/
http://www.openssd-project.org/
http://www.hanyang.ac.kr/

----------------------------------------------------------------------------------
*/


`timescale 1ns / 1ps


module pcie_hcmd_slot_mgt # ( 
	parameter P_SLOT_WIDTH				= 1024, //slot_modified
	parameter P_SLOT_TAG_WIDTH			=  10 //slot_modified
) 
(
	input									pcie_user_clk,
	input									pcie_user_rst_n,

	output									hcmd_slot_rdy,
	output	[P_SLOT_TAG_WIDTH-1:0]			hcmd_slot_tag, //slot_modified
	input									hcmd_slot_alloc_en,

	input									hcmd_slot_free_en,
	input	[P_SLOT_TAG_WIDTH-1:0]			hcmd_slot_invalid_tag //slot_modified
);


localparam	S_RESET_SEARCH_SLOT				= 6'b000001;
localparam	S_SEARCH_L1_SLOT				= 6'b000010;
localparam	S_SEARCH_L2_SLOT				= 6'b000100;
localparam	S_SEARCH_L3_SLOT				= 6'b001000;
localparam	S_GNT_VAILD_SLOT				= 6'b010000;
localparam	S_VAILD_SLOT					= 6'b100000;


    reg		[5:0]								cur_state;
    reg		[5:0]								next_state;
    
    reg		[P_SLOT_WIDTH-1:0]					r_slot_valid; //slot_modified
    reg		[P_SLOT_WIDTH-1:0]					r_slot_search_mask; //slot_modified
    reg		[P_SLOT_WIDTH-1:0]					r_slot_valid_mask; //slot_modified
    reg		[P_SLOT_TAG_WIDTH-1:0]				r_slot_tag; //slot_modified
    reg											r_slot_rdy;
    
    reg		[63:0]								r_slot_l1_valid;
    wire	[(P_SLOT_WIDTH/64)-1:0]					w_slot_l1_mask;
    wire											r_slot_l1_ok;
    
    //wire	[7:0]								w_slot_l2_valid;
    wire	[P_SLOT_WIDTH-1:0]					w_slot_l2_mask; //slot_modified
    wire										w_slot_l2_ok;
    
    reg											r_slot_free_en;
    reg		[P_SLOT_TAG_WIDTH-1:0]				r_slot_invalid_tag; //slot_modified
    reg		[P_SLOT_WIDTH-1:0]					r_slot_invalid_mask; //slot_modified
    wire	[P_SLOT_WIDTH-1:0]					w_slot_invalid_mask; //slot_modified
 	  reg 	[3:0]								r_1st_group_cnt;
 	  reg 	[3:0]								r_2nd_group_cnt;
 	  wire 	[P_SLOT_TAG_WIDTH-1:0]	            w_slot_valid2;
  	  reg 	[3:0]								r_slot_valid3;
assign hcmd_slot_rdy = r_slot_rdy;
assign hcmd_slot_tag = r_slot_tag;

assign w_slot_l1_mask = {r_slot_search_mask[892],//slot_modified 				
						r_slot_search_mask[828], 				
						r_slot_search_mask[764],						
						r_slot_search_mask[700],						
						r_slot_search_mask[636],						
						r_slot_search_mask[572],						
						r_slot_search_mask[508],						
						r_slot_search_mask[444],				
						r_slot_search_mask[380],				
						r_slot_search_mask[316],				
						r_slot_search_mask[252],				
						r_slot_search_mask[188],				
						r_slot_search_mask[124],
						r_slot_search_mask[60],
						r_slot_search_mask[1020],
						r_slot_search_mask[956]};

always @ (*)
begin
	case(w_slot_l1_mask) // synthesis parallel_case full_case //slot_modified
		16'b0000000000000001: r_slot_l1_valid <= r_slot_valid[63:0];
		16'b0000000000000010: r_slot_l1_valid <= r_slot_valid[127:64];
		16'b0000000000000100: r_slot_l1_valid <= r_slot_valid[191:128];
		16'b0000000000001000: r_slot_l1_valid <= r_slot_valid[255:192];
		16'b0000000000010000: r_slot_l1_valid <= r_slot_valid[319:256];
		16'b0000000000100000: r_slot_l1_valid <= r_slot_valid[383:320];
		16'b0000000001000000: r_slot_l1_valid <= r_slot_valid[447:384];
		16'b0000000010000000: r_slot_l1_valid <= r_slot_valid[511:448];
		16'b0000000100000000: r_slot_l1_valid <= r_slot_valid[575:512];
		16'b0000001000000000: r_slot_l1_valid <= r_slot_valid[639:576];
		16'b0000010000000000: r_slot_l1_valid <= r_slot_valid[703:640];
		16'b0000100000000000: r_slot_l1_valid <= r_slot_valid[767:704];
		16'b0001000000000000: r_slot_l1_valid <= r_slot_valid[831:768];
		16'b0010000000000000: r_slot_l1_valid <= r_slot_valid[895:832];
		16'b0100000000000000: r_slot_l1_valid <= r_slot_valid[959:896];
		16'b1000000000000000: r_slot_l1_valid <= r_slot_valid[1023:960];
	endcase
end


assign r_slot_l1_ok = (r_slot_l1_valid != 64'hFFFFFFFFFFFFFFFF);

assign w_slot_l2_mask = {r_slot_search_mask[P_SLOT_WIDTH-5:0], r_slot_search_mask[P_SLOT_WIDTH-1:P_SLOT_WIDTH-4]}; 
assign w_slot_valid2 = r_slot_valid>>(64*r_1st_group_cnt+4*r_2nd_group_cnt);
assign w_slot_l2_ok = (w_slot_valid2[3:0]!= 4'b1111);

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0)
		cur_state <= S_RESET_SEARCH_SLOT;
	else
		cur_state <= next_state;
end

always @ (*)
begin
	case(cur_state)
		S_RESET_SEARCH_SLOT: begin
			next_state <= S_SEARCH_L1_SLOT;
		end
		S_SEARCH_L1_SLOT: begin
			if(r_slot_l1_ok == 1)
				next_state <= S_SEARCH_L2_SLOT;
			else
				next_state <= S_SEARCH_L1_SLOT;
		end
		S_SEARCH_L2_SLOT: begin
			if(w_slot_l2_ok == 1)
				next_state <= S_SEARCH_L3_SLOT;
			else
				next_state <= S_SEARCH_L2_SLOT;
		end
		S_SEARCH_L3_SLOT: begin
				next_state <= S_GNT_VAILD_SLOT;
		end
		S_GNT_VAILD_SLOT: begin
			if(hcmd_slot_alloc_en == 1)
				next_state <= S_VAILD_SLOT;
			else
				next_state <= S_GNT_VAILD_SLOT;
		end
		S_VAILD_SLOT: begin
			next_state <= S_RESET_SEARCH_SLOT;
		end
		default: begin
			next_state <= S_RESET_SEARCH_SLOT;
		end
	endcase
end

always @ (posedge pcie_user_clk)
begin
	case(cur_state)
		S_RESET_SEARCH_SLOT: begin //slot_modified
			r_slot_search_mask[1023:957] <= 0;
			r_slot_search_mask[956] <= 1'b1;
			r_slot_search_mask[955:0] <= 0;
			r_slot_tag <= 10'h3BC;
			r_1st_group_cnt <= 4'hF;
			r_2nd_group_cnt <= 4'h0;
		end
		S_SEARCH_L1_SLOT: begin
			r_slot_search_mask[956] <= w_slot_l1_mask[15];
			r_slot_search_mask[892] <= w_slot_l1_mask[14];
			r_slot_search_mask[828] <= w_slot_l1_mask[13];
			r_slot_search_mask[764] <= w_slot_l1_mask[12];
			r_slot_search_mask[700] <= w_slot_l1_mask[11];
			r_slot_search_mask[636] <= w_slot_l1_mask[10];
			r_slot_search_mask[572] <= w_slot_l1_mask[9];
			r_slot_search_mask[508] <= w_slot_l1_mask[8];
			r_slot_search_mask[444] <= w_slot_l1_mask[7];
			r_slot_search_mask[380] <= w_slot_l1_mask[6];
			r_slot_search_mask[316] <= w_slot_l1_mask[5];
			r_slot_search_mask[252] <= w_slot_l1_mask[4];
			r_slot_search_mask[188] <= w_slot_l1_mask[3];
			r_slot_search_mask[124] <= w_slot_l1_mask[2];
			r_slot_search_mask[60] <= w_slot_l1_mask[1];
			r_slot_search_mask[1020] <= w_slot_l1_mask[0];
			r_slot_tag <= r_slot_tag + 64;
			r_1st_group_cnt <= r_1st_group_cnt +1;
		end
		S_SEARCH_L2_SLOT: begin
			r_slot_search_mask <= w_slot_l2_mask;
			r_slot_tag <= r_slot_tag + 4;
			r_2nd_group_cnt <= r_2nd_group_cnt +1;
			r_slot_valid3 <= w_slot_valid2[3:0];
		end
		S_SEARCH_L3_SLOT: begin
			if(r_slot_valid3[0] == 0) begin
					r_slot_tag <= r_slot_tag;
					end
			else if(r_slot_valid3[1] == 0)begin
					r_slot_tag <= r_slot_tag + 1;
					r_slot_search_mask <= r_slot_search_mask <<1;
					end
			else if(r_slot_valid3[2] == 0) begin
					r_slot_tag <= r_slot_tag + 2;
					r_slot_search_mask <= r_slot_search_mask <<2;
					end
			else if(r_slot_valid3[3] == 0) begin
					r_slot_tag <= r_slot_tag + 3;
					r_slot_search_mask <= r_slot_search_mask <<3;
					end
			else begin
					r_slot_tag <= r_slot_tag;
					end
		end
		S_GNT_VAILD_SLOT: begin

		end
		S_VAILD_SLOT: begin

		end
		default: begin

		end
	endcase
end

always @ (posedge pcie_user_clk or negedge pcie_user_rst_n)
begin
	if(pcie_user_rst_n == 0) begin
		r_slot_valid <= 0;
	end
	else begin
		r_slot_valid <= (r_slot_valid | r_slot_valid_mask) & r_slot_invalid_mask;
		//r_slot_valid <= (r_slot_valid | r_slot_valid_mask);
	end
end

always @ (*)
begin
	case(cur_state)
		S_RESET_SEARCH_SLOT: begin
			r_slot_rdy <= 0;
			r_slot_valid_mask <= 0;
		end
		S_SEARCH_L1_SLOT: begin
			r_slot_rdy <= 0;
			r_slot_valid_mask <= 0;
		end
		S_SEARCH_L2_SLOT: begin
			r_slot_rdy <= 0;
			r_slot_valid_mask <= 0;
		end
		S_SEARCH_L3_SLOT: begin
			r_slot_rdy <= 0;
			r_slot_valid_mask <= 0;
		end
		S_GNT_VAILD_SLOT: begin
			r_slot_rdy <= 1;
			r_slot_valid_mask <= 0;
		end
		S_VAILD_SLOT: begin
			r_slot_rdy <= 0;
			r_slot_valid_mask <= r_slot_search_mask;
		end
		default: begin
			r_slot_rdy <= 0;
			r_slot_valid_mask <= 0;
		end
	endcase
end


always @ (posedge pcie_user_clk)
begin
	r_slot_free_en <= hcmd_slot_free_en;
	r_slot_invalid_tag <= hcmd_slot_invalid_tag;

	if(r_slot_free_en == 1)
		r_slot_invalid_mask <= w_slot_invalid_mask;
	else
		r_slot_invalid_mask <= {P_SLOT_WIDTH{1'b1}};
end

genvar i;
generate
	for(i = 0; i < P_SLOT_WIDTH ; i = i + 1)
	begin : INVALID_TAG
		assign w_slot_invalid_mask[i] = (r_slot_invalid_tag != i);
	end
endgenerate

endmodule