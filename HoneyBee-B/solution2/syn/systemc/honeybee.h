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
    sc_signal< sc_logic > ap_var_for_const2;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;


    // Module declarations
    honeybee(sc_module_name name);
    SC_HAS_PROCESS(honeybee);

    ~honeybee();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    segmentIntersectsGri* grp_segmentIntersectsGri_fu_145;
    segmentIntersectsGri* grp_segmentIntersectsGri_fu_159;
    honeybee_sitofp_3hbi<1,6,32,32>* honeybee_sitofp_3hbi_U56;
    sc_signal< sc_lv<15> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > zext_ln152_fu_184_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<2> > k_fu_195_p2;
    sc_signal< sc_lv<2> > k_reg_364;
    sc_signal< sc_lv<4> > b_fu_201_p2;
    sc_signal< sc_lv<4> > b_reg_369;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > grp_fu_173_p1;
    sc_signal< sc_lv<32> > grid_z_reg_374;
    sc_signal< sc_lv<32> > zext_ln153_fu_207_p1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<2> > j_fu_218_p2;
    sc_signal< sc_lv<2> > j_reg_388;
    sc_signal< sc_lv<32> > grid_y_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<4> > add_ln162_fu_224_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_145_ap_ready;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_145_ap_done;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_159_ap_ready;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_159_ap_done;
    sc_signal< bool > ap_block_state15_on_subcall_done;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_145_ap_start;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_145_ap_idle;
    sc_signal< sc_lv<1> > grp_segmentIntersectsGri_fu_145_ap_return;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_159_ap_start;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_159_ap_idle;
    sc_signal< sc_lv<1> > grp_segmentIntersectsGri_fu_159_ap_return;
    sc_signal< sc_lv<2> > k_0_reg_100;
    sc_signal< sc_lv<1> > icmp_ln153_fu_212_p2;
    sc_signal< sc_lv<4> > b_0_reg_111;
    sc_signal< sc_lv<2> > j_0_reg_123;
    sc_signal< sc_lv<4> > b_1_reg_134;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_145_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > grp_segmentIntersectsGri_fu_159_ap_start_reg;
    sc_signal< sc_lv<8> > collisions_0_fu_60;
    sc_signal< sc_lv<8> > or_ln159_1_fu_302_p2;
    sc_signal< sc_lv<1> > icmp_ln152_fu_189_p2;
    sc_signal< sc_lv<32> > grp_fu_173_p0;
    sc_signal< sc_lv<7> > zext_ln153_1_fu_230_p1;
    sc_signal< sc_lv<7> > shl_ln160_fu_234_p2;
    sc_signal< sc_lv<3> > trunc_ln153_fu_248_p1;
    sc_signal< sc_lv<3> > or_ln162_fu_252_p2;
    sc_signal< sc_lv<8> > zext_ln162_fu_258_p1;
    sc_signal< sc_lv<8> > shl_ln160_1_fu_262_p2;
    sc_signal< sc_lv<8> > select_ln159_1_fu_268_p3;
    sc_signal< sc_lv<7> > trunc_ln159_fu_276_p1;
    sc_signal< sc_lv<7> > select_ln159_fu_240_p3;
    sc_signal< sc_lv<1> > tmp_fu_286_p3;
    sc_signal< sc_lv<7> > or_ln159_fu_280_p2;
    sc_signal< sc_lv<8> > tmp_62_fu_294_p3;
    sc_signal< sc_lv<15> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<15> ap_ST_fsm_state1;
    static const sc_lv<15> ap_ST_fsm_state2;
    static const sc_lv<15> ap_ST_fsm_state3;
    static const sc_lv<15> ap_ST_fsm_state4;
    static const sc_lv<15> ap_ST_fsm_state5;
    static const sc_lv<15> ap_ST_fsm_state6;
    static const sc_lv<15> ap_ST_fsm_state7;
    static const sc_lv<15> ap_ST_fsm_state8;
    static const sc_lv<15> ap_ST_fsm_state9;
    static const sc_lv<15> ap_ST_fsm_state10;
    static const sc_lv<15> ap_ST_fsm_state11;
    static const sc_lv<15> ap_ST_fsm_state12;
    static const sc_lv<15> ap_ST_fsm_state13;
    static const sc_lv<15> ap_ST_fsm_state14;
    static const sc_lv<15> ap_ST_fsm_state15;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_E;
    static const bool ap_const_boolean_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<4> ap_const_lv4_2;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_add_ln162_fu_224_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_state15_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_b_fu_201_p2();
    void thread_grp_fu_173_p0();
    void thread_grp_segmentIntersectsGri_fu_145_ap_start();
    void thread_grp_segmentIntersectsGri_fu_159_ap_start();
    void thread_icmp_ln152_fu_189_p2();
    void thread_icmp_ln153_fu_212_p2();
    void thread_j_fu_218_p2();
    void thread_k_fu_195_p2();
    void thread_or_ln159_1_fu_302_p2();
    void thread_or_ln159_fu_280_p2();
    void thread_or_ln162_fu_252_p2();
    void thread_select_ln159_1_fu_268_p3();
    void thread_select_ln159_fu_240_p3();
    void thread_shl_ln160_1_fu_262_p2();
    void thread_shl_ln160_fu_234_p2();
    void thread_tmp_62_fu_294_p3();
    void thread_tmp_fu_286_p3();
    void thread_trunc_ln153_fu_248_p1();
    void thread_trunc_ln159_fu_276_p1();
    void thread_zext_ln152_fu_184_p1();
    void thread_zext_ln153_1_fu_230_p1();
    void thread_zext_ln153_fu_207_p1();
    void thread_zext_ln162_fu_258_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
