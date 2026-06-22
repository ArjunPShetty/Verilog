module comb_circuit2 (a, b, f);

input a, b;
output f;
wire a_and_notb, nota_and_b, not_a, not_b, a;

assign not_a = (~a);
assign not_b = (~b);
assign a_and_notb = (a & not_b);
assign nota_and_b = (not_a & b);
assign f = (a_and_notb & nota_and_b);

endmodule