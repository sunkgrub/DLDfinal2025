module topScrollHex(
    input clk,
    input btnD,
    output [6:0] seg,
    output [3:0] an
    );

wire [31:0] valueW;
wire [15:0] dispWordW;
wire scrollSelW;

assign valueW = 32'h24E2C17D;

ScrollFSM sFSM(
    .clk(clk),
    .btnD(btnD),
    .scrollSel(scrollSelW)
    );

scrollMux16 sMUX(
    .value(valueW),
    .scrollSel(scrollSelW),
    .dispWord(dispWordW)
    );

dispHex16 dH0(
    .clk(clk),
    .in_hex(dispWordW),
    .seg(seg),
    .an(an)
    );

endmodule
