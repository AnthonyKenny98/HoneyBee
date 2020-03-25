// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _honeybee_HH_
#define _honeybee_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "segmentIntersectsGri.h"
#include "honeybee_sitofp_3hbi.h"

namespace ap_rtl {

struct honeybee : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > edge_p1_x;
    sc_in< sc_lv<32> > edge_p1_y;
    sc_in< sc_lv<32> > edge_p1_z;
    sc_in< sc_lv<32> > edge_p2_x;
    sc_in< sc_lv<32> > edge_p2_y;
    sc_in< sc_lv<32> > edge_p2_z;
    sc_out< sc_lv<8> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    honeybee(sc_module_name name);
    SC_HAS_PROCESS(honeybee);

    ~honeybee();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    segmentIntersectsGri* grp_segmentIntersectsGri_fu_153;
    honeybee_sitofp_3hbi<1,6,32,32>* honeybee_sitofp_3hbi_U56;
    sc_signal< sc_lv<21> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > zext_ln152_fu_177_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > k_fu_188_p2;
    sc_signal< sc_lv<2> > k_reg_320;
    sc_signal< sc_lv<4> > b_fu_194_p2;
    sc_signal< sc_lv<4> > b_reg_325;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_166_p1;
    sc_signal< sc_lv<32> > grid_z_reg_330;
    sc_signal< sc_lv<32> > zext_ln153_fu_200_p1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<2> > j_fu_211_p2;
    sc_signal< sc_lv<2> > j_reg_343;
    sc_signal< sc_lv<4> > add_ln161_fu_217_p2;
    sc_signal< sc_lv<4> > add_ln161_reg_348;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<32> > grid_y_reg_353;
    sc_signal< sc_lv<32> > zext_ln154_fu_223_p1;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<2> > i_fu_234_p2;
    sc_signal< sc_lv<2> > i_reg_366;
    sc_signal< sc_lv<32> > grid_x_reg_371;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<4> > add_ln161_1_fu_264_p2;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_153_ap_ready;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_153_ap_done;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_153_ap_start;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_153_ap_idle;
    sc_signal< sc_lv<1> > grp_segmentIntersectsGri_fu_153_ap_return;
    sc_signal< sc_lv<2> > k_0_reg_86;
    sc_signal< sc_lv<1> > icmp_ln153_fu_205_p2;
    sc_signal< sc_lv<4> > b_0_reg_97;
    sc_signal< sc_lv<2> > j_0_reg_109;
    sc_signal< sc_lv<1> > icmp_ln154_fu_228_p2;
    sc_signal< sc_lv<4> > b_1_reg_120;
    sc_signal< sc_lv<2> > i_0_reg_131;
    sc_signal< sc_lv<4> > b_2_reg_142;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_153_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<8> > collisions_1_fu_46;
    sc_signal< sc_lv<8> > collisions_fu_258_p2;
    sc_signal< sc_lv<1> > icmp_ln152_fu_182_p2;
    sc_signal< sc_lv<32> > grp_fu_166_p0;
    sc_signal< sc_lv<8> > zext_ln154_1_fu_240_p1;
    sc_signal< sc_lv<8> > shl_ln159_fu_244_p2;
    sc_signal< sc_lv<8> > select_ln158_fu_250_p3;
    sc_signal< sc_lv<21> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<21> ap_ST_fsm_state1;
    static const sc_lv<21> ap_ST_fsm_state2;
    static const sc_lv<21> ap_ST_fsm_state3;
    static const sc_lv<21> ap_ST_fsm_state4;
    static const sc_lv<21> ap_ST_fsm_state5;
    static const sc_lv<21> ap_ST_fsm_state6;
    static const sc_lv<21> ap_ST_fsm_state7;
    static const sc_lv<21> ap_ST_fsm_state8;
    static const sc_lv<21> ap_ST_fsm_state9;
    static const sc_lv<21> ap_ST_fsm_state10;
    static const sc_lv<21> ap_ST_fsm_state11;
    static const sc_lv<21> ap_ST_fsm_state12;
    static const sc_lv<21> ap_ST_fsm_state13;
    static const sc_lv<21> ap_ST_fsm_state14;
    static const sc_lv<21> ap_ST_fsm_state15;
    static const sc_lv<21> ap_ST_fsm_state16;
    static const sc_lv<21> ap_ST_fsm_state17;
    static const sc_lv<21> ap_ST_fsm_state18;
    static const sc_lv<21> ap_ST_fsm_state19;
    static const sc_lv<21> ap_ST_fsm_state20;
    static const sc_lv<21> ap_ST_fsm_state21;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln161_1_fu_264_p2();
    void thread_add_ln161_fu_217_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_fu_194_p2();
    void thread_collisions_fu_258_p2();
    void thread_grp_fu_166_p0();
    void thread_grp_segmentIntersectsGri_fu_153_ap_start();
    void thread_i_fu_234_p2();
    void thread_icmp_ln152_fu_182_p2();
    void thread_icmp_ln153_fu_205_p2();
    void thread_icmp_ln154_fu_228_p2();
    void thread_j_fu_211_p2();
    void thread_k_fu_188_p2();
    void thread_select_ln158_fu_250_p3();
    void thread_shl_ln159_fu_244_p2();
    void thread_zext_ln152_fu_177_p1();
    void thread_zext_ln153_fu_200_p1();
    void thread_zext_ln154_1_fu_240_p1();
    void thread_zext_ln154_fu_223_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
