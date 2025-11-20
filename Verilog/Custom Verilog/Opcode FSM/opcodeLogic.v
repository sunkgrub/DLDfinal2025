module opcodeLogic(
	input [2:0] q,
	output [2:0] d
);

wire X23, X30, X33;


and U8 (d[2],q[2], X33);

and U12 (d[1],q[0], X30);

or U23 (X23,q[2], q[1]);

and U26 (d[0],X23, q[0]);

not U30 (X30,q[2]);

not U33 (X33,q[1]);

endmodule