`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 08:58:21 AM
// Design Name: 
// Module Name: final
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


module final(

input btnU, btnC, btnL, btnR, btnD, clk,
input [15:0] sw,
output [6:0] seg,
output [3:0] an,
output [15:0] led
    );
   
wire uW, cW, lW, rW;
wire [31:0] outW;
wire [2:0] opW;
   
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
    .opcode(opW)
);

MFR mfr0(
.in(sw),
.op(opW),
.clk(clk),
.out(outW)
);

topScrollHex scroll0(
.clk(clk),
.btnD(btnD),
.seg(seg),
.an(an),
.valueW(outW)
);

endmodule