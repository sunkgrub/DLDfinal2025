`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 12:50:52 AM
// Design Name: 
// Module Name: Disp7seg
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


module Disp7seg(
    input  [3:0] hex,
    output [6:0] seg
    );

wire h3 = hex[3];
wire h2 = hex[2];
wire h1 = hex[1];
wire h0 = hex[0];

assign seg[0] = (~h3 & ~h2 & ~h1 &  h0) |
                (~h3 &  h2 & ~h1 & ~h0) |
                ( h3 & ~h2 &  h1 &  h0) |
                ( h3 &  h2 & ~h1 &  h0);

assign seg[1] = (~h3 &  h2 & ~h1 &  h0) |
                (~h3 &  h2 &  h1 & ~h0) |
                ( h3 & ~h2 &  h1 &  h0) |
                ( h3 &  h2 & ~h1 & ~h0) |
                ( h3 &  h2 &  h1 & ~h0);

assign seg[2] = (~h3 & ~h2 &  h1 & ~h0) |
                ( h3 &  h2 & ~h1 & ~h0) |
                ( h3 &  h2 &  h1 & ~h0);

assign seg[3] = (~h3 & ~h2 & ~h1 &  h0) |
                (~h3 &  h2 & ~h1 & ~h0) |
                (~h3 &  h2 &  h1 &  h0) |
                ( h3 & ~h2 &  h1 & ~h0);

assign seg[4] = (~h3 & ~h2 & ~h1 &  h0) |
                (~h3 & ~h2 &  h1 &  h0) |
                (~h3 &  h2 & ~h1 & ~h0);

assign seg[5] = (~h3 & ~h2 & ~h1 &  h0) |
                (~h3 & ~h2 &  h1 & ~h0) |
                (~h3 &  h2 &  h1 &  h0) |
                ( h3 &  h2 & ~h1 &  h0);

assign seg[6] = (~h3 & ~h2 & ~h1 & ~h0) |
                (~h3 &  h2 &  h1 &  h0) |
                ( h3 &  h2 & ~h1 & ~h0);

endmodule

