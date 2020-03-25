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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "14", "27", "40", "53", "66", "79", "92", "105", "118", "131", "144", "157", "170", "183", "196", "209"],
		"CDFG" : "honeybee",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "157", "EstimateLatencyMax" : "157",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_151"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_166"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_181"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_196"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_211"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_226"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_241"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_256"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_271"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_286"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_301"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_316"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_331"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_346"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_361"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_lineIntersectGrid_fu_376"}],
		"Port" : [
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_faddfsubbkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_faddfsubbkb_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_faddfsubbkb_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fsub_32ncud_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fsub_32ncud_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fsub_32ncud_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fdiv_32ndEe_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fdiv_32ndEe_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fdiv_32ndEe_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fcmp_32neOg_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fcmp_32neOg_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_151.honeybee_fcmp_32neOg_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_faddfsubbkb_U1", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_faddfsubbkb_U2", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_faddfsubbkb_U3", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fsub_32ncud_U4", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fsub_32ncud_U5", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fsub_32ncud_U6", "Parent" : "14"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fdiv_32ndEe_U7", "Parent" : "14"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fdiv_32ndEe_U8", "Parent" : "14"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fdiv_32ndEe_U9", "Parent" : "14"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fcmp_32neOg_U10", "Parent" : "14"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fcmp_32neOg_U11", "Parent" : "14"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_166.honeybee_fcmp_32neOg_U12", "Parent" : "14"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_faddfsubbkb_U1", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_faddfsubbkb_U2", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_faddfsubbkb_U3", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fsub_32ncud_U4", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fsub_32ncud_U5", "Parent" : "27"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fsub_32ncud_U6", "Parent" : "27"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fdiv_32ndEe_U7", "Parent" : "27"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fdiv_32ndEe_U8", "Parent" : "27"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fdiv_32ndEe_U9", "Parent" : "27"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fcmp_32neOg_U10", "Parent" : "27"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fcmp_32neOg_U11", "Parent" : "27"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_181.honeybee_fcmp_32neOg_U12", "Parent" : "27"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196", "Parent" : "0", "Child" : ["41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_faddfsubbkb_U1", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_faddfsubbkb_U2", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_faddfsubbkb_U3", "Parent" : "40"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fsub_32ncud_U4", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fsub_32ncud_U5", "Parent" : "40"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fsub_32ncud_U6", "Parent" : "40"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fdiv_32ndEe_U7", "Parent" : "40"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fdiv_32ndEe_U8", "Parent" : "40"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fdiv_32ndEe_U9", "Parent" : "40"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fcmp_32neOg_U10", "Parent" : "40"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fcmp_32neOg_U11", "Parent" : "40"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_196.honeybee_fcmp_32neOg_U12", "Parent" : "40"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211", "Parent" : "0", "Child" : ["54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_faddfsubbkb_U1", "Parent" : "53"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_faddfsubbkb_U2", "Parent" : "53"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_faddfsubbkb_U3", "Parent" : "53"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fsub_32ncud_U4", "Parent" : "53"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fsub_32ncud_U5", "Parent" : "53"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fsub_32ncud_U6", "Parent" : "53"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fdiv_32ndEe_U7", "Parent" : "53"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fdiv_32ndEe_U8", "Parent" : "53"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fdiv_32ndEe_U9", "Parent" : "53"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fcmp_32neOg_U10", "Parent" : "53"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fcmp_32neOg_U11", "Parent" : "53"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_211.honeybee_fcmp_32neOg_U12", "Parent" : "53"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226", "Parent" : "0", "Child" : ["67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_faddfsubbkb_U1", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_faddfsubbkb_U2", "Parent" : "66"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_faddfsubbkb_U3", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fsub_32ncud_U4", "Parent" : "66"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fsub_32ncud_U5", "Parent" : "66"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fsub_32ncud_U6", "Parent" : "66"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fdiv_32ndEe_U7", "Parent" : "66"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fdiv_32ndEe_U8", "Parent" : "66"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fdiv_32ndEe_U9", "Parent" : "66"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fcmp_32neOg_U10", "Parent" : "66"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fcmp_32neOg_U11", "Parent" : "66"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_226.honeybee_fcmp_32neOg_U12", "Parent" : "66"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241", "Parent" : "0", "Child" : ["80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_faddfsubbkb_U1", "Parent" : "79"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_faddfsubbkb_U2", "Parent" : "79"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_faddfsubbkb_U3", "Parent" : "79"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fsub_32ncud_U4", "Parent" : "79"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fsub_32ncud_U5", "Parent" : "79"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fsub_32ncud_U6", "Parent" : "79"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fdiv_32ndEe_U7", "Parent" : "79"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fdiv_32ndEe_U8", "Parent" : "79"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fdiv_32ndEe_U9", "Parent" : "79"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fcmp_32neOg_U10", "Parent" : "79"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fcmp_32neOg_U11", "Parent" : "79"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_241.honeybee_fcmp_32neOg_U12", "Parent" : "79"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256", "Parent" : "0", "Child" : ["93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_faddfsubbkb_U1", "Parent" : "92"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_faddfsubbkb_U2", "Parent" : "92"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_faddfsubbkb_U3", "Parent" : "92"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fsub_32ncud_U4", "Parent" : "92"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fsub_32ncud_U5", "Parent" : "92"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fsub_32ncud_U6", "Parent" : "92"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fdiv_32ndEe_U7", "Parent" : "92"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fdiv_32ndEe_U8", "Parent" : "92"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fdiv_32ndEe_U9", "Parent" : "92"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fcmp_32neOg_U10", "Parent" : "92"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fcmp_32neOg_U11", "Parent" : "92"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_256.honeybee_fcmp_32neOg_U12", "Parent" : "92"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271", "Parent" : "0", "Child" : ["106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_faddfsubbkb_U1", "Parent" : "105"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_faddfsubbkb_U2", "Parent" : "105"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_faddfsubbkb_U3", "Parent" : "105"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fsub_32ncud_U4", "Parent" : "105"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fsub_32ncud_U5", "Parent" : "105"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fsub_32ncud_U6", "Parent" : "105"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fdiv_32ndEe_U7", "Parent" : "105"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fdiv_32ndEe_U8", "Parent" : "105"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fdiv_32ndEe_U9", "Parent" : "105"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fcmp_32neOg_U10", "Parent" : "105"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fcmp_32neOg_U11", "Parent" : "105"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_271.honeybee_fcmp_32neOg_U12", "Parent" : "105"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286", "Parent" : "0", "Child" : ["119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_faddfsubbkb_U1", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_faddfsubbkb_U2", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_faddfsubbkb_U3", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fsub_32ncud_U4", "Parent" : "118"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fsub_32ncud_U5", "Parent" : "118"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fsub_32ncud_U6", "Parent" : "118"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fdiv_32ndEe_U7", "Parent" : "118"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fdiv_32ndEe_U8", "Parent" : "118"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fdiv_32ndEe_U9", "Parent" : "118"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fcmp_32neOg_U10", "Parent" : "118"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fcmp_32neOg_U11", "Parent" : "118"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_286.honeybee_fcmp_32neOg_U12", "Parent" : "118"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301", "Parent" : "0", "Child" : ["132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_faddfsubbkb_U1", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_faddfsubbkb_U2", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_faddfsubbkb_U3", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fsub_32ncud_U4", "Parent" : "131"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fsub_32ncud_U5", "Parent" : "131"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fsub_32ncud_U6", "Parent" : "131"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fdiv_32ndEe_U7", "Parent" : "131"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fdiv_32ndEe_U8", "Parent" : "131"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fdiv_32ndEe_U9", "Parent" : "131"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fcmp_32neOg_U10", "Parent" : "131"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fcmp_32neOg_U11", "Parent" : "131"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_301.honeybee_fcmp_32neOg_U12", "Parent" : "131"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316", "Parent" : "0", "Child" : ["145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_faddfsubbkb_U1", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_faddfsubbkb_U2", "Parent" : "144"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_faddfsubbkb_U3", "Parent" : "144"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fsub_32ncud_U4", "Parent" : "144"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fsub_32ncud_U5", "Parent" : "144"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fsub_32ncud_U6", "Parent" : "144"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fdiv_32ndEe_U7", "Parent" : "144"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fdiv_32ndEe_U8", "Parent" : "144"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fdiv_32ndEe_U9", "Parent" : "144"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fcmp_32neOg_U10", "Parent" : "144"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fcmp_32neOg_U11", "Parent" : "144"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_316.honeybee_fcmp_32neOg_U12", "Parent" : "144"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331", "Parent" : "0", "Child" : ["158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_faddfsubbkb_U1", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_faddfsubbkb_U2", "Parent" : "157"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_faddfsubbkb_U3", "Parent" : "157"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fsub_32ncud_U4", "Parent" : "157"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fsub_32ncud_U5", "Parent" : "157"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fsub_32ncud_U6", "Parent" : "157"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fdiv_32ndEe_U7", "Parent" : "157"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fdiv_32ndEe_U8", "Parent" : "157"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fdiv_32ndEe_U9", "Parent" : "157"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fcmp_32neOg_U10", "Parent" : "157"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fcmp_32neOg_U11", "Parent" : "157"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_331.honeybee_fcmp_32neOg_U12", "Parent" : "157"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346", "Parent" : "0", "Child" : ["171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_faddfsubbkb_U1", "Parent" : "170"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_faddfsubbkb_U2", "Parent" : "170"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_faddfsubbkb_U3", "Parent" : "170"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fsub_32ncud_U4", "Parent" : "170"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fsub_32ncud_U5", "Parent" : "170"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fsub_32ncud_U6", "Parent" : "170"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fdiv_32ndEe_U7", "Parent" : "170"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fdiv_32ndEe_U8", "Parent" : "170"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fdiv_32ndEe_U9", "Parent" : "170"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fcmp_32neOg_U10", "Parent" : "170"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fcmp_32neOg_U11", "Parent" : "170"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_346.honeybee_fcmp_32neOg_U12", "Parent" : "170"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361", "Parent" : "0", "Child" : ["184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_faddfsubbkb_U1", "Parent" : "183"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_faddfsubbkb_U2", "Parent" : "183"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_faddfsubbkb_U3", "Parent" : "183"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fsub_32ncud_U4", "Parent" : "183"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fsub_32ncud_U5", "Parent" : "183"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fsub_32ncud_U6", "Parent" : "183"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fdiv_32ndEe_U7", "Parent" : "183"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fdiv_32ndEe_U8", "Parent" : "183"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fdiv_32ndEe_U9", "Parent" : "183"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fcmp_32neOg_U10", "Parent" : "183"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fcmp_32neOg_U11", "Parent" : "183"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_361.honeybee_fcmp_32neOg_U12", "Parent" : "183"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376", "Parent" : "0", "Child" : ["197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208"],
		"CDFG" : "lineIntersectGrid",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "29", "EstimateLatencyMax" : "29",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "grid_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "grid_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p1_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_p2_z", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_faddfsubbkb_U1", "Parent" : "196"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_faddfsubbkb_U2", "Parent" : "196"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_faddfsubbkb_U3", "Parent" : "196"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fsub_32ncud_U4", "Parent" : "196"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fsub_32ncud_U5", "Parent" : "196"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fsub_32ncud_U6", "Parent" : "196"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fdiv_32ndEe_U7", "Parent" : "196"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fdiv_32ndEe_U8", "Parent" : "196"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fdiv_32ndEe_U9", "Parent" : "196"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fcmp_32neOg_U10", "Parent" : "196"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fcmp_32neOg_U11", "Parent" : "196"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_lineIntersectGrid_fu_376.honeybee_fcmp_32neOg_U12", "Parent" : "196"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.honeybee_sitofp_3fYi_U26", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	honeybee {
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}
	lineIntersectGrid {
		grid_x {Type I LastRead 0 FirstWrite -1}
		grid_y {Type I LastRead 0 FirstWrite -1}
		grid_z {Type I LastRead 0 FirstWrite -1}
		edge_p1_x {Type I LastRead 0 FirstWrite -1}
		edge_p1_y {Type I LastRead 0 FirstWrite -1}
		edge_p1_z {Type I LastRead 0 FirstWrite -1}
		edge_p2_x {Type I LastRead 0 FirstWrite -1}
		edge_p2_y {Type I LastRead 0 FirstWrite -1}
		edge_p2_z {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "157", "Max" : "157"}
	, {"Name" : "Interval", "Min" : "158", "Max" : "158"}
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
