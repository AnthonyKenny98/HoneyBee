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
set C_modelType { int 8 }
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
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8,"bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "return","cData": "Dout_t","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
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
	{ ap_return sc_out sc_lv 8 signal -1 } 
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
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "34", "67", "100", "133", "166", "199", "232"],
		"CDFG" : "honeybee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76", "EstimateLatencyMax" : "425",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_82"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_104"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_126"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_148"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_170"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_192"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_214"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsGri_fu_236"}],
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82", "Parent" : "0", "Child" : ["2", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "2"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "2"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "2"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "2"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "2"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "2"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "2"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "2"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "2"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "2"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "2"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "2"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "2"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "2"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fadd_32ng8j_U37", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fadd_32ng8j_U38", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fadd_32ng8j_U39", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fcmp_32nfYi_U40", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fcmp_32nfYi_U41", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fcmp_32nfYi_U42", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fcmp_32nfYi_U43", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fcmp_32nfYi_U44", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_82.honeybee_fcmp_32nfYi_U45", "Parent" : "1"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104", "Parent" : "0", "Child" : ["35", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113", "Parent" : "34", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "35"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "35"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "35"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "35"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "35"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "35"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "35"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "35"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "35"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "35"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "35"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "35"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "35"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "35"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "35"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "35"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "35"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "35"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "35"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "35"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fadd_32ng8j_U37", "Parent" : "34"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fadd_32ng8j_U38", "Parent" : "34"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fadd_32ng8j_U39", "Parent" : "34"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fcmp_32nfYi_U40", "Parent" : "34"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fcmp_32nfYi_U41", "Parent" : "34"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fcmp_32nfYi_U42", "Parent" : "34"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fcmp_32nfYi_U43", "Parent" : "34"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fcmp_32nfYi_U44", "Parent" : "34"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_104.honeybee_fcmp_32nfYi_U45", "Parent" : "34"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126", "Parent" : "0", "Child" : ["68", "91", "92", "93", "94", "95", "96", "97", "98", "99"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113", "Parent" : "67", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "68"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "68"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "68"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "68"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "68"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "68"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "68"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "68"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "68"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "68"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "68"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "68"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "68"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "68"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "68"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "68"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "68"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "68"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "68"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "68"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "68"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "68"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fadd_32ng8j_U37", "Parent" : "67"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fadd_32ng8j_U38", "Parent" : "67"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fadd_32ng8j_U39", "Parent" : "67"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fcmp_32nfYi_U40", "Parent" : "67"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fcmp_32nfYi_U41", "Parent" : "67"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fcmp_32nfYi_U42", "Parent" : "67"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fcmp_32nfYi_U43", "Parent" : "67"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fcmp_32nfYi_U44", "Parent" : "67"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_126.honeybee_fcmp_32nfYi_U45", "Parent" : "67"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148", "Parent" : "0", "Child" : ["101", "124", "125", "126", "127", "128", "129", "130", "131", "132"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113", "Parent" : "100", "Child" : ["102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "101"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "101"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "101"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "101"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "101"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "101"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "101"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "101"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "101"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "101"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "101"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "101"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "101"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "101"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "101"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "101"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "101"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "101"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "101"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "101"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "101"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fadd_32ng8j_U37", "Parent" : "100"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fadd_32ng8j_U38", "Parent" : "100"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fadd_32ng8j_U39", "Parent" : "100"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fcmp_32nfYi_U40", "Parent" : "100"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fcmp_32nfYi_U41", "Parent" : "100"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fcmp_32nfYi_U42", "Parent" : "100"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fcmp_32nfYi_U43", "Parent" : "100"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fcmp_32nfYi_U44", "Parent" : "100"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_148.honeybee_fcmp_32nfYi_U45", "Parent" : "100"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170", "Parent" : "0", "Child" : ["134", "157", "158", "159", "160", "161", "162", "163", "164", "165"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113", "Parent" : "133", "Child" : ["135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "134"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "134"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "134"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "134"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "134"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "134"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "134"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "134"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "134"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "134"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "134"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "134"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "134"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "134"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "134"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "134"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "134"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "134"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "134"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "134"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "134"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "134"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fadd_32ng8j_U37", "Parent" : "133"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fadd_32ng8j_U38", "Parent" : "133"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fadd_32ng8j_U39", "Parent" : "133"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fcmp_32nfYi_U40", "Parent" : "133"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fcmp_32nfYi_U41", "Parent" : "133"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fcmp_32nfYi_U42", "Parent" : "133"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fcmp_32nfYi_U43", "Parent" : "133"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fcmp_32nfYi_U44", "Parent" : "133"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_170.honeybee_fcmp_32nfYi_U45", "Parent" : "133"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192", "Parent" : "0", "Child" : ["167", "190", "191", "192", "193", "194", "195", "196", "197", "198"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113", "Parent" : "166", "Child" : ["168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "167"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "167"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "167"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "167"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "167"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "167"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "167"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "167"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "167"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "167"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "167"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "167"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "167"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "167"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "167"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "167"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "167"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "167"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "167"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "167"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "167"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "167"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fadd_32ng8j_U37", "Parent" : "166"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fadd_32ng8j_U38", "Parent" : "166"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fadd_32ng8j_U39", "Parent" : "166"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fcmp_32nfYi_U40", "Parent" : "166"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fcmp_32nfYi_U41", "Parent" : "166"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fcmp_32nfYi_U42", "Parent" : "166"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fcmp_32nfYi_U43", "Parent" : "166"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fcmp_32nfYi_U44", "Parent" : "166"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_192.honeybee_fcmp_32nfYi_U45", "Parent" : "166"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214", "Parent" : "0", "Child" : ["200", "223", "224", "225", "226", "227", "228", "229", "230", "231"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113", "Parent" : "199", "Child" : ["201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "200"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "200"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "200"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "200"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "200"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "200"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "200"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "200"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "200"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "200"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "200"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "200"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "200"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "200"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "200"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "200"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "200"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "200"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "200"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "200"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "200"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "200"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fadd_32ng8j_U37", "Parent" : "199"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fadd_32ng8j_U38", "Parent" : "199"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fadd_32ng8j_U39", "Parent" : "199"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fcmp_32nfYi_U40", "Parent" : "199"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fcmp_32nfYi_U41", "Parent" : "199"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fcmp_32nfYi_U42", "Parent" : "199"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fcmp_32nfYi_U43", "Parent" : "199"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fcmp_32nfYi_U44", "Parent" : "199"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_214.honeybee_fcmp_32nfYi_U45", "Parent" : "199"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236", "Parent" : "0", "Child" : ["233", "256", "257", "258", "259", "260", "261", "262", "263", "264"],
		"CDFG" : "segmentIntersectsGri",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "75", "EstimateLatencyMax" : "424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"},
			{"State" : "ap_ST_fsm_state22", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_segmentIntersectsFac_fu_113"}],
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
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113", "Parent" : "232", "Child" : ["234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255"],
		"CDFG" : "segmentIntersectsFac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
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
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U1", "Parent" : "233"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U2", "Parent" : "233"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_faddfsubbkb_U3", "Parent" : "233"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U4", "Parent" : "233"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fsub_32ncud_U5", "Parent" : "233"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U6", "Parent" : "233"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U7", "Parent" : "233"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U8", "Parent" : "233"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U9", "Parent" : "233"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U10", "Parent" : "233"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fmul_32ndEe_U11", "Parent" : "233"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fdiv_32neOg_U12", "Parent" : "233"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U13", "Parent" : "233"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U14", "Parent" : "233"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U15", "Parent" : "233"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U16", "Parent" : "233"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U17", "Parent" : "233"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U18", "Parent" : "233"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U19", "Parent" : "233"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U20", "Parent" : "233"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U21", "Parent" : "233"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.grp_segmentIntersectsFac_fu_113.honeybee_fcmp_32nfYi_U22", "Parent" : "233"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fadd_32ng8j_U37", "Parent" : "232"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fadd_32ng8j_U38", "Parent" : "232"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fadd_32ng8j_U39", "Parent" : "232"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fcmp_32nfYi_U40", "Parent" : "232"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fcmp_32nfYi_U41", "Parent" : "232"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fcmp_32nfYi_U42", "Parent" : "232"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fcmp_32nfYi_U43", "Parent" : "232"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fcmp_32nfYi_U44", "Parent" : "232"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_segmentIntersectsGri_fu_236.honeybee_fcmp_32nfYi_U45", "Parent" : "232"}]}


set ArgLastReadFirstWriteLatency {
	honeybee {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}
	segmentIntersectsGri {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}}
	segmentIntersectsFac {
		edge_p1_x {Type I LastRead 19 FirstWrite -1}
		edge_p1_y {Type I LastRead 19 FirstWrite -1}
		edge_p1_z {Type I LastRead 24 FirstWrite -1}
		edge_p2_x {Type I LastRead 19 FirstWrite -1}
		edge_p2_y {Type I LastRead 19 FirstWrite -1}
		edge_p2_z {Type I LastRead 24 FirstWrite -1}
		face_x {Type I LastRead 0 FirstWrite -1}
		face_y {Type I LastRead 0 FirstWrite -1}
		face_z {Type I LastRead 5 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "76", "Max" : "425"}
	, {"Name" : "Interval", "Min" : "77", "Max" : "426"}
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
