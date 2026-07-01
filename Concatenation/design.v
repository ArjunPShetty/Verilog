module concatenation (a,b,c,d);

input [1:0]a;
input [3:0]b;

output [7:0]c;
output [15:0]d;

assign c = {2'b00,b,2'b01};
assign d = {8{a}};

endmodule