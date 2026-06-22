module comb_circuit1 (a, b, c, y);

input a, b, c;
output y;
wire a_and_b, a_or_b;

assign a_and_b = (~(a & b));
assign a_or_b = (~(a | b));
assign y = (a_and_b) & (a_or_b) & (c);


endmodule