`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 02:09:29 PM
// Design Name: 
// Module Name: adder4bit
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


module adder4bit(
    input [3:0] A,
    input [3:0] B,
    input c_in,
    output [3:0] S,
    output c_out
    );
    
wire [2:0] cw;

full_adder fa0(
    .A(A[0]),
    .B(B[0]),
    .c_in(c_in),
    .S(S[0]),
    .c_out(cw[0])
);

full_adder fa1(
    .A(A[1]),
    .B(B[1]),
    .c_in(cw[0]),
    .S(S[1]),
    .c_out(cw[1])
);

full_adder fa2(
    .A(A[2]),
    .B(B[2]),
    .c_in(cw[1]),
    .S(S[2]),
    .c_out(cw[2])
);

full_adder fa3(
    .A(A[3]),
    .B(B[3]),
    .c_in(cw[2]),
    .S(S[3]),
    .c_out(c_out)
);

endmodule
