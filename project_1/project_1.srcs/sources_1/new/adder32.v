`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 02:16:47 PM
// Design Name: 
// Module Name: adder32
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


module adder32(
input [31:0] A,
    input [31:0] B,
    input c_in,
    output [31:0] S,
    output c_out
    );
    
wire carryW;
    
adder16bit add0(
.A(A[15:0]),
.B(B[15:0]),
.S(S[15:0]),
.c_out(carryW),
.c_in(c_in)
);


adder16bit add1(
.A(A[31:16]),
.B(B[31:16]),
.S(S[31:16]),
.c_in(carryW),
.c_out(c_out)
);
    
endmodule
