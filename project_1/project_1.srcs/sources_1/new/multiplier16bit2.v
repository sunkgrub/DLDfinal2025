`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 12:58:45 PM
// Design Name: 
// Module Name: multiplier16bit2
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


module multiplier16bit2(
input [15:0] A,
input [15:0] B,
output [31:0] P
    );
    
wire [31:0] row0 = ({16'b0, A}) & {32{B[0]}};
wire [31:0] row1 = ({16'b0, A} << 1 ) & {32{B[1]}};
wire [31:0] row2 = ({16'b0, A} << 2 ) & {32{B[2]}};
wire [31:0] row3 = ({16'b0, A} << 3 ) & {32{B[3]}};
wire [31:0] row4 = ({16'b0, A} << 4 ) & {32{B[4]}};
wire [31:0] row5 = ({16'b0, A} << 5 ) & {32{B[5]}};
wire [31:0] row6 = ({16'b0, A} << 6 ) & {32{B[6]}};
wire [31:0] row7 = ({16'b0, A} << 7 ) & {32{B[7]}};
wire [31:0] row8 = ({16'b0, A} << 8 ) & {32{B[8]}};
wire [31:0] row9 = ({16'b0, A} << 9 ) & {32{B[9]}};
wire [31:0] row10 = ({16'b0, A} << 10) & {32{B[10]}};
wire [31:0] row11 = ({16'b0, A} << 11) & {32{B[11]}};
wire [31:0] row12 = ({16'b0, A} << 12) & {32{B[12]}};
wire [31:0] row13 = ({16'b0, A} << 13) & {32{B[13]}};
wire [31:0] row14 = ({16'b0, A} << 14) & {32{B[14]}};
wire [31:0] row15 = ({16'b0, A} << 15) & {32{B[15]}};


wire [31:0] s0, s1, s2, s3, s4, s5, s6, s7;
wire [31:0] s8, s9, s10, s11, s12, s13;

adder32 a0 (.A(row0), .B(row1),  .S(s0));
adder32 a1 (.A(s0), .B(row2),  .S(s1));
adder32 a2 (.A(s1), .B(row3),  .S(s2));
adder32 a3 (.A(s2), .B(row4),  .S(s3));
adder32 a4 (.A(s3), .B(row5),  .S(s4));
adder32 a5 (.A(s4), .B(row6),  .S(s5));
adder32 a6 (.A(s5), .B(row7),  .S(s6));
adder32 a7 (.A(s6), .B(row8),  .S(s7));
adder32 a8 (.A(s7), .B(row9),  .S(s8));
adder32 a9 (.A(s8), .B(row10), .S(s9));
adder32 a10(.A(s9), .B(row11), .S(s10));
adder32 a11(.A(s10), .B(row12), .S(s11));
adder32 a12(.A(s11), .B(row13), .S(s12));
adder32 a13(.A(s12), .B(row14), .S(s13));
adder32 a14(.A(s13), .B(row15), .S(P));  // final sum


endmodule