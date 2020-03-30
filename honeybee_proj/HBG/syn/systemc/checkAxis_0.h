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
#include "checkAxis_2_collihbi.h"

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

    checkAxis_2_collihbi* collisions_U;
    lineIntersectsPlane* grp_lineIntersectsPlane_fu_190;
    pointOnSegment* grp_pointOnSegment_fu_205;
    p_hls_fptosi_float_i* grp_p_hls_fptosi_float_i_fu_218;
    p_hls_fptosi_float_i* grp_p_hls_fptosi_float_i_fu_223;
    sc_signal< sc_lv<20> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > reg_240;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_190_ap_ready;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_190_ap_done;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > reg_246;
    sc_signal< sc_lv<32> > reg_252;
    sc_signal< sc_lv<32> > grp_p_hls_fptosi_float_i_fu_218_ap_return;
    sc_signal< sc_lv<32> > reg_257;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > grp_pointOnSegment_fu_205_ap_ready;
    sc_signal< sc_logic > grp_pointOnSegment_fu_205_ap_done;
    sc_signal< sc_lv<1> > grp_pointOnSegment_fu_205_ap_return;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<32> > grp_p_hls_fptosi_float_i_fu_223_ap_return;
    sc_signal< sc_lv<32> > reg_261;
    sc_signal< sc_lv<2> > add_ln84_fu_265_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_s_reg_565;
    sc_signal< sc_lv<1> > tmp_43_1_reg_569;
    sc_signal< sc_lv<1> > tmp_43_2_reg_573;
    sc_signal< sc_lv<1> > tmp_43_3_reg_577;
    sc_signal< sc_lv<3> > i_fu_504_p2;
    sc_signal< sc_lv<3> > i_reg_584;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<1> > icmp_ln138_fu_498_p2;
    sc_signal< sc_lv<64> > returnCollisions_fu_515_p2;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<2> > collisions_address0;
    sc_signal< sc_logic > collisions_ce0;
    sc_signal< sc_logic > collisions_we0;
    sc_signal< sc_lv<64> > collisions_d0;
    sc_signal< sc_lv<64> > collisions_q0;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_190_ap_start;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_190_ap_idle;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_190_plane;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_190_ap_return_0;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_190_ap_return_1;
    sc_signal< sc_lv<32> > grp_lineIntersectsPlane_fu_190_ap_return_2;
    sc_signal< sc_logic > grp_pointOnSegment_fu_205_ap_start;
    sc_signal< sc_logic > grp_pointOnSegment_fu_205_ap_idle;
    sc_signal< sc_logic > grp_p_hls_fptosi_float_i_fu_218_ap_ready;
    sc_signal< sc_logic > grp_p_hls_fptosi_float_i_fu_223_ap_ready;
    sc_signal< sc_lv<2> > phi_ln84_reg_156;
    sc_signal< sc_lv<1> > icmp_ln84_fu_276_p2;
    sc_signal< sc_lv<64> > returnCollisions_0_reg_167;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<3> > i_1_reg_179;
    sc_signal< sc_logic > grp_lineIntersectsPlane_fu_190_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > grp_pointOnSegment_fu_205_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<64> > zext_ln84_fu_271_p1;
    sc_signal< sc_lv<64> > zext_ln139_fu_510_p1;
    sc_signal< sc_lv<64> > or_ln122_fu_326_p2;
    sc_signal< sc_lv<64> > or_ln122_1_fu_377_p2;
    sc_signal< sc_lv<64> > or_ln122_2_fu_434_p2;
    sc_signal< sc_lv<64> > or_ln122_3_fu_491_p2;
    sc_signal< sc_lv<32> > shl_ln80_fu_282_p2;
    sc_signal< sc_lv<32> > add_ln80_fu_288_p2;
    sc_signal< sc_lv<64> > zext_ln121_fu_294_p1;
    sc_signal< sc_lv<32> > add_ln80_18_fu_304_p2;
    sc_signal< sc_lv<32> > add_ln80_19_fu_310_p2;
    sc_signal< sc_lv<64> > zext_ln122_fu_316_p1;
    sc_signal< sc_lv<64> > shl_ln122_fu_320_p2;
    sc_signal< sc_lv<64> > shl_ln121_fu_298_p2;
    sc_signal< sc_lv<32> > shl_ln80_11_fu_333_p2;
    sc_signal< sc_lv<32> > or_ln80_fu_339_p2;
    sc_signal< sc_lv<32> > add_ln80_20_fu_345_p2;
    sc_signal< sc_lv<64> > zext_ln121_1_fu_351_p1;
    sc_signal< sc_lv<32> > add_ln80_21_fu_361_p2;
    sc_signal< sc_lv<64> > zext_ln122_1_fu_367_p1;
    sc_signal< sc_lv<64> > shl_ln122_1_fu_371_p2;
    sc_signal< sc_lv<64> > shl_ln121_1_fu_355_p2;
    sc_signal< sc_lv<32> > shl_ln80_12_fu_384_p2;
    sc_signal< sc_lv<32> > or_ln80_5_fu_390_p2;
    sc_signal< sc_lv<32> > add_ln80_22_fu_396_p2;
    sc_signal< sc_lv<64> > zext_ln121_2_fu_402_p1;
    sc_signal< sc_lv<32> > or_ln80_6_fu_412_p2;
    sc_signal< sc_lv<32> > add_ln80_23_fu_418_p2;
    sc_signal< sc_lv<64> > zext_ln122_2_fu_424_p1;
    sc_signal< sc_lv<64> > shl_ln122_2_fu_428_p2;
    sc_signal< sc_lv<64> > shl_ln121_2_fu_406_p2;
    sc_signal< sc_lv<32> > shl_ln80_13_fu_441_p2;
    sc_signal< sc_lv<32> > or_ln80_7_fu_447_p2;
    sc_signal< sc_lv<32> > add_ln80_24_fu_453_p2;
    sc_signal< sc_lv<64> > zext_ln121_3_fu_459_p1;
    sc_signal< sc_lv<32> > or_ln80_8_fu_469_p2;
    sc_signal< sc_lv<32> > add_ln80_25_fu_475_p2;
    sc_signal< sc_lv<64> > zext_ln122_3_fu_481_p1;
    sc_signal< sc_lv<64> > shl_ln122_3_fu_485_p2;
    sc_signal< sc_lv<64> > shl_ln121_3_fu_463_p2;
    sc_signal< sc_lv<64> > ap_return_preg;
    sc_signal< sc_lv<20> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<20> ap_ST_fsm_state1;
    static const sc_lv<20> ap_ST_fsm_state2;
    static const sc_lv<20> ap_ST_fsm_state3;
    static const sc_lv<20> ap_ST_fsm_state4;
    static const sc_lv<20> ap_ST_fsm_state5;
    static const sc_lv<20> ap_ST_fsm_state6;
    static const sc_lv<20> ap_ST_fsm_state7;
    static const sc_lv<20> ap_ST_fsm_state8;
    static const sc_lv<20> ap_ST_fsm_state9;
    static const sc_lv<20> ap_ST_fsm_state10;
    static const sc_lv<20> ap_ST_fsm_state11;
    static const sc_lv<20> ap_ST_fsm_state12;
    static const sc_lv<20> ap_ST_fsm_state13;
    static const sc_lv<20> ap_ST_fsm_state14;
    static const sc_lv<20> ap_ST_fsm_state15;
    static const sc_lv<20> ap_ST_fsm_state16;
    static const sc_lv<20> ap_ST_fsm_state17;
    static const sc_lv<20> ap_ST_fsm_state18;
    static const sc_lv<20> ap_ST_fsm_state19;
    static const sc_lv<20> ap_ST_fsm_state20;
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
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_40000000;
    static const sc_lv<32> ap_const_lv32_40400000;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<32> ap_const_lv32_FFFFFFFC;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln80_18_fu_304_p2();
    void thread_add_ln80_19_fu_310_p2();
    void thread_add_ln80_20_fu_345_p2();
    void thread_add_ln80_21_fu_361_p2();
    void thread_add_ln80_22_fu_396_p2();
    void thread_add_ln80_23_fu_418_p2();
    void thread_add_ln80_24_fu_453_p2();
    void thread_add_ln80_25_fu_475_p2();
    void thread_add_ln80_fu_288_p2();
    void thread_add_ln84_fu_265_p2();
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
    void thread_ap_CS_fsm_state20();
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
    void thread_collisions_address0();
    void thread_collisions_ce0();
    void thread_collisions_d0();
    void thread_collisions_we0();
    void thread_grp_lineIntersectsPlane_fu_190_ap_start();
    void thread_grp_lineIntersectsPlane_fu_190_plane();
    void thread_grp_pointOnSegment_fu_205_ap_start();
    void thread_i_fu_504_p2();
    void thread_icmp_ln138_fu_498_p2();
    void thread_icmp_ln84_fu_276_p2();
    void thread_or_ln122_1_fu_377_p2();
    void thread_or_ln122_2_fu_434_p2();
    void thread_or_ln122_3_fu_491_p2();
    void thread_or_ln122_fu_326_p2();
    void thread_or_ln80_5_fu_390_p2();
    void thread_or_ln80_6_fu_412_p2();
    void thread_or_ln80_7_fu_447_p2();
    void thread_or_ln80_8_fu_469_p2();
    void thread_or_ln80_fu_339_p2();
    void thread_returnCollisions_fu_515_p2();
    void thread_shl_ln121_1_fu_355_p2();
    void thread_shl_ln121_2_fu_406_p2();
    void thread_shl_ln121_3_fu_463_p2();
    void thread_shl_ln121_fu_298_p2();
    void thread_shl_ln122_1_fu_371_p2();
    void thread_shl_ln122_2_fu_428_p2();
    void thread_shl_ln122_3_fu_485_p2();
    void thread_shl_ln122_fu_320_p2();
    void thread_shl_ln80_11_fu_333_p2();
    void thread_shl_ln80_12_fu_384_p2();
    void thread_shl_ln80_13_fu_441_p2();
    void thread_shl_ln80_fu_282_p2();
    void thread_zext_ln121_1_fu_351_p1();
    void thread_zext_ln121_2_fu_402_p1();
    void thread_zext_ln121_3_fu_459_p1();
    void thread_zext_ln121_fu_294_p1();
    void thread_zext_ln122_1_fu_367_p1();
    void thread_zext_ln122_2_fu_424_p1();
    void thread_zext_ln122_3_fu_481_p1();
    void thread_zext_ln122_fu_316_p1();
    void thread_zext_ln139_fu_510_p1();
    void thread_zext_ln84_fu_271_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
