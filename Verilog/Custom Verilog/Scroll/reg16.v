`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 08:21:44 AM
// Design Name: 
// Module Name: reg16
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


module reg16(
    input [15:0] in_D,
    input in_EN,
    input in_CLK,
    output [15:0] out_Q
    );

reg4 R0(
    .D(in_D[3:0]),
    .sw_in(in_EN),
    .clock(in_CLK),
    .Q(out_Q[3:0])
    );

reg4 R1(
    .D(in_D[7:4]),
    .sw_in(in_EN),
    .clock(in_CLK),
    .Q(out_Q[7:4])
    );

reg4 R2(
    .D(in_D[11:8]),
    .sw_in(in_EN),
    .clock(in_CLK),
    .Q(out_Q[11:8])
    );

reg4 R3(
    .D(in_D[15:12]),
    .sw_in(in_EN),
    .clock(in_CLK),
    .Q(out_Q[15:12])
    );

endmodule

