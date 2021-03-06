set moduleName pointOnSegment
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 1
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pointOnSegment}
set C_modelType { int 1 }
set C_modelArgList {
	{ p_x float 32 regular  }
	{ p_y float 32 regular  }
	{ p_z float 32 regular  }
	{ e_p1_x float 32 regular  }
	{ e_p1_y float 32 regular  }
	{ e_p1_z float 32 regular  }
	{ e_p2_x float 32 regular  }
	{ e_p2_y float 32 regular  }
	{ e_p2_z float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p1_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p1_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p1_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p2_x", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p2_y", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "e_p2_z", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_x sc_in sc_lv 32 signal 0 } 
	{ p_y sc_in sc_lv 32 signal 1 } 
	{ p_z sc_in sc_lv 32 signal 2 } 
	{ e_p1_x sc_in sc_lv 32 signal 3 } 
	{ e_p1_y sc_in sc_lv 32 signal 4 } 
	{ e_p1_z sc_in sc_lv 32 signal 5 } 
	{ e_p2_x sc_in sc_lv 32 signal 6 } 
	{ e_p2_y sc_in sc_lv 32 signal 7 } 
	{ e_p2_z sc_in sc_lv 32 signal 8 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_x", "role": "default" }} , 
 	{ "name": "p_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_y", "role": "default" }} , 
 	{ "name": "p_z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_z", "role": "default" }} , 
 	{ "name": "e_p1_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_p1_x", "role": "default" }} , 
 	{ "name": "e_p1_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_p1_y", "role": "default" }} , 
 	{ "name": "e_p1_z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_p1_z", "role": "default" }} , 
 	{ "name": "e_p2_x", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_p2_x", "role": "default" }} , 
 	{ "name": "e_p2_y", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_p2_y", "role": "default" }} , 
 	{ "name": "e_p2_z", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e_p2_z", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U37", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U38", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U39", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U40", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U41", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U42", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U43", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U44", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U45", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U46", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U47", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_fcmp_32nfYi_U48", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pointOnSegment {
		p_x {Type I LastRead 0 FirstWrite -1}
		p_y {Type I LastRead 0 FirstWrite -1}
		p_z {Type I LastRead 0 FirstWrite -1}
		e_p1_x {Type I LastRead 0 FirstWrite -1}
		e_p1_y {Type I LastRead 0 FirstWrite -1}
		e_p1_z {Type I LastRead 0 FirstWrite -1}
		e_p2_x {Type I LastRead 0 FirstWrite -1}
		e_p2_y {Type I LastRead 0 FirstWrite -1}
		e_p2_z {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_x { ap_none {  { p_x in_data 0 32 } } }
	p_y { ap_none {  { p_y in_data 0 32 } } }
	p_z { ap_none {  { p_z in_data 0 32 } } }
	e_p1_x { ap_none {  { e_p1_x in_data 0 32 } } }
	e_p1_y { ap_none {  { e_p1_y in_data 0 32 } } }
	e_p1_z { ap_none {  { e_p1_z in_data 0 32 } } }
	e_p2_x { ap_none {  { e_p2_x in_data 0 32 } } }
	e_p2_y { ap_none {  { e_p2_y in_data 0 32 } } }
	e_p2_z { ap_none {  { e_p2_z in_data 0 32 } } }
}
