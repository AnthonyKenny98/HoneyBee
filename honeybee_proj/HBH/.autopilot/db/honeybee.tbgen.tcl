set moduleName honeybee
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {honeybee}
set C_modelType { int 64 }
set C_modelArgList {
	{ edge_p1_x float 32 regular  }
	{ edge_p1_y float 32 regular  }
	{ edge_p1_z float 32 regular  }
	{ edge_p2_x float 32 regular  }
	{ edge_p2_y float 32 regular  }
	{ edge_p2_z float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_p1_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge.p1.x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "edge_p1_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge.p1.y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "edge_p1_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge.p1.z","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "edge_p2_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge.p2.x","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "edge_p2_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge.p2.y","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "edge_p2_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge.p2.z","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64,"bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "return","cData": "Dout_t","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_p1_x sc_in sc_lv 32 signal 0 } 
	{ edge_p1_y sc_in sc_lv 32 signal 1 } 
	{ edge_p1_z sc_in sc_lv 32 signal 2 } 
	{ edge_p2_x sc_in sc_lv 32 signal 3 } 
	{ edge_p2_y sc_in sc_lv 32 signal 4 } 
	{ edge_p2_z sc_in sc_lv 32 signal 5 } 
	{ ap_return sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_p1_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_p1_x", "role": "default" }} , 
 	{ "name": "edge_p1_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_p1_y", "role": "default" }} , 
 	{ "name": "edge_p1_z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_p1_z", "role": "default" }} , 
 	{ "name": "edge_p2_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_p2_x", "role": "default" }} , 
 	{ "name": "edge_p2_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_p2_y", "role": "default" }} , 
 	{ "name": "edge_p2_z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_p2_z", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "166", "331"],
		"CDFG" : "honeybee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53", "EstimateLatencyMax" : "53",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64", "Parent" : "0", "Child" : ["2", "28", "54", "80", "106", "119", "132", "145", "158", "159", "160", "161", "162", "163", "164", "165"],
		"CDFG" : "checkAxis_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "51", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fsub_32nbkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fsub_32nbkb_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fsub_32nbkb_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fsub_32nbkb_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fsub_32nbkb_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fsub_32nbkb_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fadd_32ncud_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U23", "Parent" : "2"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fmul_32ndEe_U24", "Parent" : "2"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_132.honeybee_fdiv_32neOg_U25", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150", "Parent" : "1", "Child" : ["29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fsub_32nbkb_U1", "Parent" : "28"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fsub_32nbkb_U2", "Parent" : "28"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fsub_32nbkb_U3", "Parent" : "28"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fsub_32nbkb_U4", "Parent" : "28"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U5", "Parent" : "28"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U6", "Parent" : "28"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U7", "Parent" : "28"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U8", "Parent" : "28"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U9", "Parent" : "28"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fsub_32nbkb_U10", "Parent" : "28"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fsub_32nbkb_U11", "Parent" : "28"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U12", "Parent" : "28"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U13", "Parent" : "28"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U14", "Parent" : "28"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fadd_32ncud_U15", "Parent" : "28"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U16", "Parent" : "28"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U17", "Parent" : "28"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U18", "Parent" : "28"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U19", "Parent" : "28"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U20", "Parent" : "28"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U21", "Parent" : "28"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U22", "Parent" : "28"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U23", "Parent" : "28"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fmul_32ndEe_U24", "Parent" : "28"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_150.honeybee_fdiv_32neOg_U25", "Parent" : "28"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168", "Parent" : "1", "Child" : ["55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fsub_32nbkb_U1", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fsub_32nbkb_U2", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fsub_32nbkb_U3", "Parent" : "54"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fsub_32nbkb_U4", "Parent" : "54"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U5", "Parent" : "54"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U6", "Parent" : "54"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U7", "Parent" : "54"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U8", "Parent" : "54"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U9", "Parent" : "54"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fsub_32nbkb_U10", "Parent" : "54"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fsub_32nbkb_U11", "Parent" : "54"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U12", "Parent" : "54"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U13", "Parent" : "54"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U14", "Parent" : "54"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fadd_32ncud_U15", "Parent" : "54"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U16", "Parent" : "54"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U17", "Parent" : "54"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U18", "Parent" : "54"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U19", "Parent" : "54"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U20", "Parent" : "54"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U21", "Parent" : "54"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U22", "Parent" : "54"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U23", "Parent" : "54"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fmul_32ndEe_U24", "Parent" : "54"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_168.honeybee_fdiv_32neOg_U25", "Parent" : "54"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186", "Parent" : "1", "Child" : ["81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fsub_32nbkb_U1", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fsub_32nbkb_U2", "Parent" : "80"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fsub_32nbkb_U3", "Parent" : "80"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fsub_32nbkb_U4", "Parent" : "80"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U5", "Parent" : "80"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U6", "Parent" : "80"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U7", "Parent" : "80"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U8", "Parent" : "80"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U9", "Parent" : "80"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fsub_32nbkb_U10", "Parent" : "80"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fsub_32nbkb_U11", "Parent" : "80"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U12", "Parent" : "80"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U13", "Parent" : "80"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U14", "Parent" : "80"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fadd_32ncud_U15", "Parent" : "80"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U16", "Parent" : "80"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U17", "Parent" : "80"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U18", "Parent" : "80"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U19", "Parent" : "80"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U20", "Parent" : "80"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U21", "Parent" : "80"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U22", "Parent" : "80"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U23", "Parent" : "80"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fmul_32ndEe_U24", "Parent" : "80"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_lineIntersectsPlane_fu_186.honeybee_fdiv_32neOg_U25", "Parent" : "80"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204", "Parent" : "1", "Child" : ["107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U37", "Parent" : "106"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U38", "Parent" : "106"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U39", "Parent" : "106"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U40", "Parent" : "106"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U41", "Parent" : "106"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U42", "Parent" : "106"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U43", "Parent" : "106"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U44", "Parent" : "106"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U45", "Parent" : "106"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U46", "Parent" : "106"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U47", "Parent" : "106"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_204.honeybee_fcmp_32nfYi_U48", "Parent" : "106"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217", "Parent" : "1", "Child" : ["120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U37", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U38", "Parent" : "119"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U39", "Parent" : "119"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U40", "Parent" : "119"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U41", "Parent" : "119"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U42", "Parent" : "119"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U43", "Parent" : "119"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U44", "Parent" : "119"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U45", "Parent" : "119"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U46", "Parent" : "119"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U47", "Parent" : "119"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_217.honeybee_fcmp_32nfYi_U48", "Parent" : "119"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230", "Parent" : "1", "Child" : ["133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U37", "Parent" : "132"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U38", "Parent" : "132"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U39", "Parent" : "132"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U40", "Parent" : "132"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U41", "Parent" : "132"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U42", "Parent" : "132"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U43", "Parent" : "132"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U44", "Parent" : "132"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U45", "Parent" : "132"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U46", "Parent" : "132"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U47", "Parent" : "132"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_230.honeybee_fcmp_32nfYi_U48", "Parent" : "132"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243", "Parent" : "1", "Child" : ["146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U37", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U38", "Parent" : "145"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U39", "Parent" : "145"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U40", "Parent" : "145"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U41", "Parent" : "145"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U42", "Parent" : "145"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U43", "Parent" : "145"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U44", "Parent" : "145"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U45", "Parent" : "145"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U46", "Parent" : "145"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U47", "Parent" : "145"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.grp_pointOnSegment_fu_243.honeybee_fcmp_32nfYi_U48", "Parent" : "145"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.i_assign_p_hls_fptosi_float_i_fu_256", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.j_assign_p_hls_fptosi_float_i_fu_261", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.i_assign_1_p_hls_fptosi_float_i_fu_266", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.j_assign_1_p_hls_fptosi_float_i_fu_271", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.i_assign_2_p_hls_fptosi_float_i_fu_276", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.j_assign_2_p_hls_fptosi_float_i_fu_281", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.i_assign_3_p_hls_fptosi_float_i_fu_286", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_64.j_assign_3_p_hls_fptosi_float_i_fu_291", "Parent" : "1",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80", "Parent" : "0", "Child" : ["167", "193", "219", "245", "271", "284", "297", "310", "323", "324", "325", "326", "327", "328", "329", "330"],
		"CDFG" : "checkAxis_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "51", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128", "Parent" : "166", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fsub_32nbkb_U1", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fsub_32nbkb_U2", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fsub_32nbkb_U3", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fsub_32nbkb_U4", "Parent" : "167"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U5", "Parent" : "167"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U6", "Parent" : "167"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U7", "Parent" : "167"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U8", "Parent" : "167"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U9", "Parent" : "167"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fsub_32nbkb_U10", "Parent" : "167"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fsub_32nbkb_U11", "Parent" : "167"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U12", "Parent" : "167"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U13", "Parent" : "167"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U14", "Parent" : "167"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fadd_32ncud_U15", "Parent" : "167"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U16", "Parent" : "167"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U17", "Parent" : "167"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U18", "Parent" : "167"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U19", "Parent" : "167"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U20", "Parent" : "167"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U21", "Parent" : "167"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U22", "Parent" : "167"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U23", "Parent" : "167"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fmul_32ndEe_U24", "Parent" : "167"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_128.honeybee_fdiv_32neOg_U25", "Parent" : "167"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146", "Parent" : "166", "Child" : ["194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fsub_32nbkb_U1", "Parent" : "193"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fsub_32nbkb_U2", "Parent" : "193"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fsub_32nbkb_U3", "Parent" : "193"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fsub_32nbkb_U4", "Parent" : "193"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U5", "Parent" : "193"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U6", "Parent" : "193"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U7", "Parent" : "193"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U8", "Parent" : "193"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U9", "Parent" : "193"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fsub_32nbkb_U10", "Parent" : "193"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fsub_32nbkb_U11", "Parent" : "193"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U12", "Parent" : "193"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U13", "Parent" : "193"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U14", "Parent" : "193"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fadd_32ncud_U15", "Parent" : "193"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U16", "Parent" : "193"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U17", "Parent" : "193"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U18", "Parent" : "193"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U19", "Parent" : "193"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U20", "Parent" : "193"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U21", "Parent" : "193"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U22", "Parent" : "193"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U23", "Parent" : "193"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fmul_32ndEe_U24", "Parent" : "193"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_146.honeybee_fdiv_32neOg_U25", "Parent" : "193"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164", "Parent" : "166", "Child" : ["220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fsub_32nbkb_U1", "Parent" : "219"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fsub_32nbkb_U2", "Parent" : "219"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fsub_32nbkb_U3", "Parent" : "219"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fsub_32nbkb_U4", "Parent" : "219"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U5", "Parent" : "219"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U6", "Parent" : "219"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U7", "Parent" : "219"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U8", "Parent" : "219"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U9", "Parent" : "219"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fsub_32nbkb_U10", "Parent" : "219"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fsub_32nbkb_U11", "Parent" : "219"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U12", "Parent" : "219"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U13", "Parent" : "219"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U14", "Parent" : "219"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fadd_32ncud_U15", "Parent" : "219"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U16", "Parent" : "219"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U17", "Parent" : "219"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U18", "Parent" : "219"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U19", "Parent" : "219"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U20", "Parent" : "219"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U21", "Parent" : "219"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U22", "Parent" : "219"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U23", "Parent" : "219"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fmul_32ndEe_U24", "Parent" : "219"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_164.honeybee_fdiv_32neOg_U25", "Parent" : "219"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182", "Parent" : "166", "Child" : ["246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fsub_32nbkb_U1", "Parent" : "245"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fsub_32nbkb_U2", "Parent" : "245"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fsub_32nbkb_U3", "Parent" : "245"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fsub_32nbkb_U4", "Parent" : "245"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U5", "Parent" : "245"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U6", "Parent" : "245"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U7", "Parent" : "245"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U8", "Parent" : "245"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U9", "Parent" : "245"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fsub_32nbkb_U10", "Parent" : "245"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fsub_32nbkb_U11", "Parent" : "245"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U12", "Parent" : "245"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U13", "Parent" : "245"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U14", "Parent" : "245"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fadd_32ncud_U15", "Parent" : "245"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U16", "Parent" : "245"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U17", "Parent" : "245"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U18", "Parent" : "245"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U19", "Parent" : "245"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U20", "Parent" : "245"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U21", "Parent" : "245"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U22", "Parent" : "245"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U23", "Parent" : "245"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fmul_32ndEe_U24", "Parent" : "245"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_lineIntersectsPlane_fu_182.honeybee_fdiv_32neOg_U25", "Parent" : "245"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200", "Parent" : "166", "Child" : ["272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U37", "Parent" : "271"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U38", "Parent" : "271"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U39", "Parent" : "271"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U40", "Parent" : "271"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U41", "Parent" : "271"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U42", "Parent" : "271"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U43", "Parent" : "271"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U44", "Parent" : "271"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U45", "Parent" : "271"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U46", "Parent" : "271"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U47", "Parent" : "271"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_200.honeybee_fcmp_32nfYi_U48", "Parent" : "271"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213", "Parent" : "166", "Child" : ["285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U37", "Parent" : "284"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U38", "Parent" : "284"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U39", "Parent" : "284"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U40", "Parent" : "284"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U41", "Parent" : "284"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U42", "Parent" : "284"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U43", "Parent" : "284"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U44", "Parent" : "284"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U45", "Parent" : "284"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U46", "Parent" : "284"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U47", "Parent" : "284"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_213.honeybee_fcmp_32nfYi_U48", "Parent" : "284"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226", "Parent" : "166", "Child" : ["298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U37", "Parent" : "297"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U38", "Parent" : "297"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U39", "Parent" : "297"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U40", "Parent" : "297"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U41", "Parent" : "297"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U42", "Parent" : "297"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U43", "Parent" : "297"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U44", "Parent" : "297"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U45", "Parent" : "297"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U46", "Parent" : "297"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U47", "Parent" : "297"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_226.honeybee_fcmp_32nfYi_U48", "Parent" : "297"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239", "Parent" : "166", "Child" : ["311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U37", "Parent" : "310"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U38", "Parent" : "310"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U39", "Parent" : "310"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U40", "Parent" : "310"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U41", "Parent" : "310"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U42", "Parent" : "310"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U43", "Parent" : "310"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U44", "Parent" : "310"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U45", "Parent" : "310"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U46", "Parent" : "310"},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U47", "Parent" : "310"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.grp_pointOnSegment_fu_239.honeybee_fcmp_32nfYi_U48", "Parent" : "310"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.j_assign_p_hls_fptosi_float_i_fu_252", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.k_assign_p_hls_fptosi_float_i_fu_257", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.j_assign_4_p_hls_fptosi_float_i_fu_262", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.k_assign_1_p_hls_fptosi_float_i_fu_267", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.j_assign_5_p_hls_fptosi_float_i_fu_272", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.k_assign_2_p_hls_fptosi_float_i_fu_277", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.j_assign_6_p_hls_fptosi_float_i_fu_282", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_80.k_assign_3_p_hls_fptosi_float_i_fu_287", "Parent" : "166",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "331", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96", "Parent" : "0", "Child" : ["332", "358", "384", "410", "436", "449", "462", "475", "488", "489", "490", "491", "492", "493", "494", "495"],
		"CDFG" : "checkAxis_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "51", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130", "Parent" : "331", "Child" : ["333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fsub_32nbkb_U1", "Parent" : "332"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fsub_32nbkb_U2", "Parent" : "332"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fsub_32nbkb_U3", "Parent" : "332"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fsub_32nbkb_U4", "Parent" : "332"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U5", "Parent" : "332"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U6", "Parent" : "332"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U7", "Parent" : "332"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U8", "Parent" : "332"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U9", "Parent" : "332"},
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fsub_32nbkb_U10", "Parent" : "332"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fsub_32nbkb_U11", "Parent" : "332"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U12", "Parent" : "332"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U13", "Parent" : "332"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U14", "Parent" : "332"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fadd_32ncud_U15", "Parent" : "332"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U16", "Parent" : "332"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U17", "Parent" : "332"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U18", "Parent" : "332"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U19", "Parent" : "332"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U20", "Parent" : "332"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U21", "Parent" : "332"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U22", "Parent" : "332"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U23", "Parent" : "332"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fmul_32ndEe_U24", "Parent" : "332"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_130.honeybee_fdiv_32neOg_U25", "Parent" : "332"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148", "Parent" : "331", "Child" : ["359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fsub_32nbkb_U1", "Parent" : "358"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fsub_32nbkb_U2", "Parent" : "358"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fsub_32nbkb_U3", "Parent" : "358"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fsub_32nbkb_U4", "Parent" : "358"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U5", "Parent" : "358"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U6", "Parent" : "358"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U7", "Parent" : "358"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U8", "Parent" : "358"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U9", "Parent" : "358"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fsub_32nbkb_U10", "Parent" : "358"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fsub_32nbkb_U11", "Parent" : "358"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U12", "Parent" : "358"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U13", "Parent" : "358"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U14", "Parent" : "358"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fadd_32ncud_U15", "Parent" : "358"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U16", "Parent" : "358"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U17", "Parent" : "358"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U18", "Parent" : "358"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U19", "Parent" : "358"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U20", "Parent" : "358"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U21", "Parent" : "358"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U22", "Parent" : "358"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U23", "Parent" : "358"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fmul_32ndEe_U24", "Parent" : "358"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_148.honeybee_fdiv_32neOg_U25", "Parent" : "358"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166", "Parent" : "331", "Child" : ["385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fsub_32nbkb_U1", "Parent" : "384"},
	{"ID" : "386", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fsub_32nbkb_U2", "Parent" : "384"},
	{"ID" : "387", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fsub_32nbkb_U3", "Parent" : "384"},
	{"ID" : "388", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fsub_32nbkb_U4", "Parent" : "384"},
	{"ID" : "389", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U5", "Parent" : "384"},
	{"ID" : "390", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U6", "Parent" : "384"},
	{"ID" : "391", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U7", "Parent" : "384"},
	{"ID" : "392", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U8", "Parent" : "384"},
	{"ID" : "393", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U9", "Parent" : "384"},
	{"ID" : "394", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fsub_32nbkb_U10", "Parent" : "384"},
	{"ID" : "395", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fsub_32nbkb_U11", "Parent" : "384"},
	{"ID" : "396", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U12", "Parent" : "384"},
	{"ID" : "397", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U13", "Parent" : "384"},
	{"ID" : "398", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U14", "Parent" : "384"},
	{"ID" : "399", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fadd_32ncud_U15", "Parent" : "384"},
	{"ID" : "400", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U16", "Parent" : "384"},
	{"ID" : "401", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U17", "Parent" : "384"},
	{"ID" : "402", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U18", "Parent" : "384"},
	{"ID" : "403", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U19", "Parent" : "384"},
	{"ID" : "404", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U20", "Parent" : "384"},
	{"ID" : "405", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U21", "Parent" : "384"},
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U22", "Parent" : "384"},
	{"ID" : "407", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U23", "Parent" : "384"},
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fmul_32ndEe_U24", "Parent" : "384"},
	{"ID" : "409", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_166.honeybee_fdiv_32neOg_U25", "Parent" : "384"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184", "Parent" : "331", "Child" : ["411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435"],
		"CDFG" : "lineIntersectsPlane",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "44", "EstimateLatencyMin" : "44", "EstimateLatencyMax" : "44",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "plane", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "411", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fsub_32nbkb_U1", "Parent" : "410"},
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fsub_32nbkb_U2", "Parent" : "410"},
	{"ID" : "413", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fsub_32nbkb_U3", "Parent" : "410"},
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fsub_32nbkb_U4", "Parent" : "410"},
	{"ID" : "415", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U5", "Parent" : "410"},
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U6", "Parent" : "410"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U7", "Parent" : "410"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U8", "Parent" : "410"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U9", "Parent" : "410"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fsub_32nbkb_U10", "Parent" : "410"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fsub_32nbkb_U11", "Parent" : "410"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U12", "Parent" : "410"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U13", "Parent" : "410"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U14", "Parent" : "410"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fadd_32ncud_U15", "Parent" : "410"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U16", "Parent" : "410"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U17", "Parent" : "410"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U18", "Parent" : "410"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U19", "Parent" : "410"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U20", "Parent" : "410"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U21", "Parent" : "410"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U22", "Parent" : "410"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U23", "Parent" : "410"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fmul_32ndEe_U24", "Parent" : "410"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_lineIntersectsPlane_fu_184.honeybee_fdiv_32neOg_U25", "Parent" : "410"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202", "Parent" : "331", "Child" : ["437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U37", "Parent" : "436"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U38", "Parent" : "436"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U39", "Parent" : "436"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U40", "Parent" : "436"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U41", "Parent" : "436"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U42", "Parent" : "436"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U43", "Parent" : "436"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U44", "Parent" : "436"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U45", "Parent" : "436"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U46", "Parent" : "436"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U47", "Parent" : "436"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_202.honeybee_fcmp_32nfYi_U48", "Parent" : "436"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215", "Parent" : "331", "Child" : ["450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "450", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U37", "Parent" : "449"},
	{"ID" : "451", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U38", "Parent" : "449"},
	{"ID" : "452", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U39", "Parent" : "449"},
	{"ID" : "453", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U40", "Parent" : "449"},
	{"ID" : "454", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U41", "Parent" : "449"},
	{"ID" : "455", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U42", "Parent" : "449"},
	{"ID" : "456", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U43", "Parent" : "449"},
	{"ID" : "457", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U44", "Parent" : "449"},
	{"ID" : "458", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U45", "Parent" : "449"},
	{"ID" : "459", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U46", "Parent" : "449"},
	{"ID" : "460", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U47", "Parent" : "449"},
	{"ID" : "461", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_215.honeybee_fcmp_32nfYi_U48", "Parent" : "449"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228", "Parent" : "331", "Child" : ["463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "463", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U37", "Parent" : "462"},
	{"ID" : "464", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U38", "Parent" : "462"},
	{"ID" : "465", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U39", "Parent" : "462"},
	{"ID" : "466", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U40", "Parent" : "462"},
	{"ID" : "467", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U41", "Parent" : "462"},
	{"ID" : "468", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U42", "Parent" : "462"},
	{"ID" : "469", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U43", "Parent" : "462"},
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U44", "Parent" : "462"},
	{"ID" : "471", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U45", "Parent" : "462"},
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U46", "Parent" : "462"},
	{"ID" : "473", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U47", "Parent" : "462"},
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_228.honeybee_fcmp_32nfYi_U48", "Parent" : "462"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241", "Parent" : "331", "Child" : ["476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487"],
		"CDFG" : "pointOnSegment",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U37", "Parent" : "475"},
	{"ID" : "477", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U38", "Parent" : "475"},
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U39", "Parent" : "475"},
	{"ID" : "479", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U40", "Parent" : "475"},
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U41", "Parent" : "475"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U42", "Parent" : "475"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U43", "Parent" : "475"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U44", "Parent" : "475"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U45", "Parent" : "475"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U46", "Parent" : "475"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U47", "Parent" : "475"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.grp_pointOnSegment_fu_241.honeybee_fcmp_32nfYi_U48", "Parent" : "475"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.i_assign_p_hls_fptosi_float_i_fu_254", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.k_assign_p_hls_fptosi_float_i_fu_259", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.i_assign_4_p_hls_fptosi_float_i_fu_264", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.k_assign_4_p_hls_fptosi_float_i_fu_269", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.i_assign_5_p_hls_fptosi_float_i_fu_274", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.k_assign_5_p_hls_fptosi_float_i_fu_279", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.i_assign_6_p_hls_fptosi_float_i_fu_284", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.k_assign_6_p_hls_fptosi_float_i_fu_289", "Parent" : "331",
		"CDFG" : "p_hls_fptosi_float_i",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	honeybee {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	checkAxis_2 {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	checkAxis_1 {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	checkAxis_0 {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	lineIntersectsPlane {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		plane {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}
	p_hls_fptosi_float_i {
		x {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "53", "Max" : "53"}
	, {"Name" : "Interval", "Min" : "54", "Max" : "54"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_p1_x { ap_none {  { edge_p1_x in_data 0 32 } } }
	edge_p1_y { ap_none {  { edge_p1_y in_data 0 32 } } }
	edge_p1_z { ap_none {  { edge_p1_z in_data 0 32 } } }
	edge_p2_x { ap_none {  { edge_p2_x in_data 0 32 } } }
	edge_p2_y { ap_none {  { edge_p2_y in_data 0 32 } } }
	edge_p2_z { ap_none {  { edge_p2_z in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
