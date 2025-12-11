`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2025 04:02:00 PM
// Design Name: 
// Module Name: arithmeticTest
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


module arithmeticTest(
    output [15:0] led,
    input [15:0] sw
    );
  
wire [31:0] productW;
  
multiplier16bit2 a0(
    .A(16'h7918),
    .B(16'hFA00),
    .P(productW)
);

assign led = productW[15:0];

endmodule
