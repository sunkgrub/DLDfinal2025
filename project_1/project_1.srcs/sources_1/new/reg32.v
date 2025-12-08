`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/05/2025 01:34:54 PM
// Design Name: 
// Module Name: reg32
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


module reg32(
    input [31:0] D,
	input sw_in,
	input clock,
	output [31:0] Q
);

reg4 rg0(
.D(D[3:0]),
.sw_in(sw_in),
.clock(clock),
.Q(Q[3:0])
);

reg4 rg1(
    .D(D[7:4]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[7:4])
);

reg4 rg2(
    .D(D[11:8]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[11:8])
);

reg4 rg3(
    .D(D[15:12]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[15:12])
);

reg4 rg4(
    .D(D[19:16]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[19:16])
);

reg4 rg5(
    .D(D[23:20]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[23:20])
);

reg4 rg6(
    .D(D[27:24]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[27:24])
);

reg4 rg7(
    .D(D[31:28]),
    .sw_in(sw_in),
    .clock(clock),
    .Q(Q[31:28])
);

endmodule
