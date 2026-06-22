module decoder (a, y_0, y_1, y_2, y_3,E );

input [1:0]a;
input E;
output [1:0]y_0, y_1, y_2, y_3;

assign y_0 = (E) & (~a[0]) & (~a[1]);
assign y_1 = (E) & (a[0]) & (~a[1]);
assign y_2 = (E) & (~a[0]) & (a[1]);
assign y_3 = (E) & (a[0]) & (a[1]);


endmodule