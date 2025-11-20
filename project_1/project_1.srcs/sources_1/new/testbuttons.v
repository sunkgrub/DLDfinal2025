`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2025 11:26:43 PM
// Design Name: 
// Module Name: testbuttons
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


module testbuttons(
    input btnC,
    input clk,
    output [1:0] led
);

wire bw;

debouncer db0(
    .clk(clk),
    .PB(btnC),
    .PB_up(led[0])
);

assign led[1] = btnC;

endmodule
