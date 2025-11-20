`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 11:26:03 PM
// Design Name: 
// Module Name: testFSM
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


module testFSM(

input btnU, btnC, btnL, btnR, clk,
output [15:0] led
    );
   
wire uW, cW, lW, rW;
   
debouncer dbU(
    .clk(clk),
    .PB(btnU),
    .PB_up(uW)
);

debouncer dbC(
    .clk(clk),
    .PB(btnC),
    .PB_up(cW)
);

debouncer dbL(
    .clk(clk),
    .PB(btnL),
    .PB_up(lW)
);

debouncer dbR(
    .clk(clk),
    .PB(btnR),
    .PB_up(rW)
);

opcodeFSM fsm0(
    .enter(uW),
    .add(lW),
    .sub(cW),
    .mult(rW),
    .clk(clk),
    .opcode(led[2:0])
);

assign led[15] = uW;

endmodule
