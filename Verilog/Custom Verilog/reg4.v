`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2025 01:01:25 PM
// Design Name: 
// Module Name: reg4
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

module reg4(
	input [3:0] D,
	input sw_in,
	input clock,
	output [3:0] Q
);

dff_en U15 (
	.data_out(Q[3]),
	.in_D( D[3] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en U16 (
	.data_out(Q[2]),
	.in_D( D[2] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en U17 (
	.data_out(Q[1]),
	.in_D( D[1] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

dff_en U18 (
	.data_out(Q[0]),
	.in_D( D[0] ),
	.in_CLK( clock ),
	.in_EN( sw_in )
);

endmodule
