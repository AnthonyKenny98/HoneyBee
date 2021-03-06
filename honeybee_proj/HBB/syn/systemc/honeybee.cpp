// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "honeybee.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic honeybee::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic honeybee::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> honeybee::ap_ST_fsm_state1 = "1";
const sc_lv<2> honeybee::ap_ST_fsm_state2 = "10";
const sc_lv<32> honeybee::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<4> honeybee::ap_const_lv4_0 = "0000";
const sc_lv<32> honeybee::ap_const_lv32_1 = "1";
const sc_lv<4> honeybee::ap_const_lv4_1 = "1";
const sc_lv<4> honeybee::ap_const_lv4_2 = "10";
const bool honeybee::ap_const_boolean_0 = false;
const bool honeybee::ap_const_boolean_1 = true;

honeybee::honeybee(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_checkAxis_fu_66 = new checkAxis("grp_checkAxis_fu_66");
    grp_checkAxis_fu_66->ap_clk(ap_clk);
    grp_checkAxis_fu_66->ap_rst(ap_rst);
    grp_checkAxis_fu_66->ap_start(grp_checkAxis_fu_66_ap_start);
    grp_checkAxis_fu_66->ap_done(grp_checkAxis_fu_66_ap_done);
    grp_checkAxis_fu_66->ap_idle(grp_checkAxis_fu_66_ap_idle);
    grp_checkAxis_fu_66->ap_ready(grp_checkAxis_fu_66_ap_ready);
    grp_checkAxis_fu_66->num(ap_var_for_const0);
    grp_checkAxis_fu_66->edge_p1_x(edge_p1_x);
    grp_checkAxis_fu_66->edge_p1_y(edge_p1_y);
    grp_checkAxis_fu_66->edge_p1_z(edge_p1_z);
    grp_checkAxis_fu_66->edge_p2_x(edge_p2_x);
    grp_checkAxis_fu_66->edge_p2_y(edge_p2_y);
    grp_checkAxis_fu_66->edge_p2_z(edge_p2_z);
    grp_checkAxis_fu_66->ap_return(grp_checkAxis_fu_66_ap_return);
    grp_checkAxis_fu_84 = new checkAxis("grp_checkAxis_fu_84");
    grp_checkAxis_fu_84->ap_clk(ap_clk);
    grp_checkAxis_fu_84->ap_rst(ap_rst);
    grp_checkAxis_fu_84->ap_start(grp_checkAxis_fu_84_ap_start);
    grp_checkAxis_fu_84->ap_done(grp_checkAxis_fu_84_ap_done);
    grp_checkAxis_fu_84->ap_idle(grp_checkAxis_fu_84_ap_idle);
    grp_checkAxis_fu_84->ap_ready(grp_checkAxis_fu_84_ap_ready);
    grp_checkAxis_fu_84->num(ap_var_for_const1);
    grp_checkAxis_fu_84->edge_p1_x(edge_p1_x);
    grp_checkAxis_fu_84->edge_p1_y(edge_p1_z);
    grp_checkAxis_fu_84->edge_p1_z(edge_p1_y);
    grp_checkAxis_fu_84->edge_p2_x(edge_p2_x);
    grp_checkAxis_fu_84->edge_p2_y(edge_p2_z);
    grp_checkAxis_fu_84->edge_p2_z(edge_p2_y);
    grp_checkAxis_fu_84->ap_return(grp_checkAxis_fu_84_ap_return);
    grp_checkAxis_fu_102 = new checkAxis("grp_checkAxis_fu_102");
    grp_checkAxis_fu_102->ap_clk(ap_clk);
    grp_checkAxis_fu_102->ap_rst(ap_rst);
    grp_checkAxis_fu_102->ap_start(grp_checkAxis_fu_102_ap_start);
    grp_checkAxis_fu_102->ap_done(grp_checkAxis_fu_102_ap_done);
    grp_checkAxis_fu_102->ap_idle(grp_checkAxis_fu_102_ap_idle);
    grp_checkAxis_fu_102->ap_ready(grp_checkAxis_fu_102_ap_ready);
    grp_checkAxis_fu_102->num(ap_var_for_const2);
    grp_checkAxis_fu_102->edge_p1_x(edge_p1_z);
    grp_checkAxis_fu_102->edge_p1_y(edge_p1_y);
    grp_checkAxis_fu_102->edge_p1_z(edge_p1_x);
    grp_checkAxis_fu_102->edge_p2_x(edge_p2_z);
    grp_checkAxis_fu_102->edge_p2_y(edge_p2_y);
    grp_checkAxis_fu_102->edge_p2_z(edge_p2_x);
    grp_checkAxis_fu_102->ap_return(grp_checkAxis_fu_102_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state2_on_subcall_done);
    sensitive << ( grp_checkAxis_fu_66_ap_done );
    sensitive << ( grp_checkAxis_fu_84_ap_done );
    sensitive << ( grp_checkAxis_fu_102_ap_done );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_METHOD(thread_ap_return);
    sensitive << ( grp_checkAxis_fu_84_ap_return );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( or_ln153_fu_120_p2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_METHOD(thread_grp_checkAxis_fu_102_ap_start);
    sensitive << ( grp_checkAxis_fu_102_ap_start_reg );

    SC_METHOD(thread_grp_checkAxis_fu_66_ap_start);
    sensitive << ( grp_checkAxis_fu_66_ap_start_reg );

    SC_METHOD(thread_grp_checkAxis_fu_84_ap_start);
    sensitive << ( grp_checkAxis_fu_84_ap_start_reg );

    SC_METHOD(thread_or_ln153_fu_120_p2);
    sensitive << ( grp_checkAxis_fu_66_ap_return );
    sensitive << ( grp_checkAxis_fu_102_ap_return );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_block_state2_on_subcall_done );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    SC_THREAD(thread_ap_var_for_const1);

    SC_THREAD(thread_ap_var_for_const2);

    ap_CS_fsm = "01";
    grp_checkAxis_fu_66_ap_start_reg = SC_LOGIC_0;
    grp_checkAxis_fu_84_ap_start_reg = SC_LOGIC_0;
    grp_checkAxis_fu_102_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "honeybee_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, edge_p1_x, "(port)edge_p1_x");
    sc_trace(mVcdFile, edge_p1_y, "(port)edge_p1_y");
    sc_trace(mVcdFile, edge_p1_z, "(port)edge_p1_z");
    sc_trace(mVcdFile, edge_p2_x, "(port)edge_p2_x");
    sc_trace(mVcdFile, edge_p2_y, "(port)edge_p2_y");
    sc_trace(mVcdFile, edge_p2_z, "(port)edge_p2_z");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, grp_checkAxis_fu_66_ap_start, "grp_checkAxis_fu_66_ap_start");
    sc_trace(mVcdFile, grp_checkAxis_fu_66_ap_done, "grp_checkAxis_fu_66_ap_done");
    sc_trace(mVcdFile, grp_checkAxis_fu_66_ap_idle, "grp_checkAxis_fu_66_ap_idle");
    sc_trace(mVcdFile, grp_checkAxis_fu_66_ap_ready, "grp_checkAxis_fu_66_ap_ready");
    sc_trace(mVcdFile, grp_checkAxis_fu_66_ap_return, "grp_checkAxis_fu_66_ap_return");
    sc_trace(mVcdFile, grp_checkAxis_fu_84_ap_start, "grp_checkAxis_fu_84_ap_start");
    sc_trace(mVcdFile, grp_checkAxis_fu_84_ap_done, "grp_checkAxis_fu_84_ap_done");
    sc_trace(mVcdFile, grp_checkAxis_fu_84_ap_idle, "grp_checkAxis_fu_84_ap_idle");
    sc_trace(mVcdFile, grp_checkAxis_fu_84_ap_ready, "grp_checkAxis_fu_84_ap_ready");
    sc_trace(mVcdFile, grp_checkAxis_fu_84_ap_return, "grp_checkAxis_fu_84_ap_return");
    sc_trace(mVcdFile, grp_checkAxis_fu_102_ap_start, "grp_checkAxis_fu_102_ap_start");
    sc_trace(mVcdFile, grp_checkAxis_fu_102_ap_done, "grp_checkAxis_fu_102_ap_done");
    sc_trace(mVcdFile, grp_checkAxis_fu_102_ap_idle, "grp_checkAxis_fu_102_ap_idle");
    sc_trace(mVcdFile, grp_checkAxis_fu_102_ap_ready, "grp_checkAxis_fu_102_ap_ready");
    sc_trace(mVcdFile, grp_checkAxis_fu_102_ap_return, "grp_checkAxis_fu_102_ap_return");
    sc_trace(mVcdFile, grp_checkAxis_fu_66_ap_start_reg, "grp_checkAxis_fu_66_ap_start_reg");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, grp_checkAxis_fu_84_ap_start_reg, "grp_checkAxis_fu_84_ap_start_reg");
    sc_trace(mVcdFile, grp_checkAxis_fu_102_ap_start_reg, "grp_checkAxis_fu_102_ap_start_reg");
    sc_trace(mVcdFile, or_ln153_fu_120_p2, "or_ln153_fu_120_p2");
    sc_trace(mVcdFile, ap_block_state2_on_subcall_done, "ap_block_state2_on_subcall_done");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("honeybee.hdltvin.dat");
    mHdltvoutHandle.open("honeybee.hdltvout.dat");
}

honeybee::~honeybee() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete grp_checkAxis_fu_66;
    delete grp_checkAxis_fu_84;
    delete grp_checkAxis_fu_102;
}

void honeybee::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_lv4_0;
}

void honeybee::thread_ap_var_for_const1() {
    ap_var_for_const1 = ap_const_lv4_1;
}

void honeybee::thread_ap_var_for_const2() {
    ap_var_for_const2 = ap_const_lv4_2;
}

void honeybee::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_checkAxis_fu_102_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_checkAxis_fu_102_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_checkAxis_fu_102_ap_ready.read())) {
            grp_checkAxis_fu_102_ap_start_reg = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_checkAxis_fu_66_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_checkAxis_fu_66_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_checkAxis_fu_66_ap_ready.read())) {
            grp_checkAxis_fu_66_ap_start_reg = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_checkAxis_fu_84_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_checkAxis_fu_84_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_checkAxis_fu_84_ap_ready.read())) {
            grp_checkAxis_fu_84_ap_start_reg = ap_const_logic_0;
        }
    }
}

void honeybee::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void honeybee::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void honeybee::thread_ap_block_state2_on_subcall_done() {
    ap_block_state2_on_subcall_done = (esl_seteq<1,1,1>(ap_const_logic_0, grp_checkAxis_fu_66_ap_done.read()) || esl_seteq<1,1,1>(ap_const_logic_0, grp_checkAxis_fu_84_ap_done.read()) || esl_seteq<1,1,1>(ap_const_logic_0, grp_checkAxis_fu_102_ap_done.read()));
}

void honeybee::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_block_state2_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void honeybee::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void honeybee::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_block_state2_on_subcall_done.read(), ap_const_boolean_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void honeybee::thread_ap_return() {
    ap_return = (or_ln153_fu_120_p2.read() | grp_checkAxis_fu_84_ap_return.read());
}

void honeybee::thread_grp_checkAxis_fu_102_ap_start() {
    grp_checkAxis_fu_102_ap_start = grp_checkAxis_fu_102_ap_start_reg.read();
}

void honeybee::thread_grp_checkAxis_fu_66_ap_start() {
    grp_checkAxis_fu_66_ap_start = grp_checkAxis_fu_66_ap_start_reg.read();
}

void honeybee::thread_grp_checkAxis_fu_84_ap_start() {
    grp_checkAxis_fu_84_ap_start = grp_checkAxis_fu_84_ap_start_reg.read();
}

void honeybee::thread_or_ln153_fu_120_p2() {
    or_ln153_fu_120_p2 = (grp_checkAxis_fu_66_ap_return.read() | grp_checkAxis_fu_102_ap_return.read());
}

void honeybee::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_block_state2_on_subcall_done.read(), ap_const_boolean_0))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

void honeybee::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"edge_p1_x\" :  \"" << edge_p1_x.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"edge_p1_y\" :  \"" << edge_p1_y.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"edge_p1_z\" :  \"" << edge_p1_z.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"edge_p2_x\" :  \"" << edge_p2_x.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"edge_p2_y\" :  \"" << edge_p2_y.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"edge_p2_z\" :  \"" << edge_p2_z.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_return\" :  \"" << ap_return.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

