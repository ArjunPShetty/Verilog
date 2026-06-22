module adder (a, b, c0, s, c4);
input [3:0]a,b;
input c0;
output [3:0]s;
output c4;

wire c1, c2, c3;

fulladder fa1(a[0], b[0], c0, s[0], c1 );
fulladder fa2(a[1], b[1], c1, s[1], c2 );
fulladder fa3(a[2], b[2], c2, s[2], c3 );
fulladder fa4(a[3], b[3], c3, s[3], c4 );

endmodule

module fulladder (a,b,cin,s,cout);

input a, b, cin;
output s, cout; 
assign s = a^b^cin;
assign cout = (a & b) | (cin & (a^b));

endmodule