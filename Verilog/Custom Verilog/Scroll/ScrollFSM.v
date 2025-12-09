module ScrollFSM(
  input clk,
    input btnD,
    output scrollSel
    );

wire Dw, Qw;
wire dW;

debouncer dbD(
    .clk(clk),
    .PB(btnD),
    .PB_up(dW)
    );

reg1 reg0(
    .in_D(Dw),
    .in_CLK(clk),
    .out_Q(Qw)
    );

ScrollNextstate nsl0(
    .Scroll(dW),
    .q(Qw),
    .d(Dw)
    );

assign scrollSel = Qw;


endmodule