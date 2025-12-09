module ScrollNextstate(
input Scroll,
    input q,
    output d
    );

xor U0 (d, Scroll, q);

endmodule