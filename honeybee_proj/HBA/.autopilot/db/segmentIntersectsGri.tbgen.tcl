set moduleName segmentIntersectsGri
set isTopModule 0
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
set C_modelName {segmentIntersectsGri}
set C_modelType { int 1 }
set C_modelArgList {
	{ edge_p1_x float 32 regular  }
	{ edge_p1_y float 32 regular  }
	{ edge_p1_z float 32 regular  }
	{ edge_p2_x float 32 regular  }
	{ edge_p2_y float 32 regular  }
	{ edge_p2_z float 32 regular  }
	{ grid_x float 32 regular  }
	{ grid_y float 32 regular  }
	{ grid_z float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_p1_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p1_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p1_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p2_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p2_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p2_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "grid_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "grid_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "grid_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 16
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
	{ grid_x sc_in sc_lv 32 signal 6 } 
	{ grid_y sc_in sc_lv 32 signal 7 } 
	{ grid_z sc_in sc_lv 32 signal 8 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
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
 	{ "name": "grid_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid_x", "role": "default" }} , 
 	{ "name": "grid_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid_y", "role": "default" }} , 
 	{ "name": "grid_z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grid_z", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "24", "47", "70", "93", "116", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56", "EstimateLatencyMax" : "56",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_88"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_107"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_126"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_145"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_164"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_183"}],
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_faddfsubbkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_faddfsubbkb_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_faddfsubbkb_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fsub_32ncud_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fsub_32ncud_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fmul_32ndEe_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fmul_32ndEe_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fmul_32ndEe_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fmul_32ndEe_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fmul_32ndEe_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fmul_32ndEe_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fdiv_32neOg_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U13", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U14", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U15", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U16", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U17", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U18", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U19", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U20", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U21", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_88.honeybee_fcmp_32nfYi_U22", "Parent" : "1"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107", "Parent" : "0", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_faddfsubbkb_U1", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_faddfsubbkb_U2", "Parent" : "24"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_faddfsubbkb_U3", "Parent" : "24"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fsub_32ncud_U4", "Parent" : "24"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fsub_32ncud_U5", "Parent" : "24"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fmul_32ndEe_U6", "Parent" : "24"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fmul_32ndEe_U7", "Parent" : "24"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fmul_32ndEe_U8", "Parent" : "24"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fmul_32ndEe_U9", "Parent" : "24"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fmul_32ndEe_U10", "Parent" : "24"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fmul_32ndEe_U11", "Parent" : "24"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fdiv_32neOg_U12", "Parent" : "24"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U13", "Parent" : "24"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U14", "Parent" : "24"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U15", "Parent" : "24"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U16", "Parent" : "24"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U17", "Parent" : "24"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U18", "Parent" : "24"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U19", "Parent" : "24"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U20", "Parent" : "24"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U21", "Parent" : "24"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_107.honeybee_fcmp_32nfYi_U22", "Parent" : "24"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_faddfsubbkb_U1", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_faddfsubbkb_U2", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_faddfsubbkb_U3", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fsub_32ncud_U4", "Parent" : "47"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fsub_32ncud_U5", "Parent" : "47"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fmul_32ndEe_U6", "Parent" : "47"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fmul_32ndEe_U7", "Parent" : "47"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fmul_32ndEe_U8", "Parent" : "47"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fmul_32ndEe_U9", "Parent" : "47"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fmul_32ndEe_U10", "Parent" : "47"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fmul_32ndEe_U11", "Parent" : "47"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fdiv_32neOg_U12", "Parent" : "47"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U13", "Parent" : "47"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U14", "Parent" : "47"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U15", "Parent" : "47"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U16", "Parent" : "47"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U17", "Parent" : "47"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U18", "Parent" : "47"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U19", "Parent" : "47"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U20", "Parent" : "47"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U21", "Parent" : "47"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_126.honeybee_fcmp_32nfYi_U22", "Parent" : "47"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145", "Parent" : "0", "Child" : ["71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_faddfsubbkb_U1", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_faddfsubbkb_U2", "Parent" : "70"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_faddfsubbkb_U3", "Parent" : "70"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fsub_32ncud_U4", "Parent" : "70"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fsub_32ncud_U5", "Parent" : "70"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fmul_32ndEe_U6", "Parent" : "70"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fmul_32ndEe_U7", "Parent" : "70"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fmul_32ndEe_U8", "Parent" : "70"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fmul_32ndEe_U9", "Parent" : "70"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fmul_32ndEe_U10", "Parent" : "70"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fmul_32ndEe_U11", "Parent" : "70"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fdiv_32neOg_U12", "Parent" : "70"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U13", "Parent" : "70"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U14", "Parent" : "70"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U15", "Parent" : "70"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U16", "Parent" : "70"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U17", "Parent" : "70"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U18", "Parent" : "70"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U19", "Parent" : "70"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U20", "Parent" : "70"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U21", "Parent" : "70"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_145.honeybee_fcmp_32nfYi_U22", "Parent" : "70"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164", "Parent" : "0", "Child" : ["94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_faddfsubbkb_U1", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_faddfsubbkb_U2", "Parent" : "93"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_faddfsubbkb_U3", "Parent" : "93"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fsub_32ncud_U4", "Parent" : "93"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fsub_32ncud_U5", "Parent" : "93"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fmul_32ndEe_U6", "Parent" : "93"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fmul_32ndEe_U7", "Parent" : "93"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fmul_32ndEe_U8", "Parent" : "93"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fmul_32ndEe_U9", "Parent" : "93"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fmul_32ndEe_U10", "Parent" : "93"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fmul_32ndEe_U11", "Parent" : "93"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fdiv_32neOg_U12", "Parent" : "93"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U13", "Parent" : "93"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U14", "Parent" : "93"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U15", "Parent" : "93"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U16", "Parent" : "93"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U17", "Parent" : "93"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U18", "Parent" : "93"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U19", "Parent" : "93"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U20", "Parent" : "93"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U21", "Parent" : "93"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_164.honeybee_fcmp_32nfYi_U22", "Parent" : "93"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183", "Parent" : "0", "Child" : ["117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
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
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "face_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_faddfsubbkb_U1", "Parent" : "116"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_faddfsubbkb_U2", "Parent" : "116"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_faddfsubbkb_U3", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fsub_32ncud_U4", "Parent" : "116"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fsub_32ncud_U5", "Parent" : "116"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fmul_32ndEe_U6", "Parent" : "116"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fmul_32ndEe_U7", "Parent" : "116"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fmul_32ndEe_U8", "Parent" : "116"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fmul_32ndEe_U9", "Parent" : "116"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fmul_32ndEe_U10", "Parent" : "116"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fmul_32ndEe_U11", "Parent" : "116"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fdiv_32neOg_U12", "Parent" : "116"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U13", "Parent" : "116"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U14", "Parent" : "116"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U15", "Parent" : "116"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U16", "Parent" : "116"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U17", "Parent" : "116"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U18", "Parent" : "116"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U19", "Parent" : "116"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U20", "Parent" : "116"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U21", "Parent" : "116"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsFac_fu_183.honeybee_fcmp_32nfYi_U22", "Parent" : "116"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fadd_32ng8j_U37", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fadd_32ng8j_U38", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fadd_32ng8j_U39", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U40", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U41", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U42", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U43", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U44", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U45", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U46", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U47", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U48", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U49", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U50", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U51", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 4 FirstWrite -1}
		edge_p1_y {Type I LastRead 4 FirstWrite -1}
		edge_p1_z {Type I LastRead 4 FirstWrite -1}
		edge_p2_x {Type I LastRead 4 FirstWrite -1}
		edge_p2_y {Type I LastRead 4 FirstWrite -1}
		edge_p2_z {Type I LastRead 4 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 15 FirstWrite -1}
		edge_p1_y {Type I LastRead 15 FirstWrite -1}
		edge_p1_z {Type I LastRead 19 FirstWrite -1}
		edge_p2_x {Type I LastRead 15 FirstWrite -1}
		edge_p2_y {Type I LastRead 15 FirstWrite -1}
		edge_p2_z {Type I LastRead 19 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 4 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 15 FirstWrite -1}
		edge_p1_y {Type I LastRead 15 FirstWrite -1}
		edge_p1_z {Type I LastRead 19 FirstWrite -1}
		edge_p2_x {Type I LastRead 15 FirstWrite -1}
		edge_p2_y {Type I LastRead 15 FirstWrite -1}
		edge_p2_z {Type I LastRead 19 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 4 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 15 FirstWrite -1}
		edge_p1_y {Type I LastRead 15 FirstWrite -1}
		edge_p1_z {Type I LastRead 19 FirstWrite -1}
		edge_p2_x {Type I LastRead 15 FirstWrite -1}
		edge_p2_y {Type I LastRead 15 FirstWrite -1}
		edge_p2_z {Type I LastRead 19 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 4 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 15 FirstWrite -1}
		edge_p1_y {Type I LastRead 15 FirstWrite -1}
		edge_p1_z {Type I LastRead 19 FirstWrite -1}
		edge_p2_x {Type I LastRead 15 FirstWrite -1}
		edge_p2_y {Type I LastRead 15 FirstWrite -1}
		edge_p2_z {Type I LastRead 19 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 4 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 15 FirstWrite -1}
		edge_p1_y {Type I LastRead 15 FirstWrite -1}
		edge_p1_z {Type I LastRead 19 FirstWrite -1}
		edge_p2_x {Type I LastRead 15 FirstWrite -1}
		edge_p2_y {Type I LastRead 15 FirstWrite -1}
		edge_p2_z {Type I LastRead 19 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 4 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 15 FirstWrite -1}
		edge_p1_y {Type I LastRead 15 FirstWrite -1}
		edge_p1_z {Type I LastRead 19 FirstWrite -1}
		edge_p2_x {Type I LastRead 15 FirstWrite -1}
		edge_p2_y {Type I LastRead 15 FirstWrite -1}
		edge_p2_z {Type I LastRead 19 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "56", "Max" : "56"}
	, {"Name" : "Interval", "Min" : "56", "Max" : "56"}
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
	grid_x { ap_none {  { grid_x in_data 0 32 } } }
	grid_y { ap_none {  { grid_y in_data 0 32 } } }
	grid_z { ap_none {  { grid_z in_data 0 32 } } }
}
