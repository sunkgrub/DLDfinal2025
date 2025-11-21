`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 11:38:20 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input A,
input B,
input c_in,
output S,
output c_out
);

wire X16, X17, X18;


xor U2 (S,A, B, c_in);

and U16 (X16,A, B);

and U17 (X17,A, c_in);

and U18 (X18,B, c_in);

or U21 (c_out,X16, X17, X18);

endmodule

