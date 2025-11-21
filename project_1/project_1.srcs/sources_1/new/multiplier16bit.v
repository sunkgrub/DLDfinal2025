`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 02:54:54 PM
// Design Name: 
// Module Name: multiplier16bit
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


module multiplier16bit(
    input [15:0] A,
    input [15:0] B,
    output [31:0] P
);

wire [255:0] prodWires, carryWires;

mult16x1 m0(
    .A(A),
    .B(B[0]),
    .P(prodWires[15:0]),
    .c_out(carryWires[15:0])
);

assign P[0] = prodWires[0];

mult16x1 m1(
    .sum_in({1'b0,prodWires[15:1]}),
    .B(B[1]),
    .P(prodWires[31:16]),
    .c_in(carryWires[15:0]),
    .c_out(carryWires[31:16])
);

assign P[1] = prodWires[16];

mult16x1 m2(
    .sum_in({1'b0,prodWires[31:17]}),
    .B(B[2]),
    .P(prodWires[47:32]),
    .c_in(carryWires[31:16]),
    .c_out(carryWires[47:32])
);

assign P[2] = prodWires[32];

mult16x1 m3(
    .sum_in({1'b0,prodWires[47:33]}),
    .B(B[3]),
    .P(prodWires[63:48]),
    .c_in(carryWires[47:32]),
    .c_out(carryWires[63:48])
);

assign P[3] = prodWires[48];

mult16x1 m4(
    .sum_in({1'b0,prodWires[63:49]}),
    .B(B[4]),
    .P(prodWires[79:64]),
    .c_in(carryWires[63:48]),
    .c_out(carryWires[79:64])
);

assign P[4] = prodWires[64];

mult16x1 m5(
    .sum_in({1'b0,prodWires[79:65]}),
    .B(B[5]),
    .P(prodWires[95:80]),
    .c_in(carryWires[79:64]),
    .c_out(carryWires[95:80])
);

assign P[5] = prodWires[80];

mult16x1 m6(
    .sum_in({1'b0,prodWires[95:81]}),
    .B(B[6]),
    .P(prodWires[111:96]),
    .c_in(carryWires[95:80]),
    .c_out(carryWires[111:96])
);

assign P[6] = prodWires[96];

mult16x1 m7(
    .sum_in({1'b0,prodWires[111:97]}),
    .B(B[7]),
    .P(prodWires[127:112]),
    .c_in(carryWires[111:96]),
    .c_out(carryWires[127:112])
);

assign P[7] = prodWires[112];

mult16x1 m8(
    .sum_in({1'b0,prodWires[127:113]}),
    .B(B[8]),
    .P(prodWires[143:128]),
    .c_in(carryWires[127:112]),
    .c_out(carryWires[143:128])
);

assign P[8] = prodWires[128];

mult16x1 m9(
    .sum_in({1'b0,prodWires[143:129]}),
    .B(B[9]),
    .P(prodWires[159:144]),
    .c_in(carryWires[143:128]),
    .c_out(carryWires[159:144])
);

assign P[9] = prodWires[144];

mult16x1 m10(
    .sum_in({1'b0,prodWires[159:145]}),
    .B(B[10]),
    .P(prodWires[175:160]),
    .c_in(carryWires[159:144]),
    .c_out(carryWires[175:160])
);

assign P[10] = prodWires[160];

mult16x1 m11(
    .sum_in({1'b0,prodWires[175:161]}),
    .B(B[11]),
    .P(prodWires[191:176]),
    .c_in(carryWires[175:160]),
    .c_out(carryWires[191:176])
);

assign P[11] = prodWires[176];

mult16x1 m12(
    .sum_in({1'b0,prodWires[191:177]}),
    .B(B[12]),
    .P(prodWires[207:192]),
    .c_in(carryWires[191:176]),
    .c_out(carryWires[207:192])
);

assign P[12] = prodWires[192];

mult16x1 m13(
    .sum_in({1'b0,prodWires[207:193]}),
    .B(B[13]),
    .P(prodWires[223:208]),
    .c_in(carryWires[207:192]),
    .c_out(carryWires[223:208])
);

assign P[13] = prodWires[208];

mult16x1 m14(
    .sum_in({1'b0,prodWires[223:209]}),
    .B(B[14]),
    .P(prodWires[239:224]),
    .c_in(carryWires[223:208]),
    .c_out(carryWires[239:224])
);

assign P[14] = prodWires[224];

mult16x1 m15(
    .sum_in({1'b0,prodWires[239:225]}),
    .B(B[15]),
    .P(prodWires[255:240]),
    .c_in(carryWires[239:224]),
    .c_out(carryWires[255:240])
);

assign P[30:15] = prodWires[255:240];

assign P[31] = carryWires[255];

endmodule
