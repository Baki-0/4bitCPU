module FA(
    a, b, carry_in, sum, carry_out
);

input a;
input b;
input carry_in;

output sum;
output carry_out;

wire sum1;
wire carry1;
wire carry2;

HA half1 (a, b, sum1, carry1);
HA half2 (carry_in, sum1, sum, carry2);

assign carry_out = carry1 | carry2;

endmodule