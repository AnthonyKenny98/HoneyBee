############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project honeybee_proj
set_top honeybee
add_files src/honeybee.h
add_files src/honeybee.c
add_files -tb src/honeybee_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "HBD"
set_part {xc7z030i-fbg484-2L}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./honeybee_proj/HBD/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
