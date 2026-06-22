module mux (a, b, c, d, s, y);

input [1:0]a, b, c, d, s;
output [1:0]y;

assign y = (s == 2'b00) ? a : // Using Continuous Assignment
           (s == 2'b01) ? b :
           (s == 2'b10) ? c : d ;


endmodule