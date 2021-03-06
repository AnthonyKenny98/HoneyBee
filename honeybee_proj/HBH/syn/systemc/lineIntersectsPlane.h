// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _lineIntersectsPlane_HH_
#define _lineIntersectsPlane_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "honeybee_fsub_32nbkb.h"
#include "honeybee_fadd_32ncud.h"
#include "honeybee_fmul_32ndEe.h"
#include "honeybee_fdiv_32neOg.h"

namespace ap_rtl {

struct lineIntersectsPlane : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_lv<32> > edge_p1_x;
    sc_in< sc_lv<32> > edge_p1_y;
    sc_in< sc_lv<32> > edge_p1_z;
    sc_in< sc_lv<32> > edge_p2_x;
    sc_in< sc_lv<32> > edge_p2_y;
    sc_in< sc_lv<32> > edge_p2_z;
    sc_in< sc_lv<32> > plane;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_in< sc_logic > ap_ce;
    sc_signal< sc_lv<32> > ap_var_for_const0;


    // Module declarations
    lineIntersectsPlane(sc_module_name name);
    SC_HAS_PROCESS(lineIntersectsPlane);

    ~lineIntersectsPlane();

    sc_trace_file* mVcdFile;

    honeybee_fsub_32nbkb<1,4,32,32,32>* honeybee_fsub_32nbkb_U1;
    honeybee_fsub_32nbkb<1,4,32,32,32>* honeybee_fsub_32nbkb_U2;
    honeybee_fsub_32nbkb<1,4,32,32,32>* honeybee_fsub_32nbkb_U3;
    honeybee_fsub_32nbkb<1,4,32,32,32>* honeybee_fsub_32nbkb_U4;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U5;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U6;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U7;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U8;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U9;
    honeybee_fsub_32nbkb<1,4,32,32,32>* honeybee_fsub_32nbkb_U10;
    honeybee_fsub_32nbkb<1,4,32,32,32>* honeybee_fsub_32nbkb_U11;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U12;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U13;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U14;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U15;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U16;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U17;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U18;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U19;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U20;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U21;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U22;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U23;
    honeybee_fmul_32ndEe<1,3,32,32,32>* honeybee_fmul_32ndEe_U24;
    honeybee_fdiv_32neOg<1,12,32,32,32>* honeybee_fdiv_32neOg_U25;
    sc_signal< sc_lv<32> > plane_read_reg_199;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter15;
    sc_signal< bool > ap_block_state17_pp0_stage0_iter16;
    sc_signal< bool > ap_block_state18_pp0_stage0_iter17;
    sc_signal< bool > ap_block_state19_pp0_stage0_iter18;
    sc_signal< bool > ap_block_state20_pp0_stage0_iter19;
    sc_signal< bool > ap_block_state21_pp0_stage0_iter20;
    sc_signal< bool > ap_block_state22_pp0_stage0_iter21;
    sc_signal< bool > ap_block_state23_pp0_stage0_iter22;
    sc_signal< bool > ap_block_state24_pp0_stage0_iter23;
    sc_signal< bool > ap_block_state25_pp0_stage0_iter24;
    sc_signal< bool > ap_block_state26_pp0_stage0_iter25;
    sc_signal< bool > ap_block_state27_pp0_stage0_iter26;
    sc_signal< bool > ap_block_state28_pp0_stage0_iter27;
    sc_signal< bool > ap_block_state29_pp0_stage0_iter28;
    sc_signal< bool > ap_block_state30_pp0_stage0_iter29;
    sc_signal< bool > ap_block_state31_pp0_stage0_iter30;
    sc_signal< bool > ap_block_state32_pp0_stage0_iter31;
    sc_signal< bool > ap_block_state33_pp0_stage0_iter32;
    sc_signal< bool > ap_block_state34_pp0_stage0_iter33;
    sc_signal< bool > ap_block_state35_pp0_stage0_iter34;
    sc_signal< bool > ap_block_state36_pp0_stage0_iter35;
    sc_signal< bool > ap_block_state37_pp0_stage0_iter36;
    sc_signal< bool > ap_block_state38_pp0_stage0_iter37;
    sc_signal< bool > ap_block_state39_pp0_stage0_iter38;
    sc_signal< bool > ap_block_state40_pp0_stage0_iter39;
    sc_signal< bool > ap_block_state41_pp0_stage0_iter40;
    sc_signal< bool > ap_block_state42_pp0_stage0_iter41;
    sc_signal< bool > ap_block_state43_pp0_stage0_iter42;
    sc_signal< bool > ap_block_state44_pp0_stage0_iter43;
    sc_signal< bool > ap_block_state45_pp0_stage0_iter44;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter1_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter2_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter3_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter4_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter5_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter6_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter7_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter8_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter9_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter10_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter11_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter12_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter13_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter14_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter15_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter16_reg;
    sc_signal< sc_lv<32> > plane_read_reg_199_pp0_iter17_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter1_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter2_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter3_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter4_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter5_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter6_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter7_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter8_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter9_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter10_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter11_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter12_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter13_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter14_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter15_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter16_reg;
    sc_signal< sc_lv<32> > edge_p2_z_read_reg_206_pp0_iter17_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter1_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter2_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter3_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter4_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter5_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter6_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter7_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter8_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter9_reg;
    sc_signal< sc_lv<32> > edge_p2_y_read_reg_211_pp0_iter10_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter1_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter2_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter3_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter4_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter5_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter6_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter7_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter8_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter9_reg;
    sc_signal< sc_lv<32> > edge_p2_x_read_reg_216_pp0_iter10_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter1_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter2_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter3_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter4_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter5_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter6_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter7_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter8_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter9_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter10_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter11_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter12_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter13_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter14_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter15_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter16_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter17_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter18_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter19_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter20_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter21_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter22_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter23_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter24_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter25_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter26_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter27_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter28_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter29_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter30_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter31_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter32_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter33_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter34_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter35_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter36_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter37_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter38_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter39_reg;
    sc_signal< sc_lv<32> > edge_p1_z_read_reg_221_pp0_iter40_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter1_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter2_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter3_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter4_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter5_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter6_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter7_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter8_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter9_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter10_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter11_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter12_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter13_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter14_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter15_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter16_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter17_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter18_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter19_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter20_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter21_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter22_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter23_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter24_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter25_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter26_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter27_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter28_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter29_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter30_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter31_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter32_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter33_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter34_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter35_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter36_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter37_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter38_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter39_reg;
    sc_signal< sc_lv<32> > edge_p1_y_read_reg_228_pp0_iter40_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter1_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter2_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter3_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter4_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter5_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter6_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter7_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter8_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter9_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter10_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter11_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter12_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter13_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter14_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter15_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter16_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter17_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter18_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter19_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter20_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter21_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter22_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter23_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter24_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter25_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter26_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter27_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter28_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter29_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter30_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter31_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter32_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter33_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter34_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter35_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter36_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter37_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter38_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter39_reg;
    sc_signal< sc_lv<32> > edge_p1_x_read_reg_235_pp0_iter40_reg;
    sc_signal< sc_lv<32> > grp_fu_64_p2;
    sc_signal< sc_lv<32> > PR_z_reg_242;
    sc_signal< sc_lv<32> > PR_z_reg_242_pp0_iter4_reg;
    sc_signal< sc_lv<32> > PR_z_reg_242_pp0_iter5_reg;
    sc_signal< sc_lv<32> > grp_fu_126_p2;
    sc_signal< sc_lv<32> > tmp_i_reg_248;
    sc_signal< sc_lv<32> > xor_ln20_fu_171_p2;
    sc_signal< sc_lv<32> > xor_ln20_reg_253;
    sc_signal< sc_lv<32> > grp_fu_70_p2;
    sc_signal< sc_lv<32> > norm_y_reg_263;
    sc_signal< sc_lv<32> > norm_y_reg_263_pp0_iter11_reg;
    sc_signal< sc_lv<32> > norm_y_reg_263_pp0_iter12_reg;
    sc_signal< sc_lv<32> > norm_y_reg_263_pp0_iter13_reg;
    sc_signal< sc_lv<32> > norm_y_reg_263_pp0_iter14_reg;
    sc_signal< sc_lv<32> > grp_fu_131_p2;
    sc_signal< sc_lv<32> > tmp_i9_reg_272;
    sc_signal< sc_lv<32> > grp_fu_136_p2;
    sc_signal< sc_lv<32> > tmp_i1_reg_278;
    sc_signal< sc_lv<32> > grp_fu_140_p2;
    sc_signal< sc_lv<32> > tmp_i1_6_reg_283;
    sc_signal< sc_lv<32> > grp_fu_74_p2;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter15_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter16_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter17_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter18_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter19_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter20_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter21_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter22_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter23_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter24_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter25_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter26_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter27_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter28_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter29_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter30_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter31_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter32_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter33_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter34_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter35_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter36_reg;
    sc_signal< sc_lv<32> > tmp_19_i_reg_288_pp0_iter37_reg;
    sc_signal< sc_lv<32> > grp_fu_78_p2;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter15_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter16_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter17_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter18_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter19_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter20_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter21_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter22_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter23_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter24_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter25_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter26_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter27_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter28_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter29_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter30_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter31_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter32_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter33_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter34_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter35_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter36_reg;
    sc_signal< sc_lv<32> > tmp_21_i_reg_294_pp0_iter37_reg;
    sc_signal< sc_lv<32> > grp_fu_82_p2;
    sc_signal< sc_lv<32> > tmp_28_i_reg_300;
    sc_signal< sc_lv<32> > grp_fu_86_p2;
    sc_signal< sc_lv<32> > tmp_15_i_reg_305;
    sc_signal< sc_lv<32> > grp_fu_144_p2;
    sc_signal< sc_lv<32> > tmp_20_i_reg_310;
    sc_signal< sc_lv<32> > grp_fu_148_p2;
    sc_signal< sc_lv<32> > tmp_22_i_reg_315;
    sc_signal< sc_lv<32> > grp_fu_90_p2;
    sc_signal< sc_lv<32> > dot_reg_320;
    sc_signal< sc_lv<32> > grp_fu_94_p2;
    sc_signal< sc_lv<32> > tmp_17_i_reg_325;
    sc_signal< sc_lv<32> > grp_fu_98_p2;
    sc_signal< sc_lv<32> > tmp_23_i_reg_330;
    sc_signal< sc_lv<32> > grp_fu_102_p2;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter22_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter23_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter24_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter25_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter26_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter27_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter28_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter29_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter30_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter31_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter32_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter33_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter34_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter35_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter36_reg;
    sc_signal< sc_lv<32> > tmp_24_i_reg_335_pp0_iter37_reg;
    sc_signal< sc_lv<32> > grp_fu_106_p2;
    sc_signal< sc_lv<32> > tmp_18_i_reg_341;
    sc_signal< sc_lv<32> > grp_fu_110_p2;
    sc_signal< sc_lv<32> > tmp_26_i_reg_346;
    sc_signal< sc_lv<32> > grp_fu_164_p2;
    sc_signal< sc_lv<32> > T_reg_351;
    sc_signal< sc_lv<32> > grp_fu_152_p2;
    sc_signal< sc_lv<32> > tmp_i2_reg_358;
    sc_signal< sc_lv<32> > grp_fu_156_p2;
    sc_signal< sc_lv<32> > tmp_12_i_reg_363;
    sc_signal< sc_lv<32> > grp_fu_160_p2;
    sc_signal< sc_lv<32> > tmp_14_i_reg_368;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > grp_fu_70_p1;
    sc_signal< sc_lv<32> > bitcast_ln20_fu_168_p1;
    sc_signal< sc_lv<32> > grp_fu_114_p2;
    sc_signal< sc_lv<32> > grp_fu_118_p2;
    sc_signal< sc_lv<32> > grp_fu_122_p2;
    sc_signal< sc_logic > grp_fu_64_ce;
    sc_signal< sc_logic > grp_fu_70_ce;
    sc_signal< sc_logic > grp_fu_74_ce;
    sc_signal< sc_logic > grp_fu_78_ce;
    sc_signal< sc_logic > grp_fu_82_ce;
    sc_signal< sc_logic > grp_fu_86_ce;
    sc_signal< sc_logic > grp_fu_90_ce;
    sc_signal< sc_logic > grp_fu_94_ce;
    sc_signal< sc_logic > grp_fu_98_ce;
    sc_signal< sc_logic > grp_fu_102_ce;
    sc_signal< sc_logic > grp_fu_106_ce;
    sc_signal< sc_logic > grp_fu_110_ce;
    sc_signal< sc_logic > grp_fu_114_ce;
    sc_signal< sc_logic > grp_fu_118_ce;
    sc_signal< sc_logic > grp_fu_122_ce;
    sc_signal< sc_logic > grp_fu_126_ce;
    sc_signal< sc_logic > grp_fu_131_ce;
    sc_signal< sc_logic > grp_fu_136_ce;
    sc_signal< sc_logic > grp_fu_140_ce;
    sc_signal< sc_logic > grp_fu_144_ce;
    sc_signal< sc_logic > grp_fu_148_ce;
    sc_signal< sc_logic > grp_fu_152_ce;
    sc_signal< sc_logic > grp_fu_156_ce;
    sc_signal< sc_logic > grp_fu_160_ce;
    sc_signal< sc_logic > grp_fu_164_ce;
    sc_signal< sc_logic > ap_ce_reg;
    sc_signal< sc_lv<32> > edge_p1_x_int_reg;
    sc_signal< sc_lv<32> > edge_p1_y_int_reg;
    sc_signal< sc_lv<32> > edge_p1_z_int_reg;
    sc_signal< sc_lv<32> > edge_p2_x_int_reg;
    sc_signal< sc_lv<32> > edge_p2_y_int_reg;
    sc_signal< sc_lv<32> > edge_p2_z_int_reg;
    sc_signal< sc_lv<32> > plane_int_reg;
    sc_signal< sc_lv<32> > ap_return_0_int_reg;
    sc_signal< sc_lv<32> > ap_return_1_int_reg;
    sc_signal< sc_lv<32> > ap_return_2_int_reg;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_80000000;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_state10_pp0_stage0_iter9();
    void thread_ap_block_state11_pp0_stage0_iter10();
    void thread_ap_block_state12_pp0_stage0_iter11();
    void thread_ap_block_state13_pp0_stage0_iter12();
    void thread_ap_block_state14_pp0_stage0_iter13();
    void thread_ap_block_state15_pp0_stage0_iter14();
    void thread_ap_block_state16_pp0_stage0_iter15();
    void thread_ap_block_state17_pp0_stage0_iter16();
    void thread_ap_block_state18_pp0_stage0_iter17();
    void thread_ap_block_state19_pp0_stage0_iter18();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state20_pp0_stage0_iter19();
    void thread_ap_block_state21_pp0_stage0_iter20();
    void thread_ap_block_state22_pp0_stage0_iter21();
    void thread_ap_block_state23_pp0_stage0_iter22();
    void thread_ap_block_state24_pp0_stage0_iter23();
    void thread_ap_block_state25_pp0_stage0_iter24();
    void thread_ap_block_state26_pp0_stage0_iter25();
    void thread_ap_block_state27_pp0_stage0_iter26();
    void thread_ap_block_state28_pp0_stage0_iter27();
    void thread_ap_block_state29_pp0_stage0_iter28();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state30_pp0_stage0_iter29();
    void thread_ap_block_state31_pp0_stage0_iter30();
    void thread_ap_block_state32_pp0_stage0_iter31();
    void thread_ap_block_state33_pp0_stage0_iter32();
    void thread_ap_block_state34_pp0_stage0_iter33();
    void thread_ap_block_state35_pp0_stage0_iter34();
    void thread_ap_block_state36_pp0_stage0_iter35();
    void thread_ap_block_state37_pp0_stage0_iter36();
    void thread_ap_block_state38_pp0_stage0_iter37();
    void thread_ap_block_state39_pp0_stage0_iter38();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state40_pp0_stage0_iter39();
    void thread_ap_block_state41_pp0_stage0_iter40();
    void thread_ap_block_state42_pp0_stage0_iter41();
    void thread_ap_block_state43_pp0_stage0_iter42();
    void thread_ap_block_state44_pp0_stage0_iter43();
    void thread_ap_block_state45_pp0_stage0_iter44();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_block_state5_pp0_stage0_iter4();
    void thread_ap_block_state6_pp0_stage0_iter5();
    void thread_ap_block_state7_pp0_stage0_iter6();
    void thread_ap_block_state8_pp0_stage0_iter7();
    void thread_ap_block_state9_pp0_stage0_iter8();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_bitcast_ln20_fu_168_p1();
    void thread_grp_fu_102_ce();
    void thread_grp_fu_106_ce();
    void thread_grp_fu_110_ce();
    void thread_grp_fu_114_ce();
    void thread_grp_fu_118_ce();
    void thread_grp_fu_122_ce();
    void thread_grp_fu_126_ce();
    void thread_grp_fu_131_ce();
    void thread_grp_fu_136_ce();
    void thread_grp_fu_140_ce();
    void thread_grp_fu_144_ce();
    void thread_grp_fu_148_ce();
    void thread_grp_fu_152_ce();
    void thread_grp_fu_156_ce();
    void thread_grp_fu_160_ce();
    void thread_grp_fu_164_ce();
    void thread_grp_fu_64_ce();
    void thread_grp_fu_70_ce();
    void thread_grp_fu_70_p1();
    void thread_grp_fu_74_ce();
    void thread_grp_fu_78_ce();
    void thread_grp_fu_82_ce();
    void thread_grp_fu_86_ce();
    void thread_grp_fu_90_ce();
    void thread_grp_fu_94_ce();
    void thread_grp_fu_98_ce();
    void thread_xor_ln20_fu_171_p2();
};

}

using namespace ap_rtl;

#endif
