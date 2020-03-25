// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="honeybee,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=637,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=48,HLS_SYN_FF=17318,HLS_SYN_LUT=29140,HLS_VERSION=2019_2}" *)

module honeybee (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        edge_p1_x,
        edge_p1_y,
        edge_p1_z,
        edge_p2_x,
        edge_p2_y,
        edge_p2_z,
        ap_return
);

parameter    ap_ST_fsm_state1 = 16'd1;
parameter    ap_ST_fsm_state2 = 16'd2;
parameter    ap_ST_fsm_state3 = 16'd4;
parameter    ap_ST_fsm_state4 = 16'd8;
parameter    ap_ST_fsm_state5 = 16'd16;
parameter    ap_ST_fsm_state6 = 16'd32;
parameter    ap_ST_fsm_state7 = 16'd64;
parameter    ap_ST_fsm_state8 = 16'd128;
parameter    ap_ST_fsm_state9 = 16'd256;
parameter    ap_ST_fsm_state10 = 16'd512;
parameter    ap_ST_fsm_state11 = 16'd1024;
parameter    ap_ST_fsm_state12 = 16'd2048;
parameter    ap_ST_fsm_state13 = 16'd4096;
parameter    ap_ST_fsm_state14 = 16'd8192;
parameter    ap_ST_fsm_state15 = 16'd16384;
parameter    ap_ST_fsm_state16 = 16'd32768;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] edge_p1_x;
input  [31:0] edge_p1_y;
input  [31:0] edge_p1_z;
input  [31:0] edge_p2_x;
input  [31:0] edge_p2_y;
input  [31:0] edge_p2_z;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] zext_ln73_fu_220_p1;
wire    ap_CS_fsm_state2;
wire   [2:0] k_fu_231_p2;
reg   [2:0] k_reg_453;
wire   [6:0] b_fu_237_p2;
reg   [6:0] b_reg_458;
wire    ap_CS_fsm_state7;
wire   [31:0] grp_fu_209_p1;
reg   [31:0] grid_z_reg_463;
wire   [31:0] zext_ln74_fu_243_p1;
wire    ap_CS_fsm_state8;
wire   [2:0] j_fu_254_p2;
reg   [2:0] j_reg_479;
reg   [31:0] grid_y_reg_484;
wire    ap_CS_fsm_state13;
wire   [0:0] grp_lineIntersectGrid_fu_153_ap_return;
reg   [0:0] tmp_4_reg_492;
wire    ap_CS_fsm_state15;
wire    grp_lineIntersectGrid_fu_153_ap_ready;
wire    grp_lineIntersectGrid_fu_153_ap_done;
wire    grp_lineIntersectGrid_fu_167_ap_ready;
wire    grp_lineIntersectGrid_fu_167_ap_done;
wire    grp_lineIntersectGrid_fu_181_ap_ready;
wire    grp_lineIntersectGrid_fu_181_ap_done;
wire    grp_lineIntersectGrid_fu_195_ap_ready;
wire    grp_lineIntersectGrid_fu_195_ap_done;
reg    ap_block_state15_on_subcall_done;
wire   [5:0] trunc_ln74_fu_260_p1;
reg   [5:0] trunc_ln74_reg_497;
wire   [5:0] or_ln82_fu_264_p2;
reg   [5:0] or_ln82_reg_502;
wire   [0:0] grp_lineIntersectGrid_fu_167_ap_return;
reg   [0:0] tmp_4_1_reg_507;
wire   [6:0] add_ln82_2_fu_274_p2;
reg   [6:0] add_ln82_2_reg_512;
wire   [0:0] grp_lineIntersectGrid_fu_181_ap_return;
reg   [0:0] tmp_4_2_reg_517;
wire   [0:0] grp_lineIntersectGrid_fu_195_ap_return;
reg   [0:0] tmp_4_3_reg_522;
wire   [6:0] add_ln82_fu_280_p2;
wire    ap_CS_fsm_state16;
wire    grp_lineIntersectGrid_fu_153_ap_start;
wire    grp_lineIntersectGrid_fu_153_ap_idle;
wire    grp_lineIntersectGrid_fu_167_ap_start;
wire    grp_lineIntersectGrid_fu_167_ap_idle;
wire    grp_lineIntersectGrid_fu_181_ap_start;
wire    grp_lineIntersectGrid_fu_181_ap_idle;
wire    grp_lineIntersectGrid_fu_195_ap_start;
wire    grp_lineIntersectGrid_fu_195_ap_idle;
reg   [2:0] k_0_reg_108;
wire   [0:0] icmp_ln74_fu_248_p2;
reg   [6:0] b_0_reg_119;
reg   [2:0] j_0_reg_131;
reg   [6:0] b_1_reg_142;
reg    grp_lineIntersectGrid_fu_153_ap_start_reg;
wire    ap_CS_fsm_state14;
reg    grp_lineIntersectGrid_fu_167_ap_start_reg;
reg    grp_lineIntersectGrid_fu_181_ap_start_reg;
reg    grp_lineIntersectGrid_fu_195_ap_start_reg;
reg   [63:0] collisions_0_fu_68;
wire   [63:0] or_ln79_3_fu_379_p2;
wire   [0:0] icmp_ln73_fu_225_p2;
reg   [31:0] grp_fu_209_p0;
wire   [6:0] zext_ln82_fu_270_p1;
wire   [31:0] zext_ln74_1_fu_286_p1;
wire   [31:0] shl_ln80_fu_290_p2;
wire   [31:0] zext_ln82_1_fu_303_p1;
wire   [31:0] shl_ln80_1_fu_306_p2;
wire   [31:0] zext_ln82_2_fu_319_p1;
wire   [31:0] shl_ln80_2_fu_322_p2;
wire   [5:0] or_ln82_1_fu_335_p2;
wire   [31:0] zext_ln82_3_fu_340_p1;
wire   [31:0] shl_ln80_3_fu_344_p2;
wire   [31:0] select_ln79_fu_296_p3;
wire   [31:0] select_ln79_1_fu_312_p3;
wire   [31:0] select_ln79_2_fu_328_p3;
wire   [31:0] select_ln79_3_fu_350_p3;
wire   [31:0] or_ln79_1_fu_363_p2;
wire   [31:0] or_ln79_fu_357_p2;
wire   [31:0] or_ln79_2_fu_369_p2;
wire  signed [63:0] sext_ln79_fu_375_p1;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'd1;
#0 grp_lineIntersectGrid_fu_153_ap_start_reg = 1'b0;
#0 grp_lineIntersectGrid_fu_167_ap_start_reg = 1'b0;
#0 grp_lineIntersectGrid_fu_181_ap_start_reg = 1'b0;
#0 grp_lineIntersectGrid_fu_195_ap_start_reg = 1'b0;
end

lineIntersectGrid grp_lineIntersectGrid_fu_153(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lineIntersectGrid_fu_153_ap_start),
    .ap_done(grp_lineIntersectGrid_fu_153_ap_done),
    .ap_idle(grp_lineIntersectGrid_fu_153_ap_idle),
    .ap_ready(grp_lineIntersectGrid_fu_153_ap_ready),
    .grid_x(32'd0),
    .grid_y(grid_y_reg_484),
    .grid_z(grid_z_reg_463),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .ap_return(grp_lineIntersectGrid_fu_153_ap_return)
);

lineIntersectGrid grp_lineIntersectGrid_fu_167(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lineIntersectGrid_fu_167_ap_start),
    .ap_done(grp_lineIntersectGrid_fu_167_ap_done),
    .ap_idle(grp_lineIntersectGrid_fu_167_ap_idle),
    .ap_ready(grp_lineIntersectGrid_fu_167_ap_ready),
    .grid_x(32'd1065353216),
    .grid_y(grid_y_reg_484),
    .grid_z(grid_z_reg_463),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .ap_return(grp_lineIntersectGrid_fu_167_ap_return)
);

lineIntersectGrid grp_lineIntersectGrid_fu_181(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lineIntersectGrid_fu_181_ap_start),
    .ap_done(grp_lineIntersectGrid_fu_181_ap_done),
    .ap_idle(grp_lineIntersectGrid_fu_181_ap_idle),
    .ap_ready(grp_lineIntersectGrid_fu_181_ap_ready),
    .grid_x(32'd1073741824),
    .grid_y(grid_y_reg_484),
    .grid_z(grid_z_reg_463),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .ap_return(grp_lineIntersectGrid_fu_181_ap_return)
);

lineIntersectGrid grp_lineIntersectGrid_fu_195(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lineIntersectGrid_fu_195_ap_start),
    .ap_done(grp_lineIntersectGrid_fu_195_ap_done),
    .ap_idle(grp_lineIntersectGrid_fu_195_ap_idle),
    .ap_ready(grp_lineIntersectGrid_fu_195_ap_ready),
    .grid_x(32'd1077936128),
    .grid_y(grid_y_reg_484),
    .grid_z(grid_z_reg_463),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .ap_return(grp_lineIntersectGrid_fu_195_ap_return)
);

honeybee_sitofp_3fYi #(
    .ID( 1 ),
    .NUM_STAGE( 6 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
honeybee_sitofp_3fYi_U26(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_209_p0),
    .ce(1'b1),
    .dout(grp_fu_209_p1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lineIntersectGrid_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_lineIntersectGrid_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_lineIntersectGrid_fu_153_ap_ready == 1'b1)) begin
            grp_lineIntersectGrid_fu_153_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lineIntersectGrid_fu_167_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_lineIntersectGrid_fu_167_ap_start_reg <= 1'b1;
        end else if ((grp_lineIntersectGrid_fu_167_ap_ready == 1'b1)) begin
            grp_lineIntersectGrid_fu_167_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lineIntersectGrid_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_lineIntersectGrid_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_lineIntersectGrid_fu_181_ap_ready == 1'b1)) begin
            grp_lineIntersectGrid_fu_181_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lineIntersectGrid_fu_195_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state14)) begin
            grp_lineIntersectGrid_fu_195_ap_start_reg <= 1'b1;
        end else if ((grp_lineIntersectGrid_fu_195_ap_ready == 1'b1)) begin
            grp_lineIntersectGrid_fu_195_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln74_fu_248_p2 == 1'd1))) begin
        b_0_reg_119 <= b_reg_458;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_0_reg_119 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        b_1_reg_142 <= add_ln82_fu_280_p2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        b_1_reg_142 <= b_0_reg_119;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        collisions_0_fu_68 <= or_ln79_3_fu_379_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        collisions_0_fu_68 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        j_0_reg_131 <= j_reg_479;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        j_0_reg_131 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln74_fu_248_p2 == 1'd1))) begin
        k_0_reg_108 <= k_reg_453;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        k_0_reg_108 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done))) begin
        add_ln82_2_reg_512[6 : 1] <= add_ln82_2_fu_274_p2[6 : 1];
        or_ln82_reg_502[5 : 1] <= or_ln82_fu_264_p2[5 : 1];
        tmp_4_1_reg_507 <= grp_lineIntersectGrid_fu_167_ap_return;
        tmp_4_2_reg_517 <= grp_lineIntersectGrid_fu_181_ap_return;
        tmp_4_3_reg_522 <= grp_lineIntersectGrid_fu_195_ap_return;
        tmp_4_reg_492 <= grp_lineIntersectGrid_fu_153_ap_return;
        trunc_ln74_reg_497 <= trunc_ln74_fu_260_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        b_reg_458 <= b_fu_237_p2;
        grid_z_reg_463 <= grp_fu_209_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grid_y_reg_484 <= grp_fu_209_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        j_reg_479 <= j_fu_254_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        k_reg_453 <= k_fu_231_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln73_fu_225_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln73_fu_225_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_209_p0 = zext_ln74_fu_243_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_209_p0 = zext_ln73_fu_220_p1;
    end else begin
        grp_fu_209_p0 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln73_fu_225_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln74_fu_248_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln82_2_fu_274_p2 = (7'd1 + zext_ln82_fu_270_p1);

assign add_ln82_fu_280_p2 = (7'd4 + b_1_reg_142);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

always @ (*) begin
    ap_block_state15_on_subcall_done = ((grp_lineIntersectGrid_fu_153_ap_done == 1'b0) | (grp_lineIntersectGrid_fu_195_ap_done == 1'b0) | (grp_lineIntersectGrid_fu_181_ap_done == 1'b0) | (grp_lineIntersectGrid_fu_167_ap_done == 1'b0));
end

assign ap_return = collisions_0_fu_68;

assign b_fu_237_p2 = (b_0_reg_119 + 7'd16);

assign grp_lineIntersectGrid_fu_153_ap_start = grp_lineIntersectGrid_fu_153_ap_start_reg;

assign grp_lineIntersectGrid_fu_167_ap_start = grp_lineIntersectGrid_fu_167_ap_start_reg;

assign grp_lineIntersectGrid_fu_181_ap_start = grp_lineIntersectGrid_fu_181_ap_start_reg;

assign grp_lineIntersectGrid_fu_195_ap_start = grp_lineIntersectGrid_fu_195_ap_start_reg;

assign icmp_ln73_fu_225_p2 = ((k_0_reg_108 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln74_fu_248_p2 = ((j_0_reg_131 == 3'd4) ? 1'b1 : 1'b0);

assign j_fu_254_p2 = (j_0_reg_131 + 3'd1);

assign k_fu_231_p2 = (k_0_reg_108 + 3'd1);

assign or_ln79_1_fu_363_p2 = (select_ln79_3_fu_350_p3 | select_ln79_2_fu_328_p3);

assign or_ln79_2_fu_369_p2 = (or_ln79_fu_357_p2 | or_ln79_1_fu_363_p2);

assign or_ln79_3_fu_379_p2 = (sext_ln79_fu_375_p1 | collisions_0_fu_68);

assign or_ln79_fu_357_p2 = (select_ln79_fu_296_p3 | select_ln79_1_fu_312_p3);

assign or_ln82_1_fu_335_p2 = (trunc_ln74_reg_497 | 6'd3);

assign or_ln82_fu_264_p2 = (trunc_ln74_fu_260_p1 | 6'd1);

assign select_ln79_1_fu_312_p3 = ((tmp_4_1_reg_507[0:0] === 1'b1) ? shl_ln80_1_fu_306_p2 : 32'd0);

assign select_ln79_2_fu_328_p3 = ((tmp_4_2_reg_517[0:0] === 1'b1) ? shl_ln80_2_fu_322_p2 : 32'd0);

assign select_ln79_3_fu_350_p3 = ((tmp_4_3_reg_522[0:0] === 1'b1) ? shl_ln80_3_fu_344_p2 : 32'd0);

assign select_ln79_fu_296_p3 = ((tmp_4_reg_492[0:0] === 1'b1) ? shl_ln80_fu_290_p2 : 32'd0);

assign sext_ln79_fu_375_p1 = $signed(or_ln79_2_fu_369_p2);

assign shl_ln80_1_fu_306_p2 = 32'd1 << zext_ln82_1_fu_303_p1;

assign shl_ln80_2_fu_322_p2 = 32'd1 << zext_ln82_2_fu_319_p1;

assign shl_ln80_3_fu_344_p2 = 32'd1 << zext_ln82_3_fu_340_p1;

assign shl_ln80_fu_290_p2 = 32'd1 << zext_ln74_1_fu_286_p1;

assign trunc_ln74_fu_260_p1 = b_1_reg_142[5:0];

assign zext_ln73_fu_220_p1 = k_0_reg_108;

assign zext_ln74_1_fu_286_p1 = b_1_reg_142;

assign zext_ln74_fu_243_p1 = j_0_reg_131;

assign zext_ln82_1_fu_303_p1 = or_ln82_reg_502;

assign zext_ln82_2_fu_319_p1 = add_ln82_2_reg_512;

assign zext_ln82_3_fu_340_p1 = or_ln82_1_fu_335_p2;

assign zext_ln82_fu_270_p1 = or_ln82_fu_264_p2;

always @ (posedge ap_clk) begin
    or_ln82_reg_502[0] <= 1'b1;
    add_ln82_2_reg_512[0] <= 1'b0;
end

endmodule //honeybee
