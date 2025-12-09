module scrollMux16(
 input [31:0] value,
    input scrollSel,
    output [15:0] dispWord
    );

multibit_mux #(.NUM_INPUTS(2), .BUS_WIDTH(16)) MBMUX0 (
    .data_out(dispWord),
    .select_in(scrollSel),
    .data_in(value)
    );

endmodule