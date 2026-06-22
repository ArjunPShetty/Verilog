module mux(a, b ,s ,y);

input s;
input [1:0] a, b;
output [1:0] y;

assign y = (s == 1'b0) ? a : b; // Using Continuous Assignment

endmodule        