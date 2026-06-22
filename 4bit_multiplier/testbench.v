module tb;

reg clk, rst;
reg[3:0]a, b;
wire[7:0]product;

multiplier dut(.a(a),
               .b(b),
               .product(product),
               .clk(clk),
               .rst(rst)
);

always
#5 clk = ~clk;
initial begin
clk = 0;
rst = 1; #10;
rst = 0;
a = 4'd5; b = 4'd3; #10;
a = 4'd7; b = 4'd4; #10;
a = 4'd7; b = 4'd4; #10;
$finish;
end 
initial begin 
$dumpfile("dump.vcd");
$dumpvars(0,tb);
end 
endmodule