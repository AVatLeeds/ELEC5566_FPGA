module eight_bit_full_adder
(
	input [7:0] a,
	input [7:0] b,
	output [7:0] sum,
	output carry_out
);

wire first_carry;
wire second_carry;
wire third_carry;

one_bit_half_adder(a[0], b[0], sum[0], first_carry);
three_bit_full_adder(a[3:1], b[3:1], first_carry, sum[3:1], second_carry);
four_bit_full_adder(a[7:4], b[7:4], second_carry, sum[7:4], carry_out);

endmodule 