// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _checkAxis_0_HH_
#define _checkAxis_0_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "lineIntersectsPlane.h"
#include "pointOnSegment.h"
#include "p_hls_fptosi_float_i.h"
#include "honeybee_mux_42_6hbi.h"

namespace ap_rtl {

struct checkAxis_0 : public sc_module {
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
    checkAxis_0(sc_module_name name);
    SC_HAS_PROCESS(checkAxis_0);

    ~checkAxis_0();

    sc_trace_file* mVcdFile;

    lineIntersectsPlane* grp_lineIntersectsPlane_fu_207;
    pointOnSegment* grp_pointOnSegment_fu_222;
    p_hls_fptosi_float_i* grp_p_hls_fptosi_float_i_fu_235;
    p_hls_fptosi_float_i* grp_p_hls_fptosi_float_i_fu_240;
    honeybee_mux_42_6hbi<1,1,64,64,64,64,2,64>* honeybee_mux_42_6hbi_U46;
    sc_signal< sc_lv<19> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_257;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_207_ap_ready;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_207_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > reg_263;
    sc_signal< sc_lv<32> > reg_269;
    sc_signal< sc_lv<32> > grp_p_hls_fptosi_float_i_fu_235_ap_return;
    sc_signal< sc_lv<32> > reg_274;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_pointOnSegment_fu_222_ap_ready;
    sc_signal< sc_logic > grp_pointOnSegment_fu_222_ap_done;
    sc_signal< sc_lv<1> > grp_pointOnSegment_fu_222_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > grp_p_hls_fptosi_float_i_fu_240_ap_return;
    sc_signal< sc_lv<32> > reg_278;
    sc_signal< sc_lv<2> > add_ln84_fu_306_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > select_ln84_36_fu_346_p3;
    sc_signal< sc_lv<64> > select_ln84_36_reg_878;
    sc_signal< sc_lv<64> > select_ln84_39_fu_370_p3;
    sc_signal< sc_lv<64> > select_ln84_39_reg_883;
    sc_signal< sc_lv<64> > select_ln84_41_fu_386_p3;
    sc_signal< sc_lv<64> > select_ln84_41_reg_888;
    sc_signal< sc_lv<64> > select_ln84_42_fu_394_p3;
    sc_signal< sc_lv<64> > select_ln84_42_reg_893;
    sc_signal< sc_lv<64> > select_ln84_45_fu_418_p3;
    sc_signal< sc_lv<64> > select_ln84_45_reg_898;
    sc_signal< sc_lv<64> > select_ln84_48_fu_442_p3;
    sc_signal< sc_lv<64> > select_ln84_48_reg_903;
    sc_signal< sc_lv<64> > select_ln84_50_fu_458_p3;
    sc_signal< sc_lv<64> > select_ln84_50_reg_908;
    sc_signal< sc_lv<64> > select_ln84_51_fu_466_p3;
    sc_signal< sc_lv<64> > select_ln84_51_reg_913;
    sc_signal< sc_lv<1> > tmp_s_reg_921;
    sc_signal< sc_lv<64> > collisions_0_fu_569_p2;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > tmp_42_1_reg_930;
    sc_signal< sc_lv<64> > collisions_1_fu_624_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > tmp_42_2_reg_939;
    sc_signal< sc_lv<64> > collisions_2_fu_685_p2;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<1> > tmp_42_3_reg_948;
    sc_signal< sc_lv<3> > i_fu_759_p2;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<64> > returnCollisions_fu_783_p2;
    sc_signal< sc_lv<1> > icmp_ln132_fu_753_p2;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_207_ap_start;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_207_ap_idle;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_207_plane;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_207_ap_return_0;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_207_ap_return_1;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_207_ap_return_2;
    sc_signal< sc_logic > grp_pointOnSegment_fu_222_ap_start;
    sc_signal< sc_logic > grp_pointOnSegment_fu_222_ap_idle;
    sc_signal< sc_logic > grp_p_hls_fptosi_float_i_fu_235_ap_ready;
    sc_signal< sc_logic > grp_p_hls_fptosi_float_i_fu_240_ap_ready;
    sc_signal< sc_lv<2> > phi_ln84_reg_134;
    sc_signal< sc_lv<1> > icmp_ln84_fu_474_p2;
    sc_signal< sc_lv<64> > collisions_0_2_reg_145;
    sc_signal< sc_lv<64> > collisions_1_2_reg_155;
    sc_signal< sc_lv<64> > collisions_2_2_reg_165;
    sc_signal< sc_lv<64> > collisions_3_fu_746_p2;
    sc_signal< sc_lv<64> > collisions_3_2_reg_175;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<64> > returnCollisions_0_reg_185;
    sc_signal< sc_lv<3> > i_1_reg_196;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_207_ap_start_reg;
    sc_signal< sc_logic > grp_pointOnSegment_fu_222_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<64> > collisions_load_1_075_fu_66;
    sc_signal< sc_lv<64> > collisions_load_1_177_fu_70;
    sc_signal< sc_lv<64> > collisions_load_1_279_fu_74;
    sc_signal< sc_lv<64> > collisions_load_1_381_fu_78;
    sc_signal< sc_lv<64> > collisions_0_0_fu_82;
    sc_signal< sc_lv<64> > collisions_1_0_fu_86;
    sc_signal< sc_lv<64> > collisions_2_0_fu_90;
    sc_signal< sc_lv<64> > collisions_3_0_fu_94;
    sc_signal< sc_lv<1> > icmp_ln84_7_fu_312_p2;
    sc_signal< sc_lv<1> > icmp_ln84_8_fu_326_p2;
    sc_signal< sc_lv<64> > select_ln84_fu_318_p3;
    sc_signal< sc_lv<1> > icmp_ln84_9_fu_340_p2;
    sc_signal< sc_lv<64> > select_ln84_35_fu_332_p3;
    sc_signal< sc_lv<64> > select_ln84_37_fu_354_p3;
    sc_signal< sc_lv<64> > select_ln84_38_fu_362_p3;
    sc_signal< sc_lv<64> > select_ln84_40_fu_378_p3;
    sc_signal< sc_lv<64> > select_ln84_43_fu_402_p3;
    sc_signal< sc_lv<64> > select_ln84_44_fu_410_p3;
    sc_signal< sc_lv<64> > select_ln84_46_fu_426_p3;
    sc_signal< sc_lv<64> > select_ln84_47_fu_434_p3;
    sc_signal< sc_lv<64> > select_ln84_49_fu_450_p3;
    sc_signal< sc_lv<32> > shl_ln80_fu_520_p2;
    sc_signal< sc_lv<32> > add_ln80_fu_526_p2;
    sc_signal< sc_lv<64> > zext_ln117_fu_532_p1;
    sc_signal< sc_lv<32> > add_ln80_18_fu_542_p2;
    sc_signal< sc_lv<32> > add_ln80_19_fu_548_p2;
    sc_signal< sc_lv<64> > zext_ln118_fu_554_p1;
    sc_signal< sc_lv<64> > shl_ln118_fu_558_p2;
    sc_signal< sc_lv<64> > or_ln118_fu_564_p2;
    sc_signal< sc_lv<64> > shl_ln117_fu_536_p2;
    sc_signal< sc_lv<32> > shl_ln80_11_fu_575_p2;
    sc_signal< sc_lv<32> > or_ln80_fu_581_p2;
    sc_signal< sc_lv<32> > add_ln80_20_fu_587_p2;
    sc_signal< sc_lv<64> > zext_ln117_1_fu_593_p1;
    sc_signal< sc_lv<32> > add_ln80_21_fu_603_p2;
    sc_signal< sc_lv<64> > zext_ln118_1_fu_609_p1;
    sc_signal< sc_lv<64> > shl_ln118_1_fu_613_p2;
    sc_signal< sc_lv<64> > or_ln118_2_fu_619_p2;
    sc_signal< sc_lv<64> > shl_ln117_1_fu_597_p2;
    sc_signal< sc_lv<32> > shl_ln80_12_fu_630_p2;
    sc_signal< sc_lv<32> > or_ln80_5_fu_636_p2;
    sc_signal< sc_lv<32> > add_ln80_22_fu_642_p2;
    sc_signal< sc_lv<64> > zext_ln117_2_fu_648_p1;
    sc_signal< sc_lv<32> > or_ln80_6_fu_658_p2;
    sc_signal< sc_lv<32> > add_ln80_23_fu_664_p2;
    sc_signal< sc_lv<64> > zext_ln118_2_fu_670_p1;
    sc_signal< sc_lv<64> > shl_ln118_2_fu_674_p2;
    sc_signal< sc_lv<64> > or_ln118_4_fu_680_p2;
    sc_signal< sc_lv<64> > shl_ln117_2_fu_652_p2;
    sc_signal< sc_lv<32> > shl_ln80_13_fu_691_p2;
    sc_signal< sc_lv<32> > or_ln80_7_fu_697_p2;
    sc_signal< sc_lv<32> > add_ln80_24_fu_703_p2;
    sc_signal< sc_lv<64> > zext_ln117_3_fu_709_p1;
    sc_signal< sc_lv<32> > or_ln80_8_fu_719_p2;
    sc_signal< sc_lv<32> > add_ln80_25_fu_725_p2;
    sc_signal< sc_lv<64> > zext_ln118_3_fu_731_p1;
    sc_signal< sc_lv<64> > shl_ln118_3_fu_735_p2;
    sc_signal< sc_lv<64> > or_ln118_6_fu_741_p2;
    sc_signal< sc_lv<64> > shl_ln117_3_fu_713_p2;
    sc_signal< sc_lv<2> > tmp_fu_769_p5;
    sc_signal< sc_lv<64> > tmp_fu_769_p6;
    sc_signal< sc_lv<64> > ap_return_preg;
    sc_signal< sc_lv<19> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<19> ap_ST_fsm_state1;
    static const sc_lv<19> ap_ST_fsm_state2;
    static const sc_lv<19> ap_ST_fsm_state3;
    static const sc_lv<19> ap_ST_fsm_state4;
    static const sc_lv<19> ap_ST_fsm_state5;
    static const sc_lv<19> ap_ST_fsm_state6;
    static const sc_lv<19> ap_ST_fsm_state7;
    static const sc_lv<19> ap_ST_fsm_state8;
    static const sc_lv<19> ap_ST_fsm_state9;
    static const sc_lv<19> ap_ST_fsm_state10;
    static const sc_lv<19> ap_ST_fsm_state11;
    static const sc_lv<19> ap_ST_fsm_state12;
    static const sc_lv<19> ap_ST_fsm_state13;
    static const sc_lv<19> ap_ST_fsm_state14;
    static const sc_lv<19> ap_ST_fsm_state15;
    static const sc_lv<19> ap_ST_fsm_state16;
    static const sc_lv<19> ap_ST_fsm_state17;
    static const sc_lv<19> ap_ST_fsm_state18;
    static const sc_lv<19> ap_ST_fsm_state19;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_40000000;
    static const sc_lv<32> ap_const_lv32_40400000;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFC;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln80_18_fu_542_p2();
    void thread_add_ln80_19_fu_548_p2();
    void thread_add_ln80_20_fu_587_p2();
    void thread_add_ln80_21_fu_603_p2();
    void thread_add_ln80_22_fu_642_p2();
    void thread_add_ln80_23_fu_664_p2();
    void thread_add_ln80_24_fu_703_p2();
    void thread_add_ln80_25_fu_725_p2();
    void thread_add_ln80_fu_526_p2();
    void thread_add_ln84_fu_306_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
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
    void thread_ap_ready();
    void thread_ap_return();
    void thread_collisions_0_fu_569_p2();
    void thread_collisions_1_fu_624_p2();
    void thread_collisions_2_fu_685_p2();
    void thread_collisions_3_fu_746_p2();
    void thread_grp_lineIntersectsPlane_fu_207_ap_start();
    void thread_grp_lineIntersectsPlane_fu_207_plane();
    void thread_grp_pointOnSegment_fu_222_ap_start();
    void thread_i_fu_759_p2();
    void thread_icmp_ln132_fu_753_p2();
    void thread_icmp_ln84_7_fu_312_p2();
    void thread_icmp_ln84_8_fu_326_p2();
    void thread_icmp_ln84_9_fu_340_p2();
    void thread_icmp_ln84_fu_474_p2();
    void thread_or_ln118_2_fu_619_p2();
    void thread_or_ln118_4_fu_680_p2();
    void thread_or_ln118_6_fu_741_p2();
    void thread_or_ln118_fu_564_p2();
    void thread_or_ln80_5_fu_636_p2();
    void thread_or_ln80_6_fu_658_p2();
    void thread_or_ln80_7_fu_697_p2();
    void thread_or_ln80_8_fu_719_p2();
    void thread_or_ln80_fu_581_p2();
    void thread_returnCollisions_fu_783_p2();
    void thread_select_ln84_35_fu_332_p3();
    void thread_select_ln84_36_fu_346_p3();
    void thread_select_ln84_37_fu_354_p3();
    void thread_select_ln84_38_fu_362_p3();
    void thread_select_ln84_39_fu_370_p3();
    void thread_select_ln84_40_fu_378_p3();
    void thread_select_ln84_41_fu_386_p3();
    void thread_select_ln84_42_fu_394_p3();
    void thread_select_ln84_43_fu_402_p3();
    void thread_select_ln84_44_fu_410_p3();
    void thread_select_ln84_45_fu_418_p3();
    void thread_select_ln84_46_fu_426_p3();
    void thread_select_ln84_47_fu_434_p3();
    void thread_select_ln84_48_fu_442_p3();
    void thread_select_ln84_49_fu_450_p3();
    void thread_select_ln84_50_fu_458_p3();
    void thread_select_ln84_51_fu_466_p3();
    void thread_select_ln84_fu_318_p3();
    void thread_shl_ln117_1_fu_597_p2();
    void thread_shl_ln117_2_fu_652_p2();
    void thread_shl_ln117_3_fu_713_p2();
    void thread_shl_ln117_fu_536_p2();
    void thread_shl_ln118_1_fu_613_p2();
    void thread_shl_ln118_2_fu_674_p2();
    void thread_shl_ln118_3_fu_735_p2();
    void thread_shl_ln118_fu_558_p2();
    void thread_shl_ln80_11_fu_575_p2();
    void thread_shl_ln80_12_fu_630_p2();
    void thread_shl_ln80_13_fu_691_p2();
    void thread_shl_ln80_fu_520_p2();
    void thread_tmp_fu_769_p5();
    void thread_zext_ln117_1_fu_593_p1();
    void thread_zext_ln117_2_fu_648_p1();
    void thread_zext_ln117_3_fu_709_p1();
    void thread_zext_ln117_fu_532_p1();
    void thread_zext_ln118_1_fu_609_p1();
    void thread_zext_ln118_2_fu_670_p1();
    void thread_zext_ln118_3_fu_731_p1();
    void thread_zext_ln118_fu_554_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif