module nextStateLogic(
	input Enter,
	input Add,
	input Sub,
	input Mult,
	input [2:0] q,
	output [2:0] d
);

wire X12_01, X12_02, X12_03, X12_04, X12_05, X12_06, X12_07, X12_7, X16, X25, X29, X38, X42, X45, X50, X51, X59, X62;


decoder #(3,1) U12 (
	.data_out( {1'bx,X12_07,X12_06,X12_05,X12_04,X12_03,X12_02,X12_01} ),
	.address_in( {q[2],q[1],q[0]} ),
	.en_in( 1'b1)
);

and U16 (X16,X12_03, X25);

or U19 (d[2],X16, X29);

or U25 (X25,Sub, Mult);

or U29 (X29,X12_04, X12_05, X12_06, X12_07);

or U35 (d[1],X12_02, X45, X29);

nor U38 (X38,Sub, Mult);

or U42 (X42,X38, Add);

and U45 (X45,X42, X12_03);

and U50 (X50,Enter, X51);

or U51 (X51,X12_07, X12_01);

or U56 (d[0],X50, X62);

or U59 (X59,Add, Mult);

and U62 (X62,X59, X12_03);

endmodule