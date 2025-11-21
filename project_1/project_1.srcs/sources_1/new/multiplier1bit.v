`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 03:52:59 PM
// Design Name: 
// Module Name: multiplier1bit
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


module multiplier1bit(
    input X,
    input Y,
    input c_in,
    input sum_in,
    output sum_out,
    output c_out
);

wire mult;

and a0(mult, X, Y);

full_adder(
    .A(sum_in),
    .B(mult),
    .c_in(c_in),
    .c_out(c_out),
    .S(sum_out)
);

endmodule
