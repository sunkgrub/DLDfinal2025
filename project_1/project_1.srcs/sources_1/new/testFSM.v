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
input [15:0] sw,
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

assign led = outW[15:0];

endmodule
