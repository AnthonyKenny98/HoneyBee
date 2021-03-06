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

#include "honeybee_faddfsubbkb.h"
#include "honeybee_fadd_32ncud.h"
#include "honeybee_fsub_32ndEe.h"
#include "honeybee_fmul_32neOg.h"
#include "honeybee_fdiv_32nfYi.h"

namespace ap_rtl {

struct lineIntersectsPlane : public sc_module {
    // Port declarations 16
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
    sc_in< sc_lv<32> > plane;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<32> > ap_return_2;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    lineIntersectsPlane(sc_module_name name);
    SC_HAS_PROCESS(lineIntersectsPlane);

    ~lineIntersectsPlane();

    sc_trace_file* mVcdFile;

    honeybee_faddfsubbkb<1,4,32,32,32>* honeybee_faddfsubbkb_U1;
    honeybee_faddfsubbkb<1,4,32,32,32>* honeybee_faddfsubbkb_U2;
    honeybee_fadd_32ncud<1,4,32,32,32>* honeybee_fadd_32ncud_U3;
    honeybee_fsub_32ndEe<1,4,32,32,32>* honeybee_fsub_32ndEe_U4;
    honeybee_fmul_32neOg<1,3,32,32,32>* honeybee_fmul_32neOg_U5;
    honeybee_fmul_32neOg<1,3,32,32,32>* honeybee_fmul_32neOg_U6;
    honeybee_fmul_32neOg<1,3,32,32,32>* honeybee_fmul_32neOg_U7;
    honeybee_fdiv_32nfYi<1,12,32,32,32>* honeybee_fdiv_32nfYi_U8;
    sc_signal< sc_lv<45> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > grp_fu_64_p2;
    sc_signal< sc_lv<32> > reg_108;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<32> > grp_fu_89_p2;
    sc_signal< sc_lv<32> > reg_119;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state41;
    sc_signal< sc_lv<32> > grp_fu_94_p2;
    sc_signal< sc_lv<32> > reg_126;
    sc_signal< sc_lv<32> > grp_fu_99_p2;
    sc_signal< sc_lv<32> > reg_132;
    sc_signal< sc_lv<32> > grp_fu_72_p2;
    sc_signal< sc_lv<32> > reg_138;
    sc_signal< sc_lv<32> > xor_ln20_fu_149_p2;
    sc_signal< sc_lv<32> > xor_ln20_reg_183;
    sc_signal< sc_lv<32> > bitcast_ln20_1_fu_155_p1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<32> > tmp_19_i_reg_215;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<32> > tmp_21_i_reg_220;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<32> > grp_fu_79_p2;
    sc_signal< sc_lv<32> > tmp_23_i_reg_237;
    sc_signal< sc_lv<32> > grp_fu_83_p2;
    sc_signal< sc_lv<32> > tmp_24_i_reg_242;
    sc_signal< sc_lv<32> > grp_fu_104_p2;
    sc_signal< sc_lv<32> > T_reg_248;
    sc_signal< sc_logic > ap_CS_fsm_state38;
    sc_signal< sc_lv<32> > grp_fu_64_p0;
    sc_signal< sc_lv<32> > grp_fu_64_p1;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state42;
    sc_signal< sc_lv<32> > grp_fu_72_p0;
    sc_signal< sc_lv<32> > grp_fu_72_p1;
    sc_signal< sc_lv<32> > grp_fu_79_p0;
    sc_signal< sc_lv<32> > grp_fu_79_p1;
    sc_signal< sc_lv<32> > grp_fu_89_p0;
    sc_signal< sc_lv<32> > grp_fu_89_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state39;
    sc_signal< sc_lv<32> > grp_fu_94_p0;
    sc_signal< sc_lv<32> > grp_fu_94_p1;
    sc_signal< sc_lv<32> > grp_fu_99_p0;
    sc_signal< sc_lv<32> > grp_fu_99_p1;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<32> > bitcast_ln20_fu_145_p1;
    sc_signal< sc_logic > ap_CS_fsm_state45;
    sc_signal< sc_lv<2> > grp_fu_64_opcode;
    sc_signal< sc_lv<2> > grp_fu_72_opcode;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<32> > ap_return_2_preg;
    sc_signal< sc_lv<45> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<45> ap_ST_fsm_state1;
    static const sc_lv<45> ap_ST_fsm_state2;
    static const sc_lv<45> ap_ST_fsm_state3;
    static const sc_lv<45> ap_ST_fsm_state4;
    static const sc_lv<45> ap_ST_fsm_state5;
    static const sc_lv<45> ap_ST_fsm_state6;
    static const sc_lv<45> ap_ST_fsm_state7;
    static const sc_lv<45> ap_ST_fsm_state8;
    static const sc_lv<45> ap_ST_fsm_state9;
    static const sc_lv<45> ap_ST_fsm_state10;
    static const sc_lv<45> ap_ST_fsm_state11;
    static const sc_lv<45> ap_ST_fsm_state12;
    static const sc_lv<45> ap_ST_fsm_state13;
    static const sc_lv<45> ap_ST_fsm_state14;
    static const sc_lv<45> ap_ST_fsm_state15;
    static const sc_lv<45> ap_ST_fsm_state16;
    static const sc_lv<45> ap_ST_fsm_state17;
    static const sc_lv<45> ap_ST_fsm_state18;
    static const sc_lv<45> ap_ST_fsm_state19;
    static const sc_lv<45> ap_ST_fsm_state20;
    static const sc_lv<45> ap_ST_fsm_state21;
    static const sc_lv<45> ap_ST_fsm_state22;
    static const sc_lv<45> ap_ST_fsm_state23;
    static const sc_lv<45> ap_ST_fsm_state24;
    static const sc_lv<45> ap_ST_fsm_state25;
    static const sc_lv<45> ap_ST_fsm_state26;
    static const sc_lv<45> ap_ST_fsm_state27;
    static const sc_lv<45> ap_ST_fsm_state28;
    static const sc_lv<45> ap_ST_fsm_state29;
    static const sc_lv<45> ap_ST_fsm_state30;
    static const sc_lv<45> ap_ST_fsm_state31;
    static const sc_lv<45> ap_ST_fsm_state32;
    static const sc_lv<45> ap_ST_fsm_state33;
    static const sc_lv<45> ap_ST_fsm_state34;
    static const sc_lv<45> ap_ST_fsm_state35;
    static const sc_lv<45> ap_ST_fsm_state36;
    static const sc_lv<45> ap_ST_fsm_state37;
    static const sc_lv<45> ap_ST_fsm_state38;
    static const sc_lv<45> ap_ST_fsm_state39;
    static const sc_lv<45> ap_ST_fsm_state40;
    static const sc_lv<45> ap_ST_fsm_state41;
    static const sc_lv<45> ap_ST_fsm_state42;
    static const sc_lv<45> ap_ST_fsm_state43;
    static const sc_lv<45> ap_ST_fsm_state44;
    static const sc_lv<45> ap_ST_fsm_state45;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_28;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_25;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_29;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_26;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_80000000;
    static const sc_lv<32> ap_const_lv32_2C;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state38();
    void thread_ap_CS_fsm_state39();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state41();
    void thread_ap_CS_fsm_state42();
    void thread_ap_CS_fsm_state45();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_bitcast_ln20_1_fu_155_p1();
    void thread_bitcast_ln20_fu_145_p1();
    void thread_grp_fu_64_opcode();
    void thread_grp_fu_64_p0();
    void thread_grp_fu_64_p1();
    void thread_grp_fu_72_opcode();
    void thread_grp_fu_72_p0();
    void thread_grp_fu_72_p1();
    void thread_grp_fu_79_p0();
    void thread_grp_fu_79_p1();
    void thread_grp_fu_89_p0();
    void thread_grp_fu_89_p1();
    void thread_grp_fu_94_p0();
    void thread_grp_fu_94_p1();
    void thread_grp_fu_99_p0();
    void thread_grp_fu_99_p1();
    void thread_xor_ln20_fu_149_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
