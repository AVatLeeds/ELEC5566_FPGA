module one_bit_full_adder
(
	input a,
	input b,
	input carry_in,
	output out,
	output carry_out
);

wire w1;
wire w2;
wire w3;

xor(w1, a, b);
xor(out, w1, carry_in);
and(w2, a, b);
and(w3, w1, carry_in);
or(carry_out, w2, w3);

endmodule 