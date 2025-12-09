`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 08:22:43 AM
// Design Name: 
// Module Name: counter16
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



module counter16(
    input clk,
    output [15:0] Q
    );

wire [15:0] Dw;
wire [15:0] Qw;
wire [14:0] andW;

assign Dw[0] = ~Qw[0];

and U0(andW[0], Qw[0], 1'b1);
xor U1(Dw[1], Qw[1], andW[0]);

and U2(andW[1], Qw[1], andW[0]);
xor U3(Dw[2], Qw[2], andW[1]);

and U4(andW[2], Qw[2], andW[1]);
xor U5(Dw[3], Qw[3], andW[2]);

and U6(andW[3], Qw[3], andW[2]);
xor U7(Dw[4], Qw[4], andW[3]);

and U8(andW[4], Qw[4], andW[3]);
xor U9(Dw[5], Qw[5], andW[4]);

and U10(andW[5], Qw[5], andW[4]);
xor U11(Dw[6], Qw[6], andW[5]);

and U12(andW[6], Qw[6], andW[5]);
xor U13(Dw[7], Qw[7], andW[6]);

and U14(andW[7], Qw[7], andW[6]);
xor U15(Dw[8], Qw[8], andW[7]);

and U16(andW[8], Qw[8], andW[7]);
xor U17(Dw[9], Qw[9], andW[8]);

and U18(andW[9], Qw[9], andW[8]);
xor U19(Dw[10], Qw[10], andW[9]);

and U20(andW[10], Qw[10], andW[9]);
xor U21(Dw[11], Qw[11], andW[10]);

and U22(andW[11], Qw[11], andW[10]);
xor U23(Dw[12], Qw[12], andW[11]);

and U24(andW[12], Qw[12], andW[11]);
xor U25(Dw[13], Qw[13], andW[12]);

and U26(andW[13], Qw[13], andW[12]);
xor U27(Dw[14], Qw[14], andW[13]);

and U28(andW[14], Qw[14], andW[13]);
xor U29(Dw[15], Qw[15], andW[14]);

reg16 R0(
    .in_D(Dw),
    .in_EN(1'b1),
    .in_CLK(clk),
    .out_Q(Qw)
    );

assign Q = Qw;

endmodule


