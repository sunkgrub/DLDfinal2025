`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 06:58:49 AM
// Design Name: 
// Module Name: dispHex16
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


module dispHex16(
    input clk,
    input [15:0] in_hex,
    output [6:0] seg,
    output [3:0] an
    );

wire [1:0] selW;
wire [3:0] nibbleW;
wire [3:0] n0, n1, n2, n3;
wire [15:0] cntW;
wire s1, s0;

assign n0 = in_hex[3:0];
assign n1 = in_hex[7:4];
assign n2 = in_hex[11:8];
assign n3 = in_hex[15:12];

counter16 c0(
    .clk(clk),
    .Q(cntW)
    );

assign selW = cntW[15:14];

multibit_mux #(.NUM_INPUTS(4), .BUS_WIDTH(4)) MBMUX0 (
    .data_out(nibbleW),
    .select_in(selW),
    .data_in({n3, n2, n1, n0})
    );

assign s1 = selW[1];
assign s0 = selW[0];

assign an[0] = s1 | s0;
assign an[1] = s1 | ~s0;
assign an[2] = ~s1 | s0;
assign an[3] = ~s1 | ~s0;

Disp7seg D0(
    .hex(nibbleW),
    .seg(seg)
    );

endmodule


