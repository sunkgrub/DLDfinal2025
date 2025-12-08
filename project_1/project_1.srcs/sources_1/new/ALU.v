`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2025 12:30:57 AM
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input [31:0] L,
    input [31:0] R,
    input [2:0] op,
    output [31:0] out
    );

wire [31:0] productW;
wire [15:0] sumW, diffW;

adder16bit add0(
.A(L[15:0]),
.B(R[15:0]),
.S(sumW)
);

subtractor16bit sub0(
.A(R[15:0]),
.B(L[15:0]),
.D(diffW)
);

multiplier16bit m0(
.A(L[15:0]),
.B(R[15:0]),
.P(productW)
);

multibit_mux #(.NUM_INPUTS(8), .BUS_WIDTH(32)) MBMUX (
.data_out(out),
.select_in(op),
.data_in({R, R, productW, {16'b0,diffW}, {16'b0,sumW} ,L, 32'b0, R})
);

endmodule