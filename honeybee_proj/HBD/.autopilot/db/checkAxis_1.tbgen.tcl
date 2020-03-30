set moduleName checkAxis_1
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
set C_modelName {checkAxis.1}
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
	{ "Name" : "edge_p1_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p1_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p1_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p2_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p2_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_p2_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_faddfsubbkb_U46", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_faddfsubbkb_U47", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_faddfsubbkb_U48", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fmul_32ncud_U49", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fmul_32ncud_U50", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fmul_32ncud_U51", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fdiv_32ndEe_U52", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_sitofp_3eOg_U53", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U54", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U55", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U56", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U57", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U58", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U59", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	checkAxis_1 {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "212", "Max" : "212"}
	, {"Name" : "Interval", "Min" : "212", "Max" : "212"}
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
