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
const sc_lv<54> honeybee::ap_ST_fsm_state1 = "1";
const sc_lv<54> honeybee::ap_ST_fsm_state2 = "10";
const sc_lv<54> honeybee::ap_ST_fsm_state3 = "100";
const sc_lv<54> honeybee::ap_ST_fsm_state4 = "1000";
const sc_lv<54> honeybee::ap_ST_fsm_state5 = "10000";
const sc_lv<54> honeybee::ap_ST_fsm_state6 = "100000";
const sc_lv<54> honeybee::ap_ST_fsm_state7 = "1000000";
const sc_lv<54> honeybee::ap_ST_fsm_state8 = "10000000";
const sc_lv<54> honeybee::ap_ST_fsm_state9 = "100000000";
const sc_lv<54> honeybee::ap_ST_fsm_state10 = "1000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state11 = "10000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state12 = "100000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state15 = "100000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state16 = "1000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state17 = "10000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state18 = "100000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state19 = "1000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state20 = "10000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state21 = "100000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state22 = "1000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state23 = "10000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state24 = "100000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state25 = "1000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state26 = "10000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state27 = "100000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state28 = "1000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state29 = "10000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state30 = "100000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state31 = "1000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state32 = "10000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state33 = "100000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state34 = "1000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state35 = "10000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state36 = "100000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state37 = "1000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state38 = "10000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state39 = "100000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state40 = "1000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state41 = "10000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state42 = "100000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state43 = "1000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state44 = "10000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state45 = "100000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state46 = "1000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state47 = "10000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state48 = "100000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state49 = "1000000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state50 = "10000000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state51 = "100000000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state52 = "1000000000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state53 = "10000000000000000000000000000000000000000000000000000";
const sc_lv<54> honeybee::ap_ST_fsm_state54 = "100000000000000000000000000000000000000000000000000000";
const sc_lv<32> honeybee::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> honeybee::ap_const_lv32_34 = "110100";
const sc_lv<32> honeybee::ap_const_lv32_35 = "110101";
const bool honeybee::ap_const_boolean_1 = true;

honeybee::honeybee(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_checkAxis_2_fu_64 = new checkAxis_2("grp_checkAxis_2_fu_64");
    grp_checkAxis_2_fu_64->ap_clk(ap_clk);
    grp_checkAxis_2_fu_64->ap_rst(ap_rst);
    grp_checkAxis_2_fu_64->edge_p1_x(edge_p1_x);
    grp_checkAxis_2_fu_64->edge_p1_y(edge_p1_y);
    grp_checkAxis_2_fu_64->edge_p1_z(edge_p1_z);
    grp_checkAxis_2_fu_64->edge_p2_x(edge_p2_x);
    grp_checkAxis_2_fu_64->edge_p2_y(edge_p2_y);
    grp_checkAxis_2_fu_64->edge_p2_z(edge_p2_z);
    grp_checkAxis_2_fu_64->ap_return(grp_checkAxis_2_fu_64_ap_return);
    grp_checkAxis_1_fu_80 = new checkAxis_1("grp_checkAxis_1_fu_80");
    grp_checkAxis_1_fu_80->ap_clk(ap_clk);
    grp_checkAxis_1_fu_80->ap_rst(ap_rst);
    grp_checkAxis_1_fu_80->edge_p1_x(edge_p1_z);
    grp_checkAxis_1_fu_80->edge_p1_y(edge_p1_y);
    grp_checkAxis_1_fu_80->edge_p1_z(edge_p1_x);
    grp_checkAxis_1_fu_80->edge_p2_x(edge_p2_z);
    grp_checkAxis_1_fu_80->edge_p2_y(edge_p2_y);
    grp_checkAxis_1_fu_80->edge_p2_z(edge_p2_x);
    grp_checkAxis_1_fu_80->ap_return(grp_checkAxis_1_fu_80_ap_return);
    grp_checkAxis_0_fu_96 = new checkAxis_0("grp_checkAxis_0_fu_96");
    grp_checkAxis_0_fu_96->ap_clk(ap_clk);
    grp_checkAxis_0_fu_96->ap_rst(ap_rst);
    grp_checkAxis_0_fu_96->edge_p1_x(edge_p1_x);
    grp_checkAxis_0_fu_96->edge_p1_y(edge_p1_z);
    grp_checkAxis_0_fu_96->edge_p1_z(edge_p1_y);
    grp_checkAxis_0_fu_96->edge_p2_x(edge_p2_x);
    grp_checkAxis_0_fu_96->edge_p2_y(edge_p2_z);
    grp_checkAxis_0_fu_96->edge_p2_z(edge_p2_y);
    grp_checkAxis_0_fu_96->ap_return(grp_checkAxis_0_fu_96_ap_return);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state53);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state54);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state54 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state54 );

    SC_METHOD(thread_ap_return);
    sensitive << ( collisions_y_reg_168 );
    sensitive << ( ap_CS_fsm_state54 );
    sensitive << ( or_ln170_fu_112_p2 );

    SC_METHOD(thread_or_ln170_fu_112_p2);
    sensitive << ( collisions_z_reg_163 );
    sensitive << ( collisions_x_reg_173 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "000000000000000000000000000000000000000000000000000001";
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
    sc_trace(mVcdFile, grp_checkAxis_2_fu_64_ap_return, "grp_checkAxis_2_fu_64_ap_return");
    sc_trace(mVcdFile, collisions_z_reg_163, "collisions_z_reg_163");
    sc_trace(mVcdFile, ap_CS_fsm_state53, "ap_CS_fsm_state53");
    sc_trace(mVcdFile, grp_checkAxis_0_fu_96_ap_return, "grp_checkAxis_0_fu_96_ap_return");
    sc_trace(mVcdFile, collisions_y_reg_168, "collisions_y_reg_168");
    sc_trace(mVcdFile, grp_checkAxis_1_fu_80_ap_return, "grp_checkAxis_1_fu_80_ap_return");
    sc_trace(mVcdFile, collisions_x_reg_173, "collisions_x_reg_173");
    sc_trace(mVcdFile, ap_CS_fsm_state54, "ap_CS_fsm_state54");
    sc_trace(mVcdFile, or_ln170_fu_112_p2, "or_ln170_fu_112_p2");
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
    delete grp_checkAxis_2_fu_64;
    delete grp_checkAxis_1_fu_80;
    delete grp_checkAxis_0_fu_96;
}

void honeybee::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state53.read())) {
        collisions_x_reg_173 = grp_checkAxis_1_fu_80_ap_return.read();
        collisions_y_reg_168 = grp_checkAxis_0_fu_96_ap_return.read();
        collisions_z_reg_163 = grp_checkAxis_2_fu_64_ap_return.read();
    }
}

void honeybee::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void honeybee::thread_ap_CS_fsm_state53() {
    ap_CS_fsm_state53 = ap_CS_fsm.read()[52];
}

void honeybee::thread_ap_CS_fsm_state54() {
    ap_CS_fsm_state54 = ap_CS_fsm.read()[53];
}

void honeybee::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state54.read())) {
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
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state54.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void honeybee::thread_ap_return() {
    ap_return = (or_ln170_fu_112_p2.read() | collisions_y_reg_168.read());
}

void honeybee::thread_or_ln170_fu_112_p2() {
    or_ln170_fu_112_p2 = (collisions_z_reg_163.read() | collisions_x_reg_173.read());
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
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            ap_NS_fsm = ap_ST_fsm_state8;
            break;
        case 128 : 
            ap_NS_fsm = ap_ST_fsm_state9;
            break;
        case 256 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        case 512 : 
            ap_NS_fsm = ap_ST_fsm_state11;
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state12;
            break;
        case 2048 : 
            ap_NS_fsm = ap_ST_fsm_state13;
            break;
        case 4096 : 
            ap_NS_fsm = ap_ST_fsm_state14;
            break;
        case 8192 : 
            ap_NS_fsm = ap_ST_fsm_state15;
            break;
        case 16384 : 
            ap_NS_fsm = ap_ST_fsm_state16;
            break;
        case 32768 : 
            ap_NS_fsm = ap_ST_fsm_state17;
            break;
        case 65536 : 
            ap_NS_fsm = ap_ST_fsm_state18;
            break;
        case 131072 : 
            ap_NS_fsm = ap_ST_fsm_state19;
            break;
        case 262144 : 
            ap_NS_fsm = ap_ST_fsm_state20;
            break;
        case 524288 : 
            ap_NS_fsm = ap_ST_fsm_state21;
            break;
        case 1048576 : 
            ap_NS_fsm = ap_ST_fsm_state22;
            break;
        case 2097152 : 
            ap_NS_fsm = ap_ST_fsm_state23;
            break;
        case 4194304 : 
            ap_NS_fsm = ap_ST_fsm_state24;
            break;
        case 8388608 : 
            ap_NS_fsm = ap_ST_fsm_state25;
            break;
        case 16777216 : 
            ap_NS_fsm = ap_ST_fsm_state26;
            break;
        case 33554432 : 
            ap_NS_fsm = ap_ST_fsm_state27;
            break;
        case 67108864 : 
            ap_NS_fsm = ap_ST_fsm_state28;
            break;
        case 134217728 : 
            ap_NS_fsm = ap_ST_fsm_state29;
            break;
        case 268435456 : 
            ap_NS_fsm = ap_ST_fsm_state30;
            break;
        case 536870912 : 
            ap_NS_fsm = ap_ST_fsm_state31;
            break;
        case 1073741824 : 
            ap_NS_fsm = ap_ST_fsm_state32;
            break;
        case 2147483648 : 
            ap_NS_fsm = ap_ST_fsm_state33;
            break;
        case 4294967296 : 
            ap_NS_fsm = ap_ST_fsm_state34;
            break;
        case 8589934592 : 
            ap_NS_fsm = ap_ST_fsm_state35;
            break;
        case 17179869184 : 
            ap_NS_fsm = ap_ST_fsm_state36;
            break;
        case 34359738368 : 
            ap_NS_fsm = ap_ST_fsm_state37;
            break;
        case 68719476736 : 
            ap_NS_fsm = ap_ST_fsm_state38;
            break;
        case 137438953472 : 
            ap_NS_fsm = ap_ST_fsm_state39;
            break;
        case 274877906944 : 
            ap_NS_fsm = ap_ST_fsm_state40;
            break;
        case 549755813888 : 
            ap_NS_fsm = ap_ST_fsm_state41;
            break;
        case 1099511627776 : 
            ap_NS_fsm = ap_ST_fsm_state42;
            break;
        case 2199023255552 : 
            ap_NS_fsm = ap_ST_fsm_state43;
            break;
        case 4398046511104 : 
            ap_NS_fsm = ap_ST_fsm_state44;
            break;
        case 8796093022208 : 
            ap_NS_fsm = ap_ST_fsm_state45;
            break;
        case 17592186044416 : 
            ap_NS_fsm = ap_ST_fsm_state46;
            break;
        case 35184372088832 : 
            ap_NS_fsm = ap_ST_fsm_state47;
            break;
        case 70368744177664 : 
            ap_NS_fsm = ap_ST_fsm_state48;
            break;
        case 140737488355328 : 
            ap_NS_fsm = ap_ST_fsm_state49;
            break;
        case 281474976710656 : 
            ap_NS_fsm = ap_ST_fsm_state50;
            break;
        case 562949953421312 : 
            ap_NS_fsm = ap_ST_fsm_state51;
            break;
        case 1125899906842624 : 
            ap_NS_fsm = ap_ST_fsm_state52;
            break;
        case 2251799813685248 : 
            ap_NS_fsm = ap_ST_fsm_state53;
            break;
        case 4503599627370496 : 
            ap_NS_fsm = ap_ST_fsm_state54;
            break;
        case 9007199254740992 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
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

