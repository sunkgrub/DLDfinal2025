`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2025 05:31:43 PM
// Design Name: 
// Module Name: opcodeFSM
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


module opcodeFSM(
    input enter,
    input add,
    input sub,
    input mult,
    input clk,
    output [2:0] currentState,
    output [2:0] opcode
);
    
wire [2:0] Dw, Qw;
    
reg3 reg0(
    .in_EN(1'b1),
    .in_CLK(clk),
    .in_D(Dw),
    .out_Q(Qw)
);

nextStateLogic nsl0(
      .Enter(enter),
      .Add(add),
      .Sub(sub),
      .Mult(mult),
      .q(Qw),
      .d(Dw)
);

opcodeLogic ol0(
    .q(Qw),
    .d(opcode)
);

assign currentState = Qw;

endmodule
