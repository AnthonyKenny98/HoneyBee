// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="honeybee,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z030i-fbg484-2L,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.588000,HLS_SYN_LAT=53,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=684,HLS_SYN_FF=152442,HLS_SYN_LUT=185663,HLS_VERSION=2019_2}" *)

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

parameter    ap_ST_fsm_state1 = 54'd1;
parameter    ap_ST_fsm_state2 = 54'd2;
parameter    ap_ST_fsm_state3 = 54'd4;
parameter    ap_ST_fsm_state4 = 54'd8;
parameter    ap_ST_fsm_state5 = 54'd16;
parameter    ap_ST_fsm_state6 = 54'd32;
parameter    ap_ST_fsm_state7 = 54'd64;
parameter    ap_ST_fsm_state8 = 54'd128;
parameter    ap_ST_fsm_state9 = 54'd256;
parameter    ap_ST_fsm_state10 = 54'd512;
parameter    ap_ST_fsm_state11 = 54'd1024;
parameter    ap_ST_fsm_state12 = 54'd2048;
parameter    ap_ST_fsm_state13 = 54'd4096;
parameter    ap_ST_fsm_state14 = 54'd8192;
parameter    ap_ST_fsm_state15 = 54'd16384;
parameter    ap_ST_fsm_state16 = 54'd32768;
parameter    ap_ST_fsm_state17 = 54'd65536;
parameter    ap_ST_fsm_state18 = 54'd131072;
parameter    ap_ST_fsm_state19 = 54'd262144;
parameter    ap_ST_fsm_state20 = 54'd524288;
parameter    ap_ST_fsm_state21 = 54'd1048576;
parameter    ap_ST_fsm_state22 = 54'd2097152;
parameter    ap_ST_fsm_state23 = 54'd4194304;
parameter    ap_ST_fsm_state24 = 54'd8388608;
parameter    ap_ST_fsm_state25 = 54'd16777216;
parameter    ap_ST_fsm_state26 = 54'd33554432;
parameter    ap_ST_fsm_state27 = 54'd67108864;
parameter    ap_ST_fsm_state28 = 54'd134217728;
parameter    ap_ST_fsm_state29 = 54'd268435456;
parameter    ap_ST_fsm_state30 = 54'd536870912;
parameter    ap_ST_fsm_state31 = 54'd1073741824;
parameter    ap_ST_fsm_state32 = 54'd2147483648;
parameter    ap_ST_fsm_state33 = 54'd4294967296;
parameter    ap_ST_fsm_state34 = 54'd8589934592;
parameter    ap_ST_fsm_state35 = 54'd17179869184;
parameter    ap_ST_fsm_state36 = 54'd34359738368;
parameter    ap_ST_fsm_state37 = 54'd68719476736;
parameter    ap_ST_fsm_state38 = 54'd137438953472;
parameter    ap_ST_fsm_state39 = 54'd274877906944;
parameter    ap_ST_fsm_state40 = 54'd549755813888;
parameter    ap_ST_fsm_state41 = 54'd1099511627776;
parameter    ap_ST_fsm_state42 = 54'd2199023255552;
parameter    ap_ST_fsm_state43 = 54'd4398046511104;
parameter    ap_ST_fsm_state44 = 54'd8796093022208;
parameter    ap_ST_fsm_state45 = 54'd17592186044416;
parameter    ap_ST_fsm_state46 = 54'd35184372088832;
parameter    ap_ST_fsm_state47 = 54'd70368744177664;
parameter    ap_ST_fsm_state48 = 54'd140737488355328;
parameter    ap_ST_fsm_state49 = 54'd281474976710656;
parameter    ap_ST_fsm_state50 = 54'd562949953421312;
parameter    ap_ST_fsm_state51 = 54'd1125899906842624;
parameter    ap_ST_fsm_state52 = 54'd2251799813685248;
parameter    ap_ST_fsm_state53 = 54'd4503599627370496;
parameter    ap_ST_fsm_state54 = 54'd9007199254740992;

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

(* fsm_encoding = "none" *) reg   [53:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_checkAxis_2_fu_64_ap_return;
reg   [63:0] collisions_z_reg_163;
wire    ap_CS_fsm_state53;
wire   [63:0] grp_checkAxis_0_fu_96_ap_return;
reg   [63:0] collisions_y_reg_168;
wire   [63:0] grp_checkAxis_1_fu_80_ap_return;
reg   [63:0] collisions_x_reg_173;
wire    ap_CS_fsm_state54;
wire   [63:0] or_ln170_fu_112_p2;
reg   [53:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 54'd1;
end

checkAxis_2 grp_checkAxis_2_fu_64(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_z),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_z),
    .ap_return(grp_checkAxis_2_fu_64_ap_return)
);

checkAxis_1 grp_checkAxis_1_fu_80(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .edge_p1_x(edge_p1_z),
    .edge_p1_y(edge_p1_y),
    .edge_p1_z(edge_p1_x),
    .edge_p2_x(edge_p2_z),
    .edge_p2_y(edge_p2_y),
    .edge_p2_z(edge_p2_x),
    .ap_return(grp_checkAxis_1_fu_80_ap_return)
);

checkAxis_0 grp_checkAxis_0_fu_96(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .edge_p1_x(edge_p1_x),
    .edge_p1_y(edge_p1_z),
    .edge_p1_z(edge_p1_y),
    .edge_p2_x(edge_p2_x),
    .edge_p2_y(edge_p2_z),
    .edge_p2_z(edge_p2_y),
    .ap_return(grp_checkAxis_0_fu_96_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        collisions_x_reg_173 <= grp_checkAxis_1_fu_80_ap_return;
        collisions_y_reg_168 <= grp_checkAxis_0_fu_96_ap_return;
        collisions_z_reg_163 <= grp_checkAxis_2_fu_64_ap_return;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
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
    if ((1'b1 == ap_CS_fsm_state54)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
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
            ap_NS_fsm = ap_ST_fsm_state9;
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
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];

assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];

assign ap_return = (or_ln170_fu_112_p2 | collisions_y_reg_168);

assign or_ln170_fu_112_p2 = (collisions_z_reg_163 | collisions_x_reg_173);

endmodule //honeybee
