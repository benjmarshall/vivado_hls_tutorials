############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lesson_1_proj
set_top simple_adder
add_files source/dut.cpp
add_files source/dut.h
add_files -tb tb/testbench.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./lesson_1_proj/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
