############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HoneyBee-B
set_top honeybee
add_files src/honeybee.c
add_files src/honeybee.h
add_files -tb src/honeybee_test.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./HoneyBee-B/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog