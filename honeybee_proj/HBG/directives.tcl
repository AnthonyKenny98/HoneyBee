############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll "honeybee/honeybee_label0"
set_directive_unroll "honeybee/honeybee_label1"
set_directive_function_instantiate "checkAxis" num
set_directive_unroll "checkAxis/checkAxis_loop"
set_directive_unroll "checkAxis/checkAxis_label0"
set_directive_unroll "checkAxis/checkAxis_label1"
set_directive_unroll "checkAxis/checkAxis_label2"
set_directive_dependence -variable collisions -class array -type inter -dependent false "checkAxis"
