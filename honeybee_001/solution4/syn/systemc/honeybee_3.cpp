#include "honeybee.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

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

