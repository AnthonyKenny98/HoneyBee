// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct {
        float x;
        float y;
        float z;
       } point;
       typedef point point_t;

          typedef struct {
              point_t p1;
              point_t p2;
             } edge;
             typedef edge edge_t;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "edge_p1_x"
#define AUTOTB_TVIN_edge_p1_x  "../tv/cdatafile/c.honeybee.autotvin_edge_p1_x.dat"
// wrapc file define: "edge_p1_y"
#define AUTOTB_TVIN_edge_p1_y  "../tv/cdatafile/c.honeybee.autotvin_edge_p1_y.dat"
// wrapc file define: "edge_p1_z"
#define AUTOTB_TVIN_edge_p1_z  "../tv/cdatafile/c.honeybee.autotvin_edge_p1_z.dat"
// wrapc file define: "edge_p2_x"
#define AUTOTB_TVIN_edge_p2_x  "../tv/cdatafile/c.honeybee.autotvin_edge_p2_x.dat"
// wrapc file define: "edge_p2_y"
#define AUTOTB_TVIN_edge_p2_y  "../tv/cdatafile/c.honeybee.autotvin_edge_p2_y.dat"
// wrapc file define: "edge_p2_z"
#define AUTOTB_TVIN_edge_p2_z  "../tv/cdatafile/c.honeybee.autotvin_edge_p2_z.dat"
// wrapc file define: "ap_return"
#define AUTOTB_TVOUT_ap_return  "../tv/cdatafile/c.honeybee.autotvout_ap_return.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "ap_return"
#define AUTOTB_TVOUT_PC_ap_return  "../tv/rtldatafile/rtl.honeybee.autotvout_ap_return.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			edge_p1_x_depth = 0;
			edge_p1_y_depth = 0;
			edge_p1_z_depth = 0;
			edge_p2_x_depth = 0;
			edge_p2_y_depth = 0;
			edge_p2_z_depth = 0;
			ap_return_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{edge_p1_x " << edge_p1_x_depth << "}\n";
			total_list << "{edge_p1_y " << edge_p1_y_depth << "}\n";
			total_list << "{edge_p1_z " << edge_p1_z_depth << "}\n";
			total_list << "{edge_p2_x " << edge_p2_x_depth << "}\n";
			total_list << "{edge_p2_y " << edge_p2_y_depth << "}\n";
			total_list << "{edge_p2_z " << edge_p2_z_depth << "}\n";
			total_list << "{ap_return " << ap_return_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int edge_p1_x_depth;
		int edge_p1_y_depth;
		int edge_p1_z_depth;
		int edge_p2_x_depth;
		int edge_p2_y_depth;
		int edge_p2_z_depth;
		int ap_return_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" long int honeybee (
edge_t edge);

extern "C" long int AESL_WRAP_honeybee (
edge_t edge)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		long int AESL_return;

		// output port post check: "ap_return"
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data

			sc_bv<64> ap_return_pc_buffer;
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'ap_return', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					ap_return_pc_buffer = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_ap_return, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_ap_return))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: ap_return
				{
					// bitslice(63, 0)
					// {
						// celement: return(63, 0)
						// {
							sc_lv<64> return_lv0_0_1_0;
						// }
					// }

					// bitslice(63, 0)
					{
						// celement: return(63, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									return_lv0_0_1_0.range(63, 0) = sc_bv<64>(ap_return_pc_buffer.range(63, 0));
								}
							}
						}
					}

					// bitslice(63, 0)
					{
						// celement: return(63, 0)
						{
							// carray: (0) => (1) @ (0)
							{
								// sub                    : 
								// ori_name               : AESL_return
								// sub_1st_elem           : 
								// ori_name_1st_elem      : AESL_return
								// output_left_conversion : AESL_return
								// output_type_conversion : (return_lv0_0_1_0).to_uint64()
								if (&(AESL_return) != NULL) // check the null address if the c port is array or others
								{
									AESL_return = (return_lv0_0_1_0).to_uint64();
								}
							}
						}
					}
				}
			}
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "edge_p1_x"
		char* tvin_edge_p1_x = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_edge_p1_x);

		// "edge_p1_y"
		char* tvin_edge_p1_y = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_edge_p1_y);

		// "edge_p1_z"
		char* tvin_edge_p1_z = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_edge_p1_z);

		// "edge_p2_x"
		char* tvin_edge_p2_x = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_edge_p2_x);

		// "edge_p2_y"
		char* tvin_edge_p2_y = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_edge_p2_y);

		// "edge_p2_z"
		char* tvin_edge_p2_z = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_edge_p2_z);

		// "ap_return"
		char* tvout_ap_return = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_ap_return);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_edge_p1_x, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_edge_p1_x, tvin_edge_p1_x);

		sc_bv<32> edge_p1_x_tvin_wrapc_buffer;

		// RTL Name: edge_p1_x
		{
			// bitslice(31, 0)
			{
				// celement: edge.p1.x(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : edge.p1.x
						// sub_1st_elem          : 
						// ori_name_1st_elem     : edge.p1.x
						// regulate_c_name       : edge_p1_x
						// input_type_conversion : *(int*)&edge.p1.x
						if (&(edge.p1.x) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> edge_p1_x_tmp_mem;
							edge_p1_x_tmp_mem = *(int*)&edge.p1.x;
							edge_p1_x_tvin_wrapc_buffer.range(31, 0) = edge_p1_x_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_edge_p1_x, "%s\n", (edge_p1_x_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_edge_p1_x, tvin_edge_p1_x);
		}

		tcl_file.set_num(1, &tcl_file.edge_p1_x_depth);
		sprintf(tvin_edge_p1_x, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_edge_p1_x, tvin_edge_p1_x);

		// [[transaction]]
		sprintf(tvin_edge_p1_y, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_edge_p1_y, tvin_edge_p1_y);

		sc_bv<32> edge_p1_y_tvin_wrapc_buffer;

		// RTL Name: edge_p1_y
		{
			// bitslice(31, 0)
			{
				// celement: edge.p1.y(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : edge.p1.y
						// sub_1st_elem          : 
						// ori_name_1st_elem     : edge.p1.y
						// regulate_c_name       : edge_p1_y
						// input_type_conversion : *(int*)&edge.p1.y
						if (&(edge.p1.y) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> edge_p1_y_tmp_mem;
							edge_p1_y_tmp_mem = *(int*)&edge.p1.y;
							edge_p1_y_tvin_wrapc_buffer.range(31, 0) = edge_p1_y_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_edge_p1_y, "%s\n", (edge_p1_y_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_edge_p1_y, tvin_edge_p1_y);
		}

		tcl_file.set_num(1, &tcl_file.edge_p1_y_depth);
		sprintf(tvin_edge_p1_y, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_edge_p1_y, tvin_edge_p1_y);

		// [[transaction]]
		sprintf(tvin_edge_p1_z, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_edge_p1_z, tvin_edge_p1_z);

		sc_bv<32> edge_p1_z_tvin_wrapc_buffer;

		// RTL Name: edge_p1_z
		{
			// bitslice(31, 0)
			{
				// celement: edge.p1.z(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : edge.p1.z
						// sub_1st_elem          : 
						// ori_name_1st_elem     : edge.p1.z
						// regulate_c_name       : edge_p1_z
						// input_type_conversion : *(int*)&edge.p1.z
						if (&(edge.p1.z) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> edge_p1_z_tmp_mem;
							edge_p1_z_tmp_mem = *(int*)&edge.p1.z;
							edge_p1_z_tvin_wrapc_buffer.range(31, 0) = edge_p1_z_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_edge_p1_z, "%s\n", (edge_p1_z_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_edge_p1_z, tvin_edge_p1_z);
		}

		tcl_file.set_num(1, &tcl_file.edge_p1_z_depth);
		sprintf(tvin_edge_p1_z, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_edge_p1_z, tvin_edge_p1_z);

		// [[transaction]]
		sprintf(tvin_edge_p2_x, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_edge_p2_x, tvin_edge_p2_x);

		sc_bv<32> edge_p2_x_tvin_wrapc_buffer;

		// RTL Name: edge_p2_x
		{
			// bitslice(31, 0)
			{
				// celement: edge.p2.x(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : edge.p2.x
						// sub_1st_elem          : 
						// ori_name_1st_elem     : edge.p2.x
						// regulate_c_name       : edge_p2_x
						// input_type_conversion : *(int*)&edge.p2.x
						if (&(edge.p2.x) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> edge_p2_x_tmp_mem;
							edge_p2_x_tmp_mem = *(int*)&edge.p2.x;
							edge_p2_x_tvin_wrapc_buffer.range(31, 0) = edge_p2_x_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_edge_p2_x, "%s\n", (edge_p2_x_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_edge_p2_x, tvin_edge_p2_x);
		}

		tcl_file.set_num(1, &tcl_file.edge_p2_x_depth);
		sprintf(tvin_edge_p2_x, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_edge_p2_x, tvin_edge_p2_x);

		// [[transaction]]
		sprintf(tvin_edge_p2_y, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_edge_p2_y, tvin_edge_p2_y);

		sc_bv<32> edge_p2_y_tvin_wrapc_buffer;

		// RTL Name: edge_p2_y
		{
			// bitslice(31, 0)
			{
				// celement: edge.p2.y(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : edge.p2.y
						// sub_1st_elem          : 
						// ori_name_1st_elem     : edge.p2.y
						// regulate_c_name       : edge_p2_y
						// input_type_conversion : *(int*)&edge.p2.y
						if (&(edge.p2.y) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> edge_p2_y_tmp_mem;
							edge_p2_y_tmp_mem = *(int*)&edge.p2.y;
							edge_p2_y_tvin_wrapc_buffer.range(31, 0) = edge_p2_y_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_edge_p2_y, "%s\n", (edge_p2_y_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_edge_p2_y, tvin_edge_p2_y);
		}

		tcl_file.set_num(1, &tcl_file.edge_p2_y_depth);
		sprintf(tvin_edge_p2_y, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_edge_p2_y, tvin_edge_p2_y);

		// [[transaction]]
		sprintf(tvin_edge_p2_z, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_edge_p2_z, tvin_edge_p2_z);

		sc_bv<32> edge_p2_z_tvin_wrapc_buffer;

		// RTL Name: edge_p2_z
		{
			// bitslice(31, 0)
			{
				// celement: edge.p2.z(31, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : edge.p2.z
						// sub_1st_elem          : 
						// ori_name_1st_elem     : edge.p2.z
						// regulate_c_name       : edge_p2_z
						// input_type_conversion : *(int*)&edge.p2.z
						if (&(edge.p2.z) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<32> edge_p2_z_tmp_mem;
							edge_p2_z_tmp_mem = *(int*)&edge.p2.z;
							edge_p2_z_tvin_wrapc_buffer.range(31, 0) = edge_p2_z_tmp_mem.range(31, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_edge_p2_z, "%s\n", (edge_p2_z_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_edge_p2_z, tvin_edge_p2_z);
		}

		tcl_file.set_num(1, &tcl_file.edge_p2_z_depth);
		sprintf(tvin_edge_p2_z, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_edge_p2_z, tvin_edge_p2_z);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		long int AESL_return = honeybee(edge);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_ap_return, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		sc_bv<64> ap_return_tvout_wrapc_buffer;

		// RTL Name: ap_return
		{
			// bitslice(63, 0)
			{
				// celement: return(63, 0)
				{
					// carray: (0) => (1) @ (0)
					{
						// sub                   : 
						// ori_name              : AESL_return
						// sub_1st_elem          : 
						// ori_name_1st_elem     : AESL_return
						// regulate_c_name       : return
						// input_type_conversion : AESL_return
						if (&(AESL_return) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> return_tmp_mem;
							return_tmp_mem = AESL_return;
							ap_return_tvout_wrapc_buffer.range(63, 0) = return_tmp_mem.range(63, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_ap_return, "%s\n", (ap_return_tvout_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);
		}

		tcl_file.set_num(1, &tcl_file.ap_return_depth);
		sprintf(tvout_ap_return, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_ap_return, tvout_ap_return);

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "edge_p1_x"
		delete [] tvin_edge_p1_x;
		// release memory allocation: "edge_p1_y"
		delete [] tvin_edge_p1_y;
		// release memory allocation: "edge_p1_z"
		delete [] tvin_edge_p1_z;
		// release memory allocation: "edge_p2_x"
		delete [] tvin_edge_p2_x;
		// release memory allocation: "edge_p2_y"
		delete [] tvin_edge_p2_y;
		// release memory allocation: "edge_p2_z"
		delete [] tvin_edge_p2_z;
		// release memory allocation: "ap_return"
		delete [] tvout_ap_return;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}

