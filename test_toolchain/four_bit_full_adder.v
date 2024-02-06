module four_bit_full_adder
(
	input [3:0] a,
	input [3:0] b,
	input carry_in,
	output [3:0] sum,
	output carry_out
);

wire first_carry;
wire second_carry;
wire third_carry;

one_bit_full_adder(a[0], b[0], carry_in, sum[0], first_carry);
one_bit_full_adder(a[1], b[2], first_carry, sum[1], second_carry);
one_bit_full_adder(a[2], b[2], second_carry, sum[2], third_carry);
one_bit_full_adder(a[3], b[3], third_carry, sum[3], carry_out);

endmodule 