`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 02:21:08 PM
// Design Name: 
// Module Name: adder16bit
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


module adder16bit(
    input [15:0] A,
    input [15:0] B,
    input c_in,
    output [15:0] S,
    output c_out
    );
    
wire [2:0] cw;

adder4bit fa0(
    .A(A[3:0]),
    .B(B[3:0]),
    .c_in(c_in),
    .S(S[3:0]),
    .c_out(cw[0])
);

adder4bit fa1(
    .A(A[7:4]),
    .B(B[7:4]),
    .c_in(cw[0]),
    .S(S[7:4]),
    .c_out(cw[1])
);

adder4bit fa2(
    .A(A[11:8]),
    .B(B[11:8]),
    .c_in(cw[1]),
    .S(S[11:8]),
    .c_out(cw[2])
);

adder4bit fa3(
    .A(A[15:12]),
    .B(B[15:12]),
    .c_in(cw[2]),
    .S(S[15:12]),
    .c_out(c_out)
);

endmodule
