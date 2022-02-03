`timescale 1ns/1ps

module axi4l__aligned_acc_s_if
#
(
    parameter axi4l__addr_width   = 64    ,
    parameter axi4l__data_width   = 32
)
(
    sys__clk             ,
    sys__srstn           ,
    axi4l__s_awaddr      ,
    axi4l__s_awprot      ,
    axi4l__s_awvalid     ,
    axi4l__s_awready     ,
    axi4l__s_wdata       ,
    axi4l__s_wstrb       ,
    axi4l__s_wvalid      ,
    axi4l__s_wready      ,
    axi4l__s_bresp       ,
    axi4l__s_bvalid      ,
    axi4l__s_bready      ,
    axi4l__s_araddr      ,
    axi4l__s_arprot      ,
    axi4l__s_arvalid     ,
    axi4l__s_arready     ,
    axi4l__s_rdata       ,
    axi4l__s_rresp       ,
    axi4l__s_rvalid      ,
    axi4l__s_rready      ,
    acc__waddr           ,
    acc__wdata           ,
    acc__wvalid          ,
    acc__wready          ,
    acc__raddr           ,
    acc__rdata           ,
    acc__rvalid          ,
    acc__rready
);
    
    input                                   sys__clk            ;
    input                                   sys__srstn          ;
    
    input   [axi4l__addr_width - 1:0]       axi4l__s_awaddr     ;
    input   [2:0]                           axi4l__s_awprot     ;
    input                                   axi4l__s_awvalid    ;
    output                                  axi4l__s_awready    ;
    input   [axi4l__data_width - 1:0]       axi4l__s_wdata      ;
    input   [axi4l__data_width / 8 - 1:0]   axi4l__s_wstrb      ;
    input                                   axi4l__s_wvalid     ;
    output                                  axi4l__s_wready     ;
    output  [1:0]                           axi4l__s_bresp      ;
    output                                  axi4l__s_bvalid     ;
    input                                   axi4l__s_bready     ;

    input   [axi4l__addr_width - 1:0]       axi4l__s_araddr     ;
    input   [2:0]                           axi4l__s_arprot     ;
    input                                   axi4l__s_arvalid    ;
    output                                  axi4l__s_arready    ;
    output  [axi4l__data_width - 1:0]       axi4l__s_rdata      ;
    output  [1:0]                           axi4l__s_rresp      ;
    output                                  axi4l__s_rvalid     ;
    input                                   axi4l__s_rready     ;
    
    output  [axi4l__addr_width - 1:0]       acc__waddr          ;
    output  [axi4l__data_width - 1:0]       acc__wdata          ;
    output                                  acc__wvalid         ;
    input                                   acc__wready         ;
    output  [axi4l__addr_width - 1:0]       acc__raddr          ;
    input   [axi4l__data_width - 1:0]       acc__rdata          ;
    output                                  acc__rvalid         ;
    input                                   acc__rready         ;
    
    reg     [axi4l__addr_width - 1:0]       r_reged_waddr       ;
    reg     [axi4l__data_width - 1:0]       r_reged_wdata       ;
    
    localparam state_wch_req        = 0;
    localparam state_wch_resp       = 1;
    localparam state_wch_idle       = 2;
    
    reg [state_wch_idle:0]  r_wch_cur_state     ;
    reg [state_wch_idle:0]  r_wch_next_state    ;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
        begin
            r_wch_cur_state <= 'b0;
            r_wch_cur_state[state_wch_idle] <= 1'b1;
        end
        else
            r_wch_cur_state <= r_wch_next_state;
    
    wire    w_s_wch_accept;
    assign  w_s_wch_accept = axi4l__s_awvalid && axi4l__s_wvalid;
    
    always @ (*)
    begin
        r_wch_next_state = 'b0;
        case (1'b1)
        r_wch_cur_state[state_wch_idle]:
            if (w_s_wch_accept)
                r_wch_next_state[state_wch_req] = 1'b1;
            else
                r_wch_next_state[state_wch_idle] = 1'b1;
        r_wch_cur_state[state_wch_req]:
            if (acc__wready)
                r_wch_next_state[state_wch_resp] = 1'b1;
            else
                r_wch_next_state[state_wch_req] = 1'b1;
        r_wch_cur_state[state_wch_resp]:
            if (axi4l__s_bready)
                r_wch_next_state[state_wch_idle] = 1'b1;
            else
                r_wch_next_state[state_wch_resp] = 1'b1;
        default:
            r_wch_next_state[state_wch_idle] = 1'b1;
        endcase
    end

    assign axi4l__s_awready  = (r_wch_cur_state[state_wch_idle] == 1'b1) && w_s_wch_accept;
    assign axi4l__s_wready   = (r_wch_cur_state[state_wch_idle] == 1'b1) && w_s_wch_accept;
    
    assign acc__wvalid       = (r_wch_cur_state[state_wch_req] == 1'b1);
    assign axi4l__s_bvalid   = (r_wch_cur_state[state_wch_resp] == 1'b1);
    assign axi4l__s_bresp    = 2'b00;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_reged_waddr <= 'b0;
        else
            if (axi4l__s_awvalid && axi4l__s_awready)
                r_reged_waddr <= axi4l__s_awaddr;
    
    assign acc__waddr = r_reged_waddr;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_reged_wdata <= 'b0;
        else
            if (axi4l__s_wvalid && axi4l__s_wready)
                r_reged_wdata <= axi4l__s_wdata;

    assign acc__wdata = r_reged_wdata;
    
    
    reg     [axi4l__addr_width - 1:0]        r_reged_raddr       ;
    reg     [axi4l__data_width - 1:0]        r_reged_rdata       ;
    
    localparam state_rch_req        = 0;
    localparam state_rch_resp       = 1;
    localparam state_rch_idle       = 2;
    
    reg [state_rch_idle:0]  r_rch_cur_state     ;
    reg [state_rch_idle:0]  r_rch_next_state    ;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
        begin
            r_rch_cur_state <= 'b0;
            r_rch_cur_state[state_rch_idle] <= 1'b1;
        end
        else
            r_rch_cur_state <= r_rch_next_state;
    
    always @ (*)
    begin
        r_rch_next_state = 'b0;
        case (1'b1)
        r_rch_cur_state[state_rch_idle]:
            if (axi4l__s_arvalid)
                r_rch_next_state[state_rch_req] = 1'b1;
            else
                r_rch_next_state[state_rch_idle] = 1'b1;
        r_rch_cur_state[state_rch_req]:
            if (acc__rready)
                r_rch_next_state[state_rch_resp] = 1'b1;
            else
                r_rch_next_state[state_rch_req] = 1'b1;
        r_rch_cur_state[state_rch_resp]:
            if (axi4l__s_rready)
                r_rch_next_state[state_rch_idle] = 1'b1;
            else
                r_rch_next_state[state_rch_resp] = 1'b1;
        default:
            r_rch_next_state[state_rch_idle] = 1'b1;
        endcase
    end

    assign axi4l__s_arready  = (r_rch_cur_state[state_rch_idle] == 1'b1);
    assign acc__rvalid       = (r_rch_cur_state[state_rch_req] == 1'b1);
    
    assign axi4l__s_rvalid   = (r_rch_cur_state[state_rch_resp] == 1'b1);
    assign axi4l__s_rresp    = 2'b00;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_reged_raddr <= 'b0;
        else
            if (axi4l__s_arvalid && axi4l__s_arready)
                r_reged_raddr <= axi4l__s_araddr;
    
    assign acc__raddr = r_reged_raddr;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_reged_rdata <= 'b0;
        else
            if (acc__rvalid && acc__rready)
                r_reged_rdata <= acc__rdata;

    assign axi4l__s_rdata = r_reged_rdata;
    
endmodule
