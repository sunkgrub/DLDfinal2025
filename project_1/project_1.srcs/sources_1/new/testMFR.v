`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2025 02:01:18 PM
// Design Name: 
// Module Name: testMFR
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


module testMFR(
    input clk,
    input [15:0] sw,
    output [15:0] led
    );
    
wire [31:0] outW;
    
MFR mfr0(
    .in(sw),
    .op(3'b010),
    .clk(clk),
    .out(outW)
);

assign led = outW[15:0];

endmodule
