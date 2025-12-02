`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 02:33:48 PM
// Design Name: 
// Module Name: subtractor16bit
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


module subtractor16bit(
    input [15:0] A,
    input [15:0] B,
    output [15:0] D,
    output c_out
);

wire [15:0] notB;
wire [15:0] diffW, notDiffW, negW;


assign notB = ~B;

adder16bit ad0(
    .A(A),
    .B(notB),
    .c_in(1'b1),
    .c_out(c_out),
    .S(diffW)
);

assign notDiffW = ~diffW;

adder16bit ad1(
    .A(16'b0),
    .B(notDiffW),
    .c_in(1'b1),
    .S(negW)
);

multibit_mux #(.NUM_INPUTS(2), .BUS_WIDTH(16)) MBMUX (
.data_out(D),
.select_in(diffW[15]),
.data_in({negW, diffW})
);

endmodule
