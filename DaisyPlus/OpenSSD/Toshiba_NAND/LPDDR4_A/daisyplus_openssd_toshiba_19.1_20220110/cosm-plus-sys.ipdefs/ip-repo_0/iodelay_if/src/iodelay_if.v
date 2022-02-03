`timescale 1ns/1ps

module iodelay_if
#
(
    parameter addr_width    =   32
)
(
    sys__clk            ,
    sys__srstn          ,
    ctrl__s_awaddr      ,
    ctrl__s_awprot      ,
    ctrl__s_awvalid     ,
    ctrl__s_awready     ,
    ctrl__s_wdata       ,
    ctrl__s_wstrb       ,
    ctrl__s_wvalid      ,
    ctrl__s_wready      ,
    ctrl__s_bresp       ,
    ctrl__s_bvalid      ,
    ctrl__s_bready      ,
    ctrl__s_araddr      ,
    ctrl__s_arprot      ,
    ctrl__s_arvalid     ,
    ctrl__s_arready     ,
    ctrl__s_rdata       ,
    ctrl__s_rresp       ,
    ctrl__s_rvalid      ,
    ctrl__s_rready      ,
    iodly_00__tap       ,
    iodly_00__tap_load  ,
    iodly_01__tap       ,
    iodly_01__tap_load  ,
    iodly_02__tap       ,
    iodly_02__tap_load  ,
    iodly_03__tap       ,
    iodly_03__tap_load  ,
    iodly_04__tap       ,
    iodly_04__tap_load  ,
    iodly_05__tap       ,
    iodly_05__tap_load  ,
    iodly_06__tap       ,
    iodly_06__tap_load  ,
    iodly_07__tap       ,
    iodly_07__tap_load  ,
    iodly_08__tap       ,
    iodly_08__tap_load  ,
    iodly_09__tap       ,
    iodly_09__tap_load  ,
    iodly_10__tap       ,
    iodly_10__tap_load  ,
    iodly_11__tap       ,
    iodly_11__tap_load  ,
    iodly_12__tap       ,
    iodly_12__tap_load  ,
    iodly_13__tap       ,
    iodly_13__tap_load  ,
    iodly_14__tap       ,
    iodly_14__tap_load  ,
    iodly_15__tap       ,
    iodly_15__tap_load  ,
    iodly_16__tap       ,
    iodly_16__tap_load  ,
    iodly_17__tap       ,
    iodly_17__tap_load  ,
    iodly_18__tap       ,
    iodly_18__tap_load  ,
    iodly_19__tap       ,
    iodly_19__tap_load  ,
    iodly_20__tap       ,
    iodly_20__tap_load  ,
    iodly_21__tap       ,
    iodly_21__tap_load  ,
    iodly_22__tap       ,
    iodly_22__tap_load  ,
    iodly_23__tap       ,
    iodly_23__tap_load  ,
    iodly_24__tap       ,
    iodly_24__tap_load  ,
    iodly_25__tap       ,
    iodly_25__tap_load  ,
    iodly_26__tap       ,
    iodly_26__tap_load  ,
    iodly_27__tap       ,
    iodly_27__tap_load  ,
    iodly_28__tap       ,
    iodly_28__tap_load  ,
    iodly_29__tap       ,
    iodly_29__tap_load  ,
    iodly_30__tap       ,
    iodly_30__tap_load  ,
    iodly_31__tap       ,
    iodly_31__tap_load
);
    input                                   sys__clk                        ;
    input                                   sys__srstn                      ;
    
    input   [addr_width - 1:0]              ctrl__s_awaddr                  ;
    input   [2:0]                           ctrl__s_awprot                  ;
    input                                   ctrl__s_awvalid                 ;
    output                                  ctrl__s_awready                 ;
    input   [31:0]                          ctrl__s_wdata                   ;
    input   [3:0]                           ctrl__s_wstrb                   ;
    input                                   ctrl__s_wvalid                  ;
    output                                  ctrl__s_wready                  ;
    output  [1:0]                           ctrl__s_bresp                   ;
    output                                  ctrl__s_bvalid                  ;
    input                                   ctrl__s_bready                  ;

    input   [addr_width - 1:0]              ctrl__s_araddr                  ;
    input   [2:0]                           ctrl__s_arprot                  ;
    input                                   ctrl__s_arvalid                 ;
    output                                  ctrl__s_arready                 ;
    output  [31:0]                          ctrl__s_rdata                   ;
    output  [1:0]                           ctrl__s_rresp                   ;
    output                                  ctrl__s_rvalid                  ;
    input                                   ctrl__s_rready                  ;
    
    output  [8:0]                           iodly_00__tap                   ;
    output  [1:0]                                iodly_00__tap_load              ;
    output  [8:0]                           iodly_01__tap                   ;
    output  [1:0]                                iodly_01__tap_load              ;
    output  [8:0]                           iodly_02__tap                   ;
    output  [1:0]                                iodly_02__tap_load              ;
    output  [8:0]                           iodly_03__tap                   ;
    output  [1:0]                                iodly_03__tap_load              ;
    output  [8:0]                           iodly_04__tap                   ;
    output  [1:0]                                iodly_04__tap_load              ;
    output  [8:0]                           iodly_05__tap                   ;
    output  [1:0]                                iodly_05__tap_load              ;
    output  [8:0]                           iodly_06__tap                   ;
    output  [1:0]                                iodly_06__tap_load              ;
    output  [8:0]                           iodly_07__tap                   ;
    output  [1:0]                                iodly_07__tap_load              ;
    output  [8:0]                           iodly_08__tap                   ;
    output  [1:0]                                iodly_08__tap_load              ;
    output  [8:0]                           iodly_09__tap                   ;
    output  [1:0]                                iodly_09__tap_load              ;
    output  [8:0]                           iodly_10__tap                   ;
    output  [1:0]                                iodly_10__tap_load              ;
    output  [8:0]                           iodly_11__tap                   ;
    output  [1:0]                                iodly_11__tap_load              ;
    output  [8:0]                           iodly_12__tap                   ;
    output  [1:0]                                iodly_12__tap_load              ;
    output  [8:0]                           iodly_13__tap                   ;
    output  [1:0]                                iodly_13__tap_load              ;
    output  [8:0]                           iodly_14__tap                   ;
    output  [1:0]                                iodly_14__tap_load              ;
    output  [8:0]                           iodly_15__tap                   ;
    output  [1:0]                                iodly_15__tap_load              ;
    output  [8:0]                           iodly_16__tap                   ;
    output  [1:0]                                iodly_16__tap_load              ;
    output  [8:0]                           iodly_17__tap                   ;
    output  [1:0]                                iodly_17__tap_load              ;
    output  [8:0]                           iodly_18__tap                   ;
    output  [1:0]                                iodly_18__tap_load              ;
    output  [8:0]                           iodly_19__tap                   ;
    output  [1:0]                                iodly_19__tap_load              ;
    output  [8:0]                           iodly_20__tap                   ;
    output  [1:0]                                iodly_20__tap_load              ;
    output  [8:0]                           iodly_21__tap                   ;
    output  [1:0]                                iodly_21__tap_load              ;
    output  [8:0]                           iodly_22__tap                   ;
    output  [1:0]                                iodly_22__tap_load              ;
    output  [8:0]                           iodly_23__tap                   ;
    output  [1:0]                                iodly_23__tap_load              ;
    output  [8:0]                           iodly_24__tap                   ;
    output  [1:0]                                iodly_24__tap_load              ;
    output  [8:0]                           iodly_25__tap                   ;
    output  [1:0]                                iodly_25__tap_load              ;
    output  [8:0]                           iodly_26__tap                   ;
    output  [1:0]                                iodly_26__tap_load              ;
    output  [8:0]                           iodly_27__tap                   ;
    output  [1:0]                                iodly_27__tap_load              ;
    output  [8:0]                           iodly_28__tap                   ;
    output  [1:0]                                iodly_28__tap_load              ;
    output  [8:0]                           iodly_29__tap                   ;
    output  [1:0]                                iodly_29__tap_load              ;
    output  [8:0]                           iodly_30__tap                   ;
    output  [1:0]                                iodly_30__tap_load              ;
    output  [8:0]                           iodly_31__tap                   ;
    output  [1:0]                                iodly_31__tap_load              ;
    
    reg     [1:0]                                r_iodly_load_reg                ;
    
    wire    [addr_width - 1:0]              w_acc__waddr                    ;
    wire    [31:0]                          w_acc__wdata                    ;
    wire                                    w_acc__wvalid                   ;
    wire                                    w_acc__wready                   ;
    wire    [addr_width - 1:0]              w_acc__raddr                    ;
    wire    [31:0]                          w_acc__rdata                    ;
    wire                                    w_acc__rvalid                   ;
    wire                                    w_acc__rready                   ;
    
    reg     [31:0]                          r_idelay_val_regs[0:31]         ;
    reg     [31:0]                          r_acc__rdata                    ;
    reg                                     r_acc__rready                   ;
    
    axi4l__aligned_acc_s_if
    #
    (
        .axi4l__addr_width  (addr_width         ),
        .axi4l__data_width  (32                 )
    )
    axi4l__aligned_acc_s_if_inst
    (
        .sys__clk           (sys__clk           ),
        .sys__srstn         (sys__srstn         ),
        .axi4l__s_awaddr    (ctrl__s_awaddr     ),
        .axi4l__s_awprot    (ctrl__s_awprot     ),
        .axi4l__s_awvalid   (ctrl__s_awvalid    ),
        .axi4l__s_awready   (ctrl__s_awready    ),
        .axi4l__s_wdata     (ctrl__s_wdata      ),
        .axi4l__s_wstrb     (ctrl__s_wstrb      ),
        .axi4l__s_wvalid    (ctrl__s_wvalid     ),
        .axi4l__s_wready    (ctrl__s_wready     ),
        .axi4l__s_bresp     (ctrl__s_bresp      ),
        .axi4l__s_bvalid    (ctrl__s_bvalid     ),
        .axi4l__s_bready    (ctrl__s_bready     ),
        .axi4l__s_araddr    (ctrl__s_araddr     ),
        .axi4l__s_arprot    (ctrl__s_arprot     ),
        .axi4l__s_arvalid   (ctrl__s_arvalid    ),
        .axi4l__s_arready   (ctrl__s_arready    ),
        .axi4l__s_rdata     (ctrl__s_rdata      ),
        .axi4l__s_rresp     (ctrl__s_rresp      ),
        .axi4l__s_rvalid    (ctrl__s_rvalid     ),
        .axi4l__s_rready    (ctrl__s_rready     ),
        .acc__waddr         (w_acc__waddr       ),
        .acc__wdata         (w_acc__wdata       ),
        .acc__wvalid        (w_acc__wvalid      ),
        .acc__wready        (w_acc__wready      ),
        .acc__raddr         (w_acc__raddr       ),
        .acc__rdata         (w_acc__rdata       ),
        .acc__rvalid        (w_acc__rvalid      ),
        .acc__rready        (w_acc__rready      )
    );
    
    genvar row_idx;
    generate
        for (row_idx = 0; row_idx < 32; row_idx = row_idx + 1)
        begin
            always @ (posedge sys__clk)
                if (!sys__srstn)
                    r_idelay_val_regs[row_idx][32 - 1:0]
                        <= 8'd0;
                else if (w_acc__wvalid && (w_acc__waddr[15] == 1'b1) && (w_acc__waddr[14:2] == row_idx))
                    r_idelay_val_regs[row_idx][32 - 1:0]
                        <= w_acc__wdata[32 - 1:0];
        end
    endgenerate
    
    assign w_acc__wready = 1'b1;
    
    assign w_acc__rdata = r_acc__rdata;
    assign w_acc__rready = r_acc__rready;
    
    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_acc__rdata <= 'b0;
        else
            if (w_acc__rvalid)
                if (w_acc__raddr[15] == 1'b1)
                    r_acc__rdata <= r_idelay_val_regs[w_acc__raddr[14:2]];
                else
                begin
                    case (w_acc__raddr[14:2])
                    0: r_acc__rdata <= 32'h69646c79;
                    default:
                        r_acc__rdata <= 'b0;
                    endcase
                end

    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_acc__rready <= 1'b0;
        else
            if (w_acc__rvalid)
                r_acc__rready <= 1'b1;
            else
                r_acc__rready <= 1'b0;

    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_iodly_load_reg[0] <= 1'b0;
        else
            if (w_acc__wvalid && w_acc__waddr[15] == 1'b0 && (w_acc__waddr[14:2] == 1))
                r_iodly_load_reg[0] <= 1'b1;
            else
                r_iodly_load_reg[0] <= 1'b0;

    always @ (posedge sys__clk)
        if (!sys__srstn)
            r_iodly_load_reg[1] <= 1'b0;
        else
            if (w_acc__wvalid && w_acc__waddr[15] == 1'b0 && (w_acc__waddr[14:2] == 2))
                r_iodly_load_reg[1] <= w_acc__wdata[0];

    assign iodly_00__tap = r_idelay_val_regs[0][31:0];
    assign iodly_01__tap = r_idelay_val_regs[1][31:0];
    assign iodly_02__tap = r_idelay_val_regs[2][31:0];
    assign iodly_03__tap = r_idelay_val_regs[3][31:0];
    assign iodly_04__tap = r_idelay_val_regs[4][31:0];
    assign iodly_05__tap = r_idelay_val_regs[5][31:0];
    assign iodly_06__tap = r_idelay_val_regs[6][31:0];
    assign iodly_07__tap = r_idelay_val_regs[7][31:0];
    assign iodly_08__tap = r_idelay_val_regs[8][31:0];
    assign iodly_09__tap = r_idelay_val_regs[9][31:0];
    assign iodly_10__tap = r_idelay_val_regs[10][31:0];
    assign iodly_11__tap = r_idelay_val_regs[11][31:0];
    assign iodly_12__tap = r_idelay_val_regs[12][31:0];
    assign iodly_13__tap = r_idelay_val_regs[13][31:0];
    assign iodly_14__tap = r_idelay_val_regs[14][31:0];
    assign iodly_15__tap = r_idelay_val_regs[15][31:0];
    assign iodly_16__tap = r_idelay_val_regs[16][31:0];
    assign iodly_17__tap = r_idelay_val_regs[17][15:8];
    assign iodly_18__tap = r_idelay_val_regs[18][31:0];
    assign iodly_19__tap = r_idelay_val_regs[19][31:0];
    assign iodly_20__tap = r_idelay_val_regs[20][31:0];
    assign iodly_21__tap = r_idelay_val_regs[21][31:0];
    assign iodly_22__tap = r_idelay_val_regs[22][31:0];
    assign iodly_23__tap = r_idelay_val_regs[23][31:0];
    assign iodly_24__tap = r_idelay_val_regs[24][31:0];
    assign iodly_25__tap = r_idelay_val_regs[25][31:0];
    assign iodly_26__tap = r_idelay_val_regs[26][31:0];
    assign iodly_27__tap = r_idelay_val_regs[27][31:0];
    assign iodly_28__tap = r_idelay_val_regs[28][31:0];
    assign iodly_29__tap = r_idelay_val_regs[29][31:0];
    assign iodly_30__tap = r_idelay_val_regs[30][31:0];
    assign iodly_31__tap = r_idelay_val_regs[31][31:0];
    
    assign iodly_00__tap_load = r_iodly_load_reg;
    assign iodly_01__tap_load = r_iodly_load_reg;
    assign iodly_02__tap_load = r_iodly_load_reg;
    assign iodly_03__tap_load = r_iodly_load_reg;
    assign iodly_04__tap_load = r_iodly_load_reg;
    assign iodly_05__tap_load = r_iodly_load_reg;
    assign iodly_06__tap_load = r_iodly_load_reg;
    assign iodly_07__tap_load = r_iodly_load_reg;
    assign iodly_08__tap_load = r_iodly_load_reg;
    assign iodly_09__tap_load = r_iodly_load_reg;
    assign iodly_10__tap_load = r_iodly_load_reg;
    assign iodly_11__tap_load = r_iodly_load_reg;
    assign iodly_12__tap_load = r_iodly_load_reg;
    assign iodly_13__tap_load = r_iodly_load_reg;
    assign iodly_14__tap_load = r_iodly_load_reg;
    assign iodly_15__tap_load = r_iodly_load_reg;
    assign iodly_16__tap_load = r_iodly_load_reg;
    assign iodly_17__tap_load = r_iodly_load_reg;
    assign iodly_18__tap_load = r_iodly_load_reg;
    assign iodly_19__tap_load = r_iodly_load_reg;
    assign iodly_20__tap_load = r_iodly_load_reg;
    assign iodly_21__tap_load = r_iodly_load_reg;
    assign iodly_22__tap_load = r_iodly_load_reg;
    assign iodly_23__tap_load = r_iodly_load_reg;
    assign iodly_24__tap_load = r_iodly_load_reg;
    assign iodly_25__tap_load = r_iodly_load_reg;
    assign iodly_26__tap_load = r_iodly_load_reg;
    assign iodly_27__tap_load = r_iodly_load_reg;
    assign iodly_28__tap_load = r_iodly_load_reg;
    assign iodly_29__tap_load = r_iodly_load_reg;
    assign iodly_30__tap_load = r_iodly_load_reg;
    assign iodly_31__tap_load = r_iodly_load_reg;

endmodule
