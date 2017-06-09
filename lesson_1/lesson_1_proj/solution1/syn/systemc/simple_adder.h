// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _simple_adder_HH_
#define _simple_adder_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct simple_adder : public sc_module {
    // Port declarations 7
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > a;
    sc_in< sc_lv<32> > b;
    sc_out< sc_lv<32> > ap_return;
    // Port declarations for the virtual clock. 
    sc_in_clk ap_virtual_clock;


    // Module declarations
    simple_adder(sc_module_name name);
    SC_HAS_PROCESS(simple_adder);

    ~simple_adder();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif