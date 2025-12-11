transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr "+incdir+D:/Xilinix/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"D:/Xilinix/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinix/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"D:/Xilinix/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+D:/Xilinix/2025.1/Vivado/data/rsb/busdef" -l xpm -l xil_defaultlib \
"../../../project_1.srcs/sources_1/new/ALU.v" \
"../../../project_1.srcs/sources_1/new/MFR.v" \
"../../../project_1.srcs/sources_1/new/adder16bit.v" \
"../../../project_1.srcs/sources_1/new/adder4bit.v" \
"../../../../../../../../../../Downloads/debouncer.v" \
"../../../../Verilog/decoder.v" \
"../../../../Verilog/dff_en.v" \
"../../../../Verilog/Custom Verilog/ALU/full_adder.v" \
"../../../project_1.srcs/sources_1/new/mult16x1.v" \
"../../../project_1.srcs/sources_1/imports/Downloads/multibit_mux.v" \
"../../../project_1.srcs/sources_1/new/multiplier16bit.v" \
"../../../project_1.srcs/sources_1/new/multiplier1bit.v" \
"../../../../Verilog/Custom Verilog/Opcode FSM/nextStateLogic.v" \
"../../../project_1.srcs/sources_1/new/opcodeFSM.v" \
"../../../../Verilog/Custom Verilog/Opcode FSM/opcodeLogic.v" \
"../../../../Verilog/Custom Verilog/reg3.v" \
"../../../project_1.srcs/sources_1/new/reg32.v" \
"../../../project_1.srcs/sources_1/imports/Custom Verilog/reg4.v" \
"../../../project_1.srcs/sources_1/new/subtractor16bit.v" \
"../../../project_1.srcs/sources_1/new/testFSM.v" \

vlog -work xil_defaultlib \
"glbl.v"

