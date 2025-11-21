`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2025 04:05:10 PM
// Design Name: 
// Module Name: mult16x1
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


module mult16x1(
input [15:0] A,
input B,
input [15:0] sum_in,
input [15:0] c_in,
output [15:0] P,
output [15:0] c_out
    );
    
multiplier1bit m0(
    .X(A[0]),
    .Y(B),
    .sum_out(P[0]),
    .c_in(c_in[0]),
    .sum_in(sum_in[0]),
    .c_out(c_out[0])
);

multiplier1bit m1(
    .X(A[1]),
    .Y(B),
    .sum_out(P[1]),
    .c_in(c_in[1]),
    .sum_in(sum_in[1]),
    .c_out(c_out[1])
);

multiplier1bit m2(
    .X(A[2]),
    .Y(B),
    .sum_out(P[2]),
    .c_in(c_in[2]),
    .sum_in(sum_in[2]),
    .c_out(c_out[2])
);

multiplier1bit m3(
    .X(A[3]),
    .Y(B),
    .sum_out(P[3]),
    .c_in(c_in[3]),
    .sum_in(sum_in[3]),
    .c_out(c_out[3])
);

multiplier1bit m4(
    .X(A[4]),
    .Y(B),
    .sum_out(P[4]),
    .c_in(c_in[4]),
    .sum_in(sum_in[4]),
    .c_out(c_out[4])
);

multiplier1bit m5(
    .X(A[5]),
    .Y(B),
    .sum_out(P[5]),
    .c_in(c_in[5]),
    .sum_in(sum_in[5]),
    .c_out(c_out[5])
);

multiplier1bit m6(
    .X(A[6]),
    .Y(B),
    .sum_out(P[6]),
    .c_in(c_in[6]),
    .sum_in(sum_in[6]),
    .c_out(c_out[6])
);

multiplier1bit m7(
    .X(A[7]),
    .Y(B),
    .sum_out(P[7]),
    .c_in(c_in[7]),
    .sum_in(sum_in[7]),
    .c_out(c_out[7])
);

multiplier1bit m8(
    .X(A[8]),
    .Y(B),
    .sum_out(P[8]),
    .c_in(c_in[8]),
    .sum_in(sum_in[8]),
    .c_out(c_out[8])
);

multiplier1bit m9(
    .X(A[9]),
    .Y(B),
    .sum_out(P[9]),
    .c_in(c_in[9]),
    .sum_in(sum_in[9]),
    .c_out(c_out[9])
);

multiplier1bit m10(
    .X(A[10]),
    .Y(B),
    .sum_out(P[10]),
    .c_in(c_in[10]),
    .sum_in(sum_in[10]),
    .c_out(c_out[10])
);

multiplier1bit m11(
    .X(A[11]),
    .Y(B),
    .sum_out(P[11]),
    .c_in(c_in[11]),
    .sum_in(sum_in[11]),
    .c_out(c_out[11])
);

multiplier1bit m12(
    .X(A[12]),
    .Y(B),
    .sum_out(P[12]),
    .c_in(c_in[12]),
    .sum_in(sum_in[12]),
    .c_out(c_out[12])
);

multiplier1bit m13(
    .X(A[13]),
    .Y(B),
    .sum_out(P[13]),
    .c_in(c_in[13]),
    .sum_in(sum_in[13]),
    .c_out(c_out[13])
);

multiplier1bit m14(
    .X(A[14]),
    .Y(B),
    .sum_out(P[14]),
    .c_in(c_in[14]),
    .sum_in(sum_in[14]),
    .c_out(c_out[14])
);

multiplier1bit m15(
    .X(A[15]),
    .Y(B),
    .sum_out(P[15]),
    .c_in(c_in[15]),
    .sum_in(sum_in[15]),
    .c_out(c_out[15])
);

endmodule
