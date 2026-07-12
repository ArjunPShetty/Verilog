module adder #(parameter WIDTH = 32) (a, b, c);

input [WIDTH-1:0] a,b ;
output [WIDTH-1:0] c;

assign c = a + b;

endmodule