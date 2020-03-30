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

#include "checkAxis_2.h"
#include "checkAxis_1.h"
#include "checkAxis_0.h"

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
    sc_out< sc_lv<64> > ap_return;


    // Module declarations
    honeybee(sc_module_name name);
    SC_HAS_PROCESS(honeybee);

    ~honeybee();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    checkAxis_2* grp_checkAxis_2_fu_64;
    checkAxis_1* grp_checkAxis_1_fu_80;
    checkAxis_0* grp_checkAxis_0_fu_96;
    sc_signal< sc_lv<2> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > grp_checkAxis_2_fu_64_ap_start;
    sc_signal< sc_logic > grp_checkAxis_2_fu_64_ap_done;
    sc_signal< sc_logic > grp_checkAxis_2_fu_64_ap_idle;
    sc_signal< sc_logic > grp_checkAxis_2_fu_64_ap_ready;
    sc_signal< sc_lv<64> > grp_checkAxis_2_fu_64_ap_return;
    sc_signal< sc_logic > grp_checkAxis_1_fu_80_ap_start;
    sc_signal< sc_logic > grp_checkAxis_1_fu_80_ap_done;
    sc_signal< sc_logic > grp_checkAxis_1_fu_80_ap_idle;
    sc_signal< sc_logic > grp_checkAxis_1_fu_80_ap_ready;
    sc_signal< sc_lv<64> > grp_checkAxis_1_fu_80_ap_return;
    sc_signal< sc_logic > grp_checkAxis_0_fu_96_ap_start;
    sc_signal< sc_logic > grp_checkAxis_0_fu_96_ap_done;
    sc_signal< sc_logic > grp_checkAxis_0_fu_96_ap_idle;
    sc_signal< sc_logic > grp_checkAxis_0_fu_96_ap_ready;
    sc_signal< sc_lv<64> > grp_checkAxis_0_fu_96_ap_return;
    sc_signal< sc_logic > grp_checkAxis_2_fu_64_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_checkAxis_1_fu_80_ap_start_reg;
    sc_signal< sc_logic > grp_checkAxis_0_fu_96_ap_start_reg;
    sc_signal< sc_lv<64> > or_ln159_fu_112_p2;
    sc_signal< bool > ap_block_state2_on_subcall_done;
    sc_signal< sc_lv<2> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<2> ap_ST_fsm_state1;
    static const sc_lv<2> ap_ST_fsm_state2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_state2_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_grp_checkAxis_0_fu_96_ap_start();
    void thread_grp_checkAxis_1_fu_80_ap_start();
    void thread_grp_checkAxis_2_fu_64_ap_start();
    void thread_or_ln159_fu_112_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
