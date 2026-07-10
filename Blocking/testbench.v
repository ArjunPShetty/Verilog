module tb ;

reg clk, rst, a, b;
wire z, y;

blocking dut (
    .clk(clk), 
    .rst(rst), 
    .a(a), 
    .b(b), 
    .z(z), 
    .y(y)
    
);

always begin
clk <= 1'b0; #50;
clk <= 1'b1; #50;
end

initial begin
rst <= 1'b1;
a <= 1'b0; b <= 1'b0; #100;

rst <= 1'b0;
a <= 1'b0; b <= 1'b0; #100;
a <= 1'b1; b <= 1'b0; #100; 
a <= 1'b0; b <= 1'b1; #100; 
a <= 1'b1; b <= 1'b1; #100; 
$finish;
end

initial begin
$dumpfile("dump.vvp");
$dumpvars(0,tb);
end

endmodule