`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 06:36:29 AM
// Design Name: 
// Module Name: reg1
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


module reg1(
    input in_D,
    input in_CLK,
    output out_Q
    );

dff_en U0(
    .data_out(out_Q),
    .in_D(in_D),
    .in_CLK(in_CLK),
    .in_EN(1'b1)
    );
    
endmodule
