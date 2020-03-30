// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module p_hls_fptosi_float_i (
        ap_ready,
        x,
        ap_return
);


output   ap_ready;
input  [31:0] x;
output  [31:0] ap_return;

wire   [31:0] p_Val2_s_fu_44_p1;
wire   [22:0] tmp_V_1_fu_66_p1;
wire   [24:0] mantissa_V_fu_70_p4;
wire   [7:0] tmp_V_fu_56_p4;
wire   [8:0] zext_ln339_fu_84_p1;
wire   [8:0] add_ln339_fu_88_p2;
wire   [7:0] sub_ln1311_fu_102_p2;
wire   [0:0] isNeg_fu_94_p3;
wire  signed [8:0] sext_ln1311_fu_108_p1;
wire  signed [8:0] ush_fu_112_p3;
wire  signed [31:0] sext_ln1311_1_fu_120_p1;
wire  signed [24:0] sext_ln1311_2_fu_124_p1;
wire   [78:0] zext_ln682_fu_80_p1;
wire   [78:0] zext_ln1287_fu_128_p1;
wire   [24:0] r_V_fu_132_p2;
wire   [0:0] tmp_fu_144_p3;
wire   [78:0] r_V_1_fu_138_p2;
wire   [31:0] zext_ln662_fu_152_p1;
wire   [31:0] tmp_14_fu_156_p4;
wire   [31:0] p_Val2_5_fu_166_p3;
wire   [0:0] p_Result_s_fu_48_p3;
wire   [31:0] result_V_1_fu_174_p2;

assign add_ln339_fu_88_p2 = ($signed(9'd385) + $signed(zext_ln339_fu_84_p1));

assign ap_ready = 1'b1;

assign ap_return = ((p_Result_s_fu_48_p3[0:0] === 1'b1) ? result_V_1_fu_174_p2 : p_Val2_5_fu_166_p3);

assign isNeg_fu_94_p3 = add_ln339_fu_88_p2[32'd8];

assign mantissa_V_fu_70_p4 = {{{{1'd1}, {tmp_V_1_fu_66_p1}}}, {1'd0}};

assign p_Result_s_fu_48_p3 = p_Val2_s_fu_44_p1[32'd31];

assign p_Val2_5_fu_166_p3 = ((isNeg_fu_94_p3[0:0] === 1'b1) ? zext_ln662_fu_152_p1 : tmp_14_fu_156_p4);

assign p_Val2_s_fu_44_p1 = x;

assign r_V_1_fu_138_p2 = zext_ln682_fu_80_p1 << zext_ln1287_fu_128_p1;

assign r_V_fu_132_p2 = mantissa_V_fu_70_p4 >> sext_ln1311_2_fu_124_p1;

assign result_V_1_fu_174_p2 = (32'd0 - p_Val2_5_fu_166_p3);

assign sext_ln1311_1_fu_120_p1 = ush_fu_112_p3;

assign sext_ln1311_2_fu_124_p1 = ush_fu_112_p3;

assign sext_ln1311_fu_108_p1 = $signed(sub_ln1311_fu_102_p2);

assign sub_ln1311_fu_102_p2 = (8'd127 - tmp_V_fu_56_p4);

assign tmp_14_fu_156_p4 = {{r_V_1_fu_138_p2[55:24]}};

assign tmp_V_1_fu_66_p1 = p_Val2_s_fu_44_p1[22:0];

assign tmp_V_fu_56_p4 = {{p_Val2_s_fu_44_p1[30:23]}};

assign tmp_fu_144_p3 = r_V_fu_132_p2[32'd24];

assign ush_fu_112_p3 = ((isNeg_fu_94_p3[0:0] === 1'b1) ? sext_ln1311_fu_108_p1 : add_ln339_fu_88_p2);

assign zext_ln1287_fu_128_p1 = $unsigned(sext_ln1311_1_fu_120_p1);

assign zext_ln339_fu_84_p1 = tmp_V_fu_56_p4;

assign zext_ln662_fu_152_p1 = tmp_fu_144_p3;

assign zext_ln682_fu_80_p1 = mantissa_V_fu_70_p4;

endmodule //p_hls_fptosi_float_i
