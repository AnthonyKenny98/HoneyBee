// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module checkAxis_2 (
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

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

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
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_259;
wire    ap_CS_fsm_state3;
wire    grp_lineIntersectsPlane_fu_209_ap_ready;
wire    grp_lineIntersectsPlane_fu_209_ap_done;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_265;
reg   [31:0] reg_271;
wire   [31:0] grp_p_hls_fptosi_float_i_fu_237_ap_return;
reg   [31:0] reg_276;
wire    ap_CS_fsm_state5;
wire    grp_pointOnSegment_fu_224_ap_ready;
wire    grp_pointOnSegment_fu_224_ap_done;
wire   [0:0] grp_pointOnSegment_fu_224_ap_return;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire   [31:0] grp_p_hls_fptosi_float_i_fu_242_ap_return;
reg   [31:0] reg_280;
wire   [1:0] add_ln84_fu_308_p2;
wire    ap_CS_fsm_state2;
wire   [63:0] select_ln84_2_fu_348_p3;
reg   [63:0] select_ln84_2_reg_856;
wire   [63:0] select_ln84_5_fu_372_p3;
reg   [63:0] select_ln84_5_reg_861;
wire   [63:0] select_ln84_7_fu_388_p3;
reg   [63:0] select_ln84_7_reg_866;
wire   [63:0] select_ln84_8_fu_396_p3;
reg   [63:0] select_ln84_8_reg_871;
wire   [63:0] select_ln84_11_fu_420_p3;
reg   [63:0] select_ln84_11_reg_876;
wire   [63:0] select_ln84_14_fu_444_p3;
reg   [63:0] select_ln84_14_reg_881;
wire   [63:0] select_ln84_16_fu_460_p3;
reg   [63:0] select_ln84_16_reg_886;
wire   [63:0] select_ln84_17_fu_468_p3;
reg   [63:0] select_ln84_17_reg_891;
reg   [0:0] tmp_s_reg_899;
wire   [63:0] collisions_0_fu_565_p2;
wire    ap_CS_fsm_state6;
reg   [0:0] tmp_1_reg_908;
wire   [63:0] collisions_1_fu_614_p2;
wire    ap_CS_fsm_state10;
reg   [0:0] tmp_2_reg_917;
wire   [63:0] collisions_2_fu_669_p2;
wire    ap_CS_fsm_state14;
reg   [0:0] tmp_3_reg_926;
wire   [2:0] i_fu_737_p2;
wire    ap_CS_fsm_state19;
wire   [63:0] returnCollisions_fu_761_p2;
wire   [0:0] icmp_ln132_fu_731_p2;
wire    grp_lineIntersectsPlane_fu_209_ap_start;
wire    grp_lineIntersectsPlane_fu_209_ap_idle;
reg   [31:0] grp_lineIntersectsPlane_fu_209_plane;
wire   [31:0] grp_lineIntersectsPlane_fu_209_ap_return_0;
wire   [31:0] grp_lineIntersectsPlane_fu_209_ap_return_1;
wire   [31:0] grp_lineIntersectsPlane_fu_209_ap_return_2;
wire    grp_pointOnSegment_fu_224_ap_start;
wire    grp_pointOnSegment_fu_224_ap_idle;
wire    grp_p_hls_fptosi_float_i_fu_237_ap_ready;
wire    grp_p_hls_fptosi_float_i_fu_242_ap_ready;
reg   [1:0] phi_ln84_reg_136;
wire   [0:0] icmp_ln84_fu_476_p2;
reg   [63:0] collisions_0_2_reg_147;
reg   [63:0] collisions_1_2_reg_157;
reg   [63:0] collisions_2_2_reg_167;
wire   [63:0] collisions_3_fu_724_p2;
reg   [63:0] collisions_3_2_reg_177;
wire    ap_CS_fsm_state18;
reg   [63:0] returnCollisions_0_reg_187;
reg   [2:0] i_1_reg_198;
reg    grp_lineIntersectsPlane_fu_209_ap_start_reg;
reg    grp_pointOnSegment_fu_224_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
reg   [63:0] collisions_load_1_075_fu_68;
reg   [63:0] collisions_load_1_177_fu_72;
reg   [63:0] collisions_load_1_279_fu_76;
reg   [63:0] collisions_load_1_381_fu_80;
reg   [63:0] collisions_0_0_fu_84;
reg   [63:0] collisions_1_0_fu_88;
reg   [63:0] collisions_2_0_fu_92;
reg   [63:0] collisions_3_0_fu_96;
wire   [0:0] icmp_ln84_1_fu_314_p2;
wire   [0:0] icmp_ln84_2_fu_328_p2;
wire   [63:0] select_ln84_fu_320_p3;
wire   [0:0] icmp_ln84_3_fu_342_p2;
wire   [63:0] select_ln84_1_fu_334_p3;
wire   [63:0] select_ln84_3_fu_356_p3;
wire   [63:0] select_ln84_4_fu_364_p3;
wire   [63:0] select_ln84_6_fu_380_p3;
wire   [63:0] select_ln84_9_fu_404_p3;
wire   [63:0] select_ln84_10_fu_412_p3;
wire   [63:0] select_ln84_12_fu_428_p3;
wire   [63:0] select_ln84_13_fu_436_p3;
wire   [63:0] select_ln84_15_fu_452_p3;
wire   [31:0] shl_ln80_fu_522_p2;
wire   [31:0] add_ln80_fu_528_p2;
wire   [63:0] zext_ln109_fu_534_p1;
wire   [31:0] add_ln80_1_fu_544_p2;
wire   [63:0] zext_ln110_fu_550_p1;
wire   [63:0] shl_ln110_fu_554_p2;
wire   [63:0] or_ln110_fu_560_p2;
wire   [63:0] shl_ln109_fu_538_p2;
wire   [31:0] shl_ln80_1_fu_571_p2;
wire   [31:0] add_ln80_2_fu_577_p2;
wire   [31:0] add_ln80_3_fu_583_p2;
wire   [63:0] zext_ln109_1_fu_589_p1;
wire   [63:0] zext_ln110_1_fu_599_p1;
wire   [63:0] shl_ln110_1_fu_603_p2;
wire   [63:0] or_ln110_2_fu_609_p2;
wire   [63:0] shl_ln109_1_fu_593_p2;
wire   [31:0] shl_ln80_2_fu_620_p2;
wire   [31:0] add_ln80_4_fu_626_p2;
wire   [31:0] add_ln80_5_fu_632_p2;
wire   [63:0] zext_ln109_2_fu_638_p1;
wire   [31:0] add_ln80_6_fu_648_p2;
wire   [63:0] zext_ln110_2_fu_654_p1;
wire   [63:0] shl_ln110_2_fu_658_p2;
wire   [63:0] or_ln110_4_fu_664_p2;
wire   [63:0] shl_ln109_2_fu_642_p2;
wire   [31:0] shl_ln80_3_fu_675_p2;
wire   [31:0] add_ln80_7_fu_681_p2;
wire   [31:0] add_ln80_8_fu_687_p2;
wire   [63:0] zext_ln109_3_fu_693_p1;
wire   [31:0] add_ln80_9_fu_703_p2;
wire   [63:0] zext_ln110_3_fu_709_p1;
wire   [63:0] shl_ln110_3_fu_713_p2;
wire   [63:0] or_ln110_6_fu_719_p2;
wire   [63:0] shl_ln109_3_fu_697_p2;
wire   [1:0] tmp_fu_747_p5;
wire   [63:0] tmp_fu_747_p6;
reg   [63:0] ap_return_preg;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
#0 grp_lineIntersectsPlane_fu_209_ap_start_reg = 1'b0;
#0 grp_pointOnSegment_fu_224_ap_start_reg = 1'b0;
#0 ap_return_preg = 64'd0;
end

lineIntersectsPlane grp_lineIntersectsPlane_fu_209(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lineIntersectsPlane_fu_209_ap_start),
    .ap_done(grp_lineIntersectsPlane_fu_209_ap_done),
    .ap_idle(grp_lineIntersectsPlane_fu_209_ap_idle),
    .ap_ready(grp_lineIntersectsPlane_fu_209_ap_ready),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .plane(grp_lineIntersectsPlane_fu_209_plane),
    .ap_return_0(grp_lineIntersectsPlane_fu_209_ap_return_0),
    .ap_return_1(grp_lineIntersectsPlane_fu_209_ap_return_1),
    .ap_return_2(grp_lineIntersectsPlane_fu_209_ap_return_2)
);

pointOnSegment grp_pointOnSegment_fu_224(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_pointOnSegment_fu_224_ap_start),
    .ap_done(grp_pointOnSegment_fu_224_ap_done),
    .ap_idle(grp_pointOnSegment_fu_224_ap_idle),
    .ap_ready(grp_pointOnSegment_fu_224_ap_ready),
    .p_x(reg_259),
    .p_y(reg_265),
    .p_z(reg_271),
    .e_p1_x(edge_p1_x),
    .e_p1_y(edge_p1_y),
    .e_p1_z(edge_p1_z),
    .e_p2_x(edge_p2_x),
    .e_p2_y(edge_p2_y),
    .e_p2_z(edge_p2_z),
    .ap_return(grp_pointOnSegment_fu_224_ap_return)
);

p_hls_fptosi_float_i grp_p_hls_fptosi_float_i_fu_237(
    .ap_ready(grp_p_hls_fptosi_float_i_fu_237_ap_ready),
    .x(reg_259),
    .ap_return(grp_p_hls_fptosi_float_i_fu_237_ap_return)
);

p_hls_fptosi_float_i grp_p_hls_fptosi_float_i_fu_242(
    .ap_ready(grp_p_hls_fptosi_float_i_fu_242_ap_ready),
    .x(reg_265),
    .ap_return(grp_p_hls_fptosi_float_i_fu_242_ap_return)
);

honeybee_mux_42_6hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .din2_WIDTH( 64 ),
    .din3_WIDTH( 64 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 64 ))
honeybee_mux_42_6hbi_U38(
    .din0(collisions_0_2_reg_147),
    .din1(collisions_1_2_reg_157),
    .din2(collisions_2_2_reg_167),
    .din3(collisions_3_2_reg_177),
    .din4(tmp_fu_747_p5),
    .dout(tmp_fu_747_p6)
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
        ap_return_preg <= 64'd0;
    end else begin
        if (((icmp_ln132_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_return_preg <= returnCollisions_0_reg_187;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lineIntersectsPlane_fu_209_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | ((icmp_ln84_fu_476_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
            grp_lineIntersectsPlane_fu_209_ap_start_reg <= 1'b1;
        end else if ((grp_lineIntersectsPlane_fu_209_ap_ready == 1'b1)) begin
            grp_lineIntersectsPlane_fu_209_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_pointOnSegment_fu_224_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_pointOnSegment_fu_224_ap_start_reg <= 1'b1;
        end else if ((grp_pointOnSegment_fu_224_ap_ready == 1'b1)) begin
            grp_pointOnSegment_fu_224_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_return == 1'd0) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        collisions_0_2_reg_147 <= select_ln84_8_reg_871;
    end else if (((tmp_s_reg_899 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        collisions_0_2_reg_147 <= collisions_0_fu_565_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_return == 1'd0) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        collisions_1_2_reg_157 <= select_ln84_7_reg_866;
    end else if (((tmp_1_reg_908 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        collisions_1_2_reg_157 <= collisions_1_fu_614_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_return == 1'd0) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        collisions_2_2_reg_167 <= select_ln84_5_reg_861;
    end else if (((tmp_2_reg_917 == 1'd1) & (1'b1 == ap_CS_fsm_state14))) begin
        collisions_2_2_reg_167 <= collisions_2_fu_669_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_return == 1'd0) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        collisions_3_2_reg_177 <= select_ln84_2_reg_856;
    end else if (((tmp_3_reg_926 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        collisions_3_2_reg_177 <= collisions_3_fu_724_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_1_reg_198 <= 3'd0;
    end else if (((icmp_ln132_fu_731_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state19))) begin
        i_1_reg_198 <= i_fu_737_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln84_fu_476_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_ln84_reg_136 <= add_ln84_fu_308_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_ln84_reg_136 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        returnCollisions_0_reg_187 <= 64'd0;
    end else if (((icmp_ln132_fu_731_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state19))) begin
        returnCollisions_0_reg_187 <= returnCollisions_fu_761_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        collisions_0_0_fu_84 <= select_ln84_8_fu_396_p3;
        collisions_1_0_fu_88 <= select_ln84_7_fu_388_p3;
        collisions_2_0_fu_92 <= select_ln84_5_fu_372_p3;
        collisions_3_0_fu_96 <= select_ln84_2_fu_348_p3;
        collisions_load_1_075_fu_68 <= select_ln84_17_fu_468_p3;
        collisions_load_1_177_fu_72 <= select_ln84_16_fu_460_p3;
        collisions_load_1_279_fu_76 <= select_ln84_14_fu_444_p3;
        collisions_load_1_381_fu_80 <= select_ln84_11_fu_420_p3;
        select_ln84_11_reg_876 <= select_ln84_11_fu_420_p3;
        select_ln84_14_reg_881 <= select_ln84_14_fu_444_p3;
        select_ln84_16_reg_886 <= select_ln84_16_fu_460_p3;
        select_ln84_17_reg_891 <= select_ln84_17_fu_468_p3;
        select_ln84_2_reg_856 <= select_ln84_2_fu_348_p3;
        select_ln84_5_reg_861 <= select_ln84_5_fu_372_p3;
        select_ln84_7_reg_866 <= select_ln84_7_fu_388_p3;
        select_ln84_8_reg_871 <= select_ln84_8_fu_396_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15)) | ((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_259 <= grp_lineIntersectsPlane_fu_209_ap_return_0;
        reg_265 <= grp_lineIntersectsPlane_fu_209_ap_return_1;
        reg_271 <= grp_lineIntersectsPlane_fu_209_ap_return_2;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_pointOnSegment_fu_224_ap_return == 1'd1) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_pointOnSegment_fu_224_ap_return == 1'd1) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((grp_pointOnSegment_fu_224_ap_return == 1'd1) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((grp_pointOnSegment_fu_224_ap_return == 1'd1) & (grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        reg_276 <= grp_p_hls_fptosi_float_i_fu_237_ap_return;
        reg_280 <= grp_p_hls_fptosi_float_i_fu_242_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        tmp_1_reg_908 <= grp_pointOnSegment_fu_224_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        tmp_2_reg_917 <= grp_pointOnSegment_fu_224_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        tmp_3_reg_926 <= grp_pointOnSegment_fu_224_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_s_reg_899 <= grp_pointOnSegment_fu_224_ap_return;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln132_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19)))) begin
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
    if (((icmp_ln132_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln132_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_return = returnCollisions_0_reg_187;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_lineIntersectsPlane_fu_209_plane = 32'd1077936128;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_lineIntersectsPlane_fu_209_plane = 32'd1073741824;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_lineIntersectsPlane_fu_209_plane = 32'd1065353216;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_lineIntersectsPlane_fu_209_plane = 32'd0;
    end else begin
        grp_lineIntersectsPlane_fu_209_plane = 'bx;
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
            if (((icmp_ln84_fu_476_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((grp_lineIntersectsPlane_fu_209_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_pointOnSegment_fu_224_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((icmp_ln132_fu_731_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln80_1_fu_544_p2 = ($signed(32'd4294967280) + $signed(add_ln80_fu_528_p2));

assign add_ln80_2_fu_577_p2 = (shl_ln80_1_fu_571_p2 + reg_276);

assign add_ln80_3_fu_583_p2 = (32'd16 + add_ln80_2_fu_577_p2);

assign add_ln80_4_fu_626_p2 = (shl_ln80_2_fu_620_p2 + reg_276);

assign add_ln80_5_fu_632_p2 = (32'd32 + add_ln80_4_fu_626_p2);

assign add_ln80_6_fu_648_p2 = (32'd16 + add_ln80_4_fu_626_p2);

assign add_ln80_7_fu_681_p2 = (shl_ln80_3_fu_675_p2 + reg_276);

assign add_ln80_8_fu_687_p2 = (32'd48 + add_ln80_7_fu_681_p2);

assign add_ln80_9_fu_703_p2 = (32'd32 + add_ln80_7_fu_681_p2);

assign add_ln80_fu_528_p2 = (shl_ln80_fu_522_p2 + reg_276);

assign add_ln84_fu_308_p2 = (phi_ln84_reg_136 + 2'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign collisions_0_fu_565_p2 = (shl_ln109_fu_538_p2 | or_ln110_fu_560_p2);

assign collisions_1_fu_614_p2 = (shl_ln109_1_fu_593_p2 | or_ln110_2_fu_609_p2);

assign collisions_2_fu_669_p2 = (shl_ln109_2_fu_642_p2 | or_ln110_4_fu_664_p2);

assign collisions_3_fu_724_p2 = (shl_ln109_3_fu_697_p2 | or_ln110_6_fu_719_p2);

assign grp_lineIntersectsPlane_fu_209_ap_start = grp_lineIntersectsPlane_fu_209_ap_start_reg;

assign grp_pointOnSegment_fu_224_ap_start = grp_pointOnSegment_fu_224_ap_start_reg;

assign i_fu_737_p2 = (i_1_reg_198 + 3'd1);

assign icmp_ln132_fu_731_p2 = ((i_1_reg_198 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln84_1_fu_314_p2 = ((phi_ln84_reg_136 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln84_2_fu_328_p2 = ((phi_ln84_reg_136 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln84_3_fu_342_p2 = ((phi_ln84_reg_136 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_fu_476_p2 = ((phi_ln84_reg_136 == 2'd3) ? 1'b1 : 1'b0);

assign or_ln110_2_fu_609_p2 = (shl_ln110_1_fu_603_p2 | select_ln84_16_reg_886);

assign or_ln110_4_fu_664_p2 = (shl_ln110_2_fu_658_p2 | select_ln84_14_reg_881);

assign or_ln110_6_fu_719_p2 = (shl_ln110_3_fu_713_p2 | select_ln84_11_reg_876);

assign or_ln110_fu_560_p2 = (shl_ln110_fu_554_p2 | select_ln84_17_reg_891);

assign returnCollisions_fu_761_p2 = (tmp_fu_747_p6 | returnCollisions_0_reg_187);

assign select_ln84_10_fu_412_p3 = ((icmp_ln84_2_fu_328_p2[0:0] === 1'b1) ? collisions_load_1_381_fu_80 : select_ln84_9_fu_404_p3);

assign select_ln84_11_fu_420_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? collisions_load_1_381_fu_80 : select_ln84_10_fu_412_p3);

assign select_ln84_12_fu_428_p3 = ((icmp_ln84_1_fu_314_p2[0:0] === 1'b1) ? 64'd0 : collisions_load_1_279_fu_76);

assign select_ln84_13_fu_436_p3 = ((icmp_ln84_2_fu_328_p2[0:0] === 1'b1) ? collisions_load_1_279_fu_76 : select_ln84_12_fu_428_p3);

assign select_ln84_14_fu_444_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? collisions_load_1_279_fu_76 : select_ln84_13_fu_436_p3);

assign select_ln84_15_fu_452_p3 = ((icmp_ln84_2_fu_328_p2[0:0] === 1'b1) ? 64'd0 : collisions_load_1_177_fu_72);

assign select_ln84_16_fu_460_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? collisions_load_1_177_fu_72 : select_ln84_15_fu_452_p3);

assign select_ln84_17_fu_468_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? 64'd0 : collisions_load_1_075_fu_68);

assign select_ln84_1_fu_334_p3 = ((icmp_ln84_2_fu_328_p2[0:0] === 1'b1) ? collisions_3_0_fu_96 : select_ln84_fu_320_p3);

assign select_ln84_2_fu_348_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? collisions_3_0_fu_96 : select_ln84_1_fu_334_p3);

assign select_ln84_3_fu_356_p3 = ((icmp_ln84_1_fu_314_p2[0:0] === 1'b1) ? 64'd0 : collisions_2_0_fu_92);

assign select_ln84_4_fu_364_p3 = ((icmp_ln84_2_fu_328_p2[0:0] === 1'b1) ? collisions_2_0_fu_92 : select_ln84_3_fu_356_p3);

assign select_ln84_5_fu_372_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? collisions_2_0_fu_92 : select_ln84_4_fu_364_p3);

assign select_ln84_6_fu_380_p3 = ((icmp_ln84_2_fu_328_p2[0:0] === 1'b1) ? 64'd0 : collisions_1_0_fu_88);

assign select_ln84_7_fu_388_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? collisions_1_0_fu_88 : select_ln84_6_fu_380_p3);

assign select_ln84_8_fu_396_p3 = ((icmp_ln84_3_fu_342_p2[0:0] === 1'b1) ? 64'd0 : collisions_0_0_fu_84);

assign select_ln84_9_fu_404_p3 = ((icmp_ln84_1_fu_314_p2[0:0] === 1'b1) ? collisions_load_1_381_fu_80 : 64'd0);

assign select_ln84_fu_320_p3 = ((icmp_ln84_1_fu_314_p2[0:0] === 1'b1) ? collisions_3_0_fu_96 : 64'd0);

assign shl_ln109_1_fu_593_p2 = 64'd1 << zext_ln109_1_fu_589_p1;

assign shl_ln109_2_fu_642_p2 = 64'd1 << zext_ln109_2_fu_638_p1;

assign shl_ln109_3_fu_697_p2 = 64'd1 << zext_ln109_3_fu_693_p1;

assign shl_ln109_fu_538_p2 = 64'd1 << zext_ln109_fu_534_p1;

assign shl_ln110_1_fu_603_p2 = 64'd1 << zext_ln110_1_fu_599_p1;

assign shl_ln110_2_fu_658_p2 = 64'd1 << zext_ln110_2_fu_654_p1;

assign shl_ln110_3_fu_713_p2 = 64'd1 << zext_ln110_3_fu_709_p1;

assign shl_ln110_fu_554_p2 = 64'd1 << zext_ln110_fu_550_p1;

assign shl_ln80_1_fu_571_p2 = reg_280 << 32'd2;

assign shl_ln80_2_fu_620_p2 = reg_280 << 32'd2;

assign shl_ln80_3_fu_675_p2 = reg_280 << 32'd2;

assign shl_ln80_fu_522_p2 = reg_280 << 32'd2;

assign tmp_fu_747_p5 = i_1_reg_198[1:0];

assign zext_ln109_1_fu_589_p1 = add_ln80_3_fu_583_p2;

assign zext_ln109_2_fu_638_p1 = add_ln80_5_fu_632_p2;

assign zext_ln109_3_fu_693_p1 = add_ln80_8_fu_687_p2;

assign zext_ln109_fu_534_p1 = add_ln80_fu_528_p2;

assign zext_ln110_1_fu_599_p1 = add_ln80_2_fu_577_p2;

assign zext_ln110_2_fu_654_p1 = add_ln80_6_fu_648_p2;

assign zext_ln110_3_fu_709_p1 = add_ln80_9_fu_703_p2;

assign zext_ln110_fu_550_p1 = add_ln80_1_fu_544_p2;

endmodule //checkAxis_2
