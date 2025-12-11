`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2025 01:45:40 PM
// Design Name: 
// Module Name: MFR
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


module MFR(
input [15:0] in,
input [2:0] op,
input clk,
output [31:0] out,
output [15:0] led
    );
   
wire [31:0] storeW, aluW;
    
reg32 rg0(
.D(aluW),
.sw_in(1'b1),
.clock(clk),
.Q(storeW)
);

ALU alu0(
.L({16'b0,in}),
.R(storeW),
.op(op),
.out(aluW),
.clk(clk),
.led(led)
);
    

    
assign out = storeW;

endmodule
