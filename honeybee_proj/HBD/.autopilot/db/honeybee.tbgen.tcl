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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "16", "31"],
		"CDFG" : "honeybee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "213", "EstimateLatencyMax" : "213",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_checkAxis_1_fu_64"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_checkAxis_2_fu_80"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_checkAxis_0_fu_96"}],
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "checkAxis_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "212",
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_faddfsubbkb_U46", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_faddfsubbkb_U47", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_faddfsubbkb_U48", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fmul_32ncud_U49", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fmul_32ncud_U50", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fmul_32ncud_U51", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fdiv_32ndEe_U52", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_sitofp_3eOg_U53", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fcmp_32nfYi_U54", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fcmp_32nfYi_U55", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fcmp_32nfYi_U56", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fcmp_32nfYi_U57", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fcmp_32nfYi_U58", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_1_fu_64.honeybee_fcmp_32nfYi_U59", "Parent" : "1"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "checkAxis_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "212",
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_faddfsubbkb_U1", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_faddfsubbkb_U2", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_faddfsubbkb_U3", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fmul_32ncud_U4", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fmul_32ncud_U5", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fmul_32ncud_U6", "Parent" : "16"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fdiv_32ndEe_U7", "Parent" : "16"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_sitofp_3eOg_U8", "Parent" : "16"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fcmp_32nfYi_U9", "Parent" : "16"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fcmp_32nfYi_U10", "Parent" : "16"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fcmp_32nfYi_U11", "Parent" : "16"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fcmp_32nfYi_U12", "Parent" : "16"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fcmp_32nfYi_U13", "Parent" : "16"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_2_fu_80.honeybee_fcmp_32nfYi_U14", "Parent" : "16"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96", "Parent" : "0", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "checkAxis_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "212", "EstimateLatencyMax" : "212",
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
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_faddfsubbkb_U26", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_faddfsubbkb_U27", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_faddfsubbkb_U28", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fmul_32ncud_U29", "Parent" : "31"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fmul_32ncud_U30", "Parent" : "31"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fmul_32ncud_U31", "Parent" : "31"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fdiv_32ndEe_U32", "Parent" : "31"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_sitofp_3eOg_U33", "Parent" : "31"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fcmp_32nfYi_U34", "Parent" : "31"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fcmp_32nfYi_U35", "Parent" : "31"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fcmp_32nfYi_U36", "Parent" : "31"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fcmp_32nfYi_U37", "Parent" : "31"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fcmp_32nfYi_U38", "Parent" : "31"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_checkAxis_0_fu_96.honeybee_fcmp_32nfYi_U39", "Parent" : "31"}]}


set ArgLastReadFirstWriteLatency {
	honeybee {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	checkAxis_1 {
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
	checkAxis_0 {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "213", "Max" : "213"}
	, {"Name" : "Interval", "Min" : "214", "Max" : "214"}
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
