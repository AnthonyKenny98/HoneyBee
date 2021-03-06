// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _checkAxis_1_HH_
#define _checkAxis_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "lineIntersectsPlane.h"
#include "pointOnSegment.h"
#include "p_hls_fptosi_float_i.h"

namespace ap_rtl {

struct checkAxis_1 : public sc_module {
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
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    checkAxis_1(sc_module_name name);
    SC_HAS_PROCESS(checkAxis_1);

    ~checkAxis_1();

    sc_trace_file* mVcdFile;

    lineIntersectsPlane* grp_lineIntersectsPlane_fu_122;
    pointOnSegment* grp_pointOnSegment_fu_143;
    p_hls_fptosi_float_i* grp_p_hls_fptosi_float_i_fu_156;
    p_hls_fptosi_float_i* grp_p_hls_fptosi_float_i_fu_161;
    sc_signal< sc_lv<17> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_178;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_122_ap_ready;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_122_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<32> > reg_184;
    sc_signal< sc_lv<32> > reg_190;
    sc_signal< sc_lv<32> > grp_p_hls_fptosi_float_i_fu_156_ap_return;
    sc_signal< sc_lv<32> > reg_195;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_pointOnSegment_fu_143_ap_ready;
    sc_signal< sc_logic > grp_pointOnSegment_fu_143_ap_done;
    sc_signal< sc_lv<1> > grp_pointOnSegment_fu_143_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<32> > grp_p_hls_fptosi_float_i_fu_161_ap_return;
    sc_signal< sc_lv<32> > reg_199;
    sc_signal< sc_lv<1> > tmp_s_reg_494;
    sc_signal< sc_lv<64> > or_ln125_fu_253_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_43_1_reg_503;
    sc_signal< sc_lv<64> > or_ln125_1_fu_315_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > tmp_43_2_reg_512;
    sc_signal< sc_lv<64> > or_ln125_2_fu_383_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<1> > tmp_43_3_reg_521;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_122_ap_start;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_122_ap_idle;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_122_plane;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_122_ap_return_0;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_122_ap_return_1;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_122_ap_return_2;
    sc_signal< sc_logic > grp_pointOnSegment_fu_143_ap_start;
    sc_signal< sc_logic > grp_pointOnSegment_fu_143_ap_idle;
    sc_signal< sc_logic > grp_p_hls_fptosi_float_i_fu_156_ap_ready;
    sc_signal< sc_logic > grp_p_hls_fptosi_float_i_fu_161_ap_ready;
    sc_signal< sc_lv<64> > collisions_5_0_reg_78;
    sc_signal< sc_lv<64> > collisions_5_1_reg_90;
    sc_signal< sc_lv<64> > collisions_5_2_reg_101;
    sc_signal< sc_lv<64> > or_ln125_3_fu_451_p2;
    sc_signal< sc_lv<64> > ap_phi_mux_collisions_5_3_phi_fu_115_p4;
    sc_signal< sc_lv<64> > collisions_5_3_reg_112;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_122_ap_start_reg;
    sc_signal< sc_logic > grp_pointOnSegment_fu_143_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > shl_ln80_fu_203_p2;
    sc_signal< sc_lv<32> > shl_ln80_4_fu_209_p2;
    sc_signal< sc_lv<32> > add_ln80_fu_215_p2;
    sc_signal< sc_lv<64> > zext_ln124_fu_221_p1;
    sc_signal< sc_lv<32> > add_ln80_10_fu_231_p2;
    sc_signal< sc_lv<32> > add_ln80_11_fu_237_p2;
    sc_signal< sc_lv<64> > zext_ln125_fu_243_p1;
    sc_signal< sc_lv<64> > shl_ln124_fu_225_p2;
    sc_signal< sc_lv<64> > shl_ln125_fu_247_p2;
    sc_signal< sc_lv<32> > shl_ln80_5_fu_259_p2;
    sc_signal< sc_lv<32> > or_ln80_fu_271_p2;
    sc_signal< sc_lv<32> > shl_ln80_6_fu_265_p2;
    sc_signal< sc_lv<32> > add_ln80_12_fu_277_p2;
    sc_signal< sc_lv<64> > zext_ln124_1_fu_283_p1;
    sc_signal< sc_lv<32> > add_ln80_13_fu_293_p2;
    sc_signal< sc_lv<64> > zext_ln125_1_fu_299_p1;
    sc_signal< sc_lv<64> > shl_ln125_1_fu_303_p2;
    sc_signal< sc_lv<64> > or_ln125_4_fu_309_p2;
    sc_signal< sc_lv<64> > shl_ln124_1_fu_287_p2;
    sc_signal< sc_lv<32> > shl_ln80_7_fu_321_p2;
    sc_signal< sc_lv<32> > or_ln80_1_fu_333_p2;
    sc_signal< sc_lv<32> > shl_ln80_8_fu_327_p2;
    sc_signal< sc_lv<32> > add_ln80_14_fu_339_p2;
    sc_signal< sc_lv<64> > zext_ln124_2_fu_345_p1;
    sc_signal< sc_lv<32> > or_ln80_2_fu_355_p2;
    sc_signal< sc_lv<32> > add_ln80_15_fu_361_p2;
    sc_signal< sc_lv<64> > zext_ln125_2_fu_367_p1;
    sc_signal< sc_lv<64> > shl_ln125_2_fu_371_p2;
    sc_signal< sc_lv<64> > or_ln125_5_fu_377_p2;
    sc_signal< sc_lv<64> > shl_ln124_2_fu_349_p2;
    sc_signal< sc_lv<32> > shl_ln80_9_fu_389_p2;
    sc_signal< sc_lv<32> > or_ln80_3_fu_401_p2;
    sc_signal< sc_lv<32> > shl_ln80_10_fu_395_p2;
    sc_signal< sc_lv<32> > add_ln80_16_fu_407_p2;
    sc_signal< sc_lv<64> > zext_ln124_3_fu_413_p1;
    sc_signal< sc_lv<32> > or_ln80_4_fu_423_p2;
    sc_signal< sc_lv<32> > add_ln80_17_fu_429_p2;
    sc_signal< sc_lv<64> > zext_ln125_3_fu_435_p1;
    sc_signal< sc_lv<64> > shl_ln125_3_fu_439_p2;
    sc_signal< sc_lv<64> > or_ln125_6_fu_445_p2;
    sc_signal< sc_lv<64> > shl_ln124_3_fu_417_p2;
    sc_signal< sc_lv<64> > ap_return_preg;
    sc_signal< sc_lv<17> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<17> ap_ST_fsm_state1;
    static const sc_lv<17> ap_ST_fsm_state2;
    static const sc_lv<17> ap_ST_fsm_state3;
    static const sc_lv<17> ap_ST_fsm_state4;
    static const sc_lv<17> ap_ST_fsm_state5;
    static const sc_lv<17> ap_ST_fsm_state6;
    static const sc_lv<17> ap_ST_fsm_state7;
    static const sc_lv<17> ap_ST_fsm_state8;
    static const sc_lv<17> ap_ST_fsm_state9;
    static const sc_lv<17> ap_ST_fsm_state10;
    static const sc_lv<17> ap_ST_fsm_state11;
    static const sc_lv<17> ap_ST_fsm_state12;
    static const sc_lv<17> ap_ST_fsm_state13;
    static const sc_lv<17> ap_ST_fsm_state14;
    static const sc_lv<17> ap_ST_fsm_state15;
    static const sc_lv<17> ap_ST_fsm_state16;
    static const sc_lv<17> ap_ST_fsm_state17;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_40000000;
    static const sc_lv<32> ap_const_lv32_40400000;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln80_10_fu_231_p2();
    void thread_add_ln80_11_fu_237_p2();
    void thread_add_ln80_12_fu_277_p2();
    void thread_add_ln80_13_fu_293_p2();
    void thread_add_ln80_14_fu_339_p2();
    void thread_add_ln80_15_fu_361_p2();
    void thread_add_ln80_16_fu_407_p2();
    void thread_add_ln80_17_fu_429_p2();
    void thread_add_ln80_fu_215_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_collisions_5_3_phi_fu_115_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_lineIntersectsPlane_fu_122_ap_start();
    void thread_grp_lineIntersectsPlane_fu_122_plane();
    void thread_grp_pointOnSegment_fu_143_ap_start();
    void thread_or_ln125_1_fu_315_p2();
    void thread_or_ln125_2_fu_383_p2();
    void thread_or_ln125_3_fu_451_p2();
    void thread_or_ln125_4_fu_309_p2();
    void thread_or_ln125_5_fu_377_p2();
    void thread_or_ln125_6_fu_445_p2();
    void thread_or_ln125_fu_253_p2();
    void thread_or_ln80_1_fu_333_p2();
    void thread_or_ln80_2_fu_355_p2();
    void thread_or_ln80_3_fu_401_p2();
    void thread_or_ln80_4_fu_423_p2();
    void thread_or_ln80_fu_271_p2();
    void thread_shl_ln124_1_fu_287_p2();
    void thread_shl_ln124_2_fu_349_p2();
    void thread_shl_ln124_3_fu_417_p2();
    void thread_shl_ln124_fu_225_p2();
    void thread_shl_ln125_1_fu_303_p2();
    void thread_shl_ln125_2_fu_371_p2();
    void thread_shl_ln125_3_fu_439_p2();
    void thread_shl_ln125_fu_247_p2();
    void thread_shl_ln80_10_fu_395_p2();
    void thread_shl_ln80_4_fu_209_p2();
    void thread_shl_ln80_5_fu_259_p2();
    void thread_shl_ln80_6_fu_265_p2();
    void thread_shl_ln80_7_fu_321_p2();
    void thread_shl_ln80_8_fu_327_p2();
    void thread_shl_ln80_9_fu_389_p2();
    void thread_shl_ln80_fu_203_p2();
    void thread_zext_ln124_1_fu_283_p1();
    void thread_zext_ln124_2_fu_345_p1();
    void thread_zext_ln124_3_fu_413_p1();
    void thread_zext_ln124_fu_221_p1();
    void thread_zext_ln125_1_fu_299_p1();
    void thread_zext_ln125_2_fu_367_p1();
    void thread_zext_ln125_3_fu_435_p1();
    void thread_zext_ln125_fu_243_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
