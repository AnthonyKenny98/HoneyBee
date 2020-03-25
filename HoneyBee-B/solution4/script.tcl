############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HoneyBee-B
set_top honeybee
add_files src/honeybee.c -cflags "-Wno-constant-conversion"
add_files src/honeybee.h
add_files -tb src/honeybee_test.c
open_solution "solution4"
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
source "./HoneyBee-B/solution4/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
