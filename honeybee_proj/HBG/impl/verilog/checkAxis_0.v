// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module checkAxis_0 (
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

parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_state2 = 20'd2;
parameter    ap_ST_fsm_state3 = 20'd4;
parameter    ap_ST_fsm_state4 = 20'd8;
parameter    ap_ST_fsm_state5 = 20'd16;
parameter    ap_ST_fsm_state6 = 20'd32;
parameter    ap_ST_fsm_state7 = 20'd64;
parameter    ap_ST_fsm_state8 = 20'd128;
parameter    ap_ST_fsm_state9 = 20'd256;
parameter    ap_ST_fsm_state10 = 20'd512;
parameter    ap_ST_fsm_state11 = 20'd1024;
parameter    ap_ST_fsm_state12 = 20'd2048;
parameter    ap_ST_fsm_state13 = 20'd4096;
parameter    ap_ST_fsm_state14 = 20'd8192;
parameter    ap_ST_fsm_state15 = 20'd16384;
parameter    ap_ST_fsm_state16 = 20'd32768;
parameter    ap_ST_fsm_state17 = 20'd65536;
parameter    ap_ST_fsm_state18 = 20'd131072;
parameter    ap_ST_fsm_state19 = 20'd262144;
parameter    ap_ST_fsm_state20 = 20'd524288;

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

(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_240;
wire    ap_CS_fsm_state3;
wire    grp_lineIntersectsPlane_fu_190_ap_ready;
wire    grp_lineIntersectsPlane_fu_190_ap_done;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_246;
reg   [31:0] reg_252;
wire   [31:0] grp_p_hls_fptosi_float_i_fu_218_ap_return;
reg   [31:0] reg_257;
wire    ap_CS_fsm_state5;
wire    grp_pointOnSegment_fu_205_ap_ready;
wire    grp_pointOnSegment_fu_205_ap_done;
wire   [0:0] grp_pointOnSegment_fu_205_ap_return;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire   [31:0] grp_p_hls_fptosi_float_i_fu_223_ap_return;
reg   [31:0] reg_261;
wire   [1:0] add_ln84_fu_265_p2;
wire    ap_CS_fsm_state2;
reg   [0:0] tmp_s_reg_565;
reg   [0:0] tmp_43_1_reg_569;
reg   [0:0] tmp_43_2_reg_573;
reg   [0:0] tmp_43_3_reg_577;
wire   [2:0] i_fu_504_p2;
reg   [2:0] i_reg_584;
wire    ap_CS_fsm_state19;
wire   [0:0] icmp_ln138_fu_498_p2;
wire   [63:0] returnCollisions_fu_515_p2;
wire    ap_CS_fsm_state20;
reg   [1:0] collisions_address0;
reg    collisions_ce0;
reg    collisions_we0;
reg   [63:0] collisions_d0;
wire   [63:0] collisions_q0;
wire    grp_lineIntersectsPlane_fu_190_ap_start;
wire    grp_lineIntersectsPlane_fu_190_ap_idle;
reg   [31:0] grp_lineIntersectsPlane_fu_190_plane;
wire   [31:0] grp_lineIntersectsPlane_fu_190_ap_return_0;
wire   [31:0] grp_lineIntersectsPlane_fu_190_ap_return_1;
wire   [31:0] grp_lineIntersectsPlane_fu_190_ap_return_2;
wire    grp_pointOnSegment_fu_205_ap_start;
wire    grp_pointOnSegment_fu_205_ap_idle;
wire    grp_p_hls_fptosi_float_i_fu_218_ap_ready;
wire    grp_p_hls_fptosi_float_i_fu_223_ap_ready;
reg   [1:0] phi_ln84_reg_156;
wire   [0:0] icmp_ln84_fu_276_p2;
reg   [63:0] returnCollisions_0_reg_167;
wire    ap_CS_fsm_state18;
reg   [2:0] i_1_reg_179;
reg    grp_lineIntersectsPlane_fu_190_ap_start_reg;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state14;
reg    grp_pointOnSegment_fu_205_ap_start_reg;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire   [63:0] zext_ln84_fu_271_p1;
wire   [63:0] zext_ln139_fu_510_p1;
wire   [63:0] or_ln122_fu_326_p2;
wire   [63:0] or_ln122_1_fu_377_p2;
wire   [63:0] or_ln122_2_fu_434_p2;
wire   [63:0] or_ln122_3_fu_491_p2;
wire   [31:0] shl_ln80_fu_282_p2;
wire   [31:0] add_ln80_fu_288_p2;
wire   [63:0] zext_ln121_fu_294_p1;
wire   [31:0] add_ln80_18_fu_304_p2;
wire   [31:0] add_ln80_19_fu_310_p2;
wire   [63:0] zext_ln122_fu_316_p1;
wire   [63:0] shl_ln122_fu_320_p2;
wire   [63:0] shl_ln121_fu_298_p2;
wire   [31:0] shl_ln80_11_fu_333_p2;
wire   [31:0] or_ln80_fu_339_p2;
wire   [31:0] add_ln80_20_fu_345_p2;
wire   [63:0] zext_ln121_1_fu_351_p1;
wire   [31:0] add_ln80_21_fu_361_p2;
wire   [63:0] zext_ln122_1_fu_367_p1;
wire   [63:0] shl_ln122_1_fu_371_p2;
wire   [63:0] shl_ln121_1_fu_355_p2;
wire   [31:0] shl_ln80_12_fu_384_p2;
wire   [31:0] or_ln80_5_fu_390_p2;
wire   [31:0] add_ln80_22_fu_396_p2;
wire   [63:0] zext_ln121_2_fu_402_p1;
wire   [31:0] or_ln80_6_fu_412_p2;
wire   [31:0] add_ln80_23_fu_418_p2;
wire   [63:0] zext_ln122_2_fu_424_p1;
wire   [63:0] shl_ln122_2_fu_428_p2;
wire   [63:0] shl_ln121_2_fu_406_p2;
wire   [31:0] shl_ln80_13_fu_441_p2;
wire   [31:0] or_ln80_7_fu_447_p2;
wire   [31:0] add_ln80_24_fu_453_p2;
wire   [63:0] zext_ln121_3_fu_459_p1;
wire   [31:0] or_ln80_8_fu_469_p2;
wire   [31:0] add_ln80_25_fu_475_p2;
wire   [63:0] zext_ln122_3_fu_481_p1;
wire   [63:0] shl_ln122_3_fu_485_p2;
wire   [63:0] shl_ln121_3_fu_463_p2;
reg   [63:0] ap_return_preg;
reg   [19:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 20'd1;
#0 grp_lineIntersectsPlane_fu_190_ap_start_reg = 1'b0;
#0 grp_pointOnSegment_fu_205_ap_start_reg = 1'b0;
#0 ap_return_preg = 64'd0;
end

checkAxis_2_collihbi #(
    .DataWidth( 64 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
collisions_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(collisions_address0),
    .ce0(collisions_ce0),
    .we0(collisions_we0),
    .d0(collisions_d0),
    .q0(collisions_q0)
);

lineIntersectsPlane grp_lineIntersectsPlane_fu_190(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_lineIntersectsPlane_fu_190_ap_start),
    .ap_done(grp_lineIntersectsPlane_fu_190_ap_done),
    .ap_idle(grp_lineIntersectsPlane_fu_190_ap_idle),
    .ap_ready(grp_lineIntersectsPlane_fu_190_ap_ready),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .plane(grp_lineIntersectsPlane_fu_190_plane),
    .ap_return_0(grp_lineIntersectsPlane_fu_190_ap_return_0),
    .ap_return_1(grp_lineIntersectsPlane_fu_190_ap_return_1),
    .ap_return_2(grp_lineIntersectsPlane_fu_190_ap_return_2)
);

pointOnSegment grp_pointOnSegment_fu_205(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_pointOnSegment_fu_205_ap_start),
    .ap_done(grp_pointOnSegment_fu_205_ap_done),
    .ap_idle(grp_pointOnSegment_fu_205_ap_idle),
    .ap_ready(grp_pointOnSegment_fu_205_ap_ready),
    .p_x(reg_240),
    .p_y(reg_252),
    .p_z(reg_246),
    .e_p1_x(edge_p1_x),
    .e_p1_y(edge_p1_z),
    .e_p1_z(edge_p1_y),
    .e_p2_x(edge_p2_x),
    .e_p2_y(edge_p2_z),
    .e_p2_z(edge_p2_y),
    .ap_return(grp_pointOnSegment_fu_205_ap_return)
);

p_hls_fptosi_float_i grp_p_hls_fptosi_float_i_fu_218(
    .ap_ready(grp_p_hls_fptosi_float_i_fu_218_ap_ready),
    .x(reg_240),
    .ap_return(grp_p_hls_fptosi_float_i_fu_218_ap_return)
);

p_hls_fptosi_float_i grp_p_hls_fptosi_float_i_fu_223(
    .ap_ready(grp_p_hls_fptosi_float_i_fu_223_ap_ready),
    .x(reg_246),
    .ap_return(grp_p_hls_fptosi_float_i_fu_223_ap_return)
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
        if (((icmp_ln138_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
            ap_return_preg <= returnCollisions_0_reg_167;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_lineIntersectsPlane_fu_190_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | ((icmp_ln84_fu_276_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
            grp_lineIntersectsPlane_fu_190_ap_start_reg <= 1'b1;
        end else if ((grp_lineIntersectsPlane_fu_190_ap_ready == 1'b1)) begin
            grp_lineIntersectsPlane_fu_190_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_pointOnSegment_fu_205_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state4))) begin
            grp_pointOnSegment_fu_205_ap_start_reg <= 1'b1;
        end else if ((grp_pointOnSegment_fu_205_ap_ready == 1'b1)) begin
            grp_pointOnSegment_fu_205_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        i_1_reg_179 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        i_1_reg_179 <= i_reg_584;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln84_fu_276_p2 == 1'd0))) begin
        phi_ln84_reg_156 <= add_ln84_fu_265_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_ln84_reg_156 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        returnCollisions_0_reg_167 <= 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        returnCollisions_0_reg_167 <= returnCollisions_fu_515_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        i_reg_584 <= i_fu_504_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15)) | ((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11)) | ((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7)) | ((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)))) begin
        reg_240 <= grp_lineIntersectsPlane_fu_190_ap_return_0;
        reg_246 <= grp_lineIntersectsPlane_fu_190_ap_return_1;
        reg_252 <= grp_lineIntersectsPlane_fu_190_ap_return_2;
    end
end

always @ (posedge ap_clk) begin
    if ((((grp_pointOnSegment_fu_205_ap_return == 1'd1) & (grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_pointOnSegment_fu_205_ap_return == 1'd1) & (grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)) | ((grp_pointOnSegment_fu_205_ap_return == 1'd1) & (grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9)) | ((grp_pointOnSegment_fu_205_ap_return == 1'd1) & (grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5)))) begin
        reg_257 <= grp_p_hls_fptosi_float_i_fu_218_ap_return;
        reg_261 <= grp_p_hls_fptosi_float_i_fu_223_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        tmp_43_1_reg_569 <= grp_pointOnSegment_fu_205_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        tmp_43_2_reg_573 <= grp_pointOnSegment_fu_205_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        tmp_43_3_reg_577 <= grp_pointOnSegment_fu_205_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_s_reg_565 <= grp_pointOnSegment_fu_205_ap_return;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln138_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19)))) begin
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
    if (((icmp_ln138_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln138_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
        ap_return = returnCollisions_0_reg_167;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        collisions_address0 = zext_ln139_fu_510_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        collisions_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        collisions_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        collisions_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        collisions_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        collisions_address0 = zext_ln84_fu_271_p1;
    end else begin
        collisions_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state2))) begin
        collisions_ce0 = 1'b1;
    end else begin
        collisions_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        collisions_d0 = or_ln122_3_fu_491_p2;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        collisions_d0 = or_ln122_2_fu_434_p2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        collisions_d0 = or_ln122_1_fu_377_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        collisions_d0 = or_ln122_fu_326_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        collisions_d0 = 64'd0;
    end else begin
        collisions_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((tmp_43_2_reg_573 == 1'd1) & (1'b1 == ap_CS_fsm_state14)) | ((tmp_43_1_reg_569 == 1'd1) & (1'b1 == ap_CS_fsm_state10)) | ((tmp_s_reg_565 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((tmp_43_3_reg_577 == 1'd1) & (1'b1 == ap_CS_fsm_state18)))) begin
        collisions_we0 = 1'b1;
    end else begin
        collisions_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_lineIntersectsPlane_fu_190_plane = 32'd1077936128;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_lineIntersectsPlane_fu_190_plane = 32'd1073741824;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_lineIntersectsPlane_fu_190_plane = 32'd1065353216;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_lineIntersectsPlane_fu_190_plane = 32'd0;
    end else begin
        grp_lineIntersectsPlane_fu_190_plane = 'bx;
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
            if (((icmp_ln84_fu_276_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((grp_lineIntersectsPlane_fu_190_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_pointOnSegment_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((icmp_ln138_fu_498_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state19))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln80_18_fu_304_p2 = ($signed(32'd4294967292) + $signed(shl_ln80_fu_282_p2));

assign add_ln80_19_fu_310_p2 = (add_ln80_18_fu_304_p2 + reg_257);

assign add_ln80_20_fu_345_p2 = (or_ln80_fu_339_p2 + reg_257);

assign add_ln80_21_fu_361_p2 = (reg_257 + shl_ln80_11_fu_333_p2);

assign add_ln80_22_fu_396_p2 = (or_ln80_5_fu_390_p2 + reg_257);

assign add_ln80_23_fu_418_p2 = (or_ln80_6_fu_412_p2 + reg_257);

assign add_ln80_24_fu_453_p2 = (or_ln80_7_fu_447_p2 + reg_257);

assign add_ln80_25_fu_475_p2 = (or_ln80_8_fu_469_p2 + reg_257);

assign add_ln80_fu_288_p2 = (reg_257 + shl_ln80_fu_282_p2);

assign add_ln84_fu_265_p2 = (phi_ln84_reg_156 + 2'd1);

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

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_lineIntersectsPlane_fu_190_ap_start = grp_lineIntersectsPlane_fu_190_ap_start_reg;

assign grp_pointOnSegment_fu_205_ap_start = grp_pointOnSegment_fu_205_ap_start_reg;

assign i_fu_504_p2 = (i_1_reg_179 + 3'd1);

assign icmp_ln138_fu_498_p2 = ((i_1_reg_179 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln84_fu_276_p2 = ((phi_ln84_reg_156 == 2'd3) ? 1'b1 : 1'b0);

assign or_ln122_1_fu_377_p2 = (shl_ln122_1_fu_371_p2 | shl_ln121_1_fu_355_p2);

assign or_ln122_2_fu_434_p2 = (shl_ln122_2_fu_428_p2 | shl_ln121_2_fu_406_p2);

assign or_ln122_3_fu_491_p2 = (shl_ln122_3_fu_485_p2 | shl_ln121_3_fu_463_p2);

assign or_ln122_fu_326_p2 = (shl_ln122_fu_320_p2 | shl_ln121_fu_298_p2);

assign or_ln80_5_fu_390_p2 = (shl_ln80_12_fu_384_p2 | 32'd8);

assign or_ln80_6_fu_412_p2 = (shl_ln80_12_fu_384_p2 | 32'd4);

assign or_ln80_7_fu_447_p2 = (shl_ln80_13_fu_441_p2 | 32'd12);

assign or_ln80_8_fu_469_p2 = (shl_ln80_13_fu_441_p2 | 32'd8);

assign or_ln80_fu_339_p2 = (shl_ln80_11_fu_333_p2 | 32'd4);

assign returnCollisions_fu_515_p2 = (returnCollisions_0_reg_167 | collisions_q0);

assign shl_ln121_1_fu_355_p2 = 64'd1 << zext_ln121_1_fu_351_p1;

assign shl_ln121_2_fu_406_p2 = 64'd1 << zext_ln121_2_fu_402_p1;

assign shl_ln121_3_fu_463_p2 = 64'd1 << zext_ln121_3_fu_459_p1;

assign shl_ln121_fu_298_p2 = 64'd1 << zext_ln121_fu_294_p1;

assign shl_ln122_1_fu_371_p2 = 64'd1 << zext_ln122_1_fu_367_p1;

assign shl_ln122_2_fu_428_p2 = 64'd1 << zext_ln122_2_fu_424_p1;

assign shl_ln122_3_fu_485_p2 = 64'd1 << zext_ln122_3_fu_481_p1;

assign shl_ln122_fu_320_p2 = 64'd1 << zext_ln122_fu_316_p1;

assign shl_ln80_11_fu_333_p2 = reg_261 << 32'd4;

assign shl_ln80_12_fu_384_p2 = reg_261 << 32'd4;

assign shl_ln80_13_fu_441_p2 = reg_261 << 32'd4;

assign shl_ln80_fu_282_p2 = reg_261 << 32'd4;

assign zext_ln121_1_fu_351_p1 = add_ln80_20_fu_345_p2;

assign zext_ln121_2_fu_402_p1 = add_ln80_22_fu_396_p2;

assign zext_ln121_3_fu_459_p1 = add_ln80_24_fu_453_p2;

assign zext_ln121_fu_294_p1 = add_ln80_fu_288_p2;

assign zext_ln122_1_fu_367_p1 = add_ln80_21_fu_361_p2;

assign zext_ln122_2_fu_424_p1 = add_ln80_23_fu_418_p2;

assign zext_ln122_3_fu_481_p1 = add_ln80_25_fu_475_p2;

assign zext_ln122_fu_316_p1 = add_ln80_19_fu_310_p2;

assign zext_ln139_fu_510_p1 = i_1_reg_179;

assign zext_ln84_fu_271_p1 = phi_ln84_reg_156;

endmodule //checkAxis_0
