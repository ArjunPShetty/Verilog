module tb;

reg clk, rst, d;
wire q;

dff uut (
    .rst(rst),
    .clk(clk),
    .d(d),
    .q(q)
);


always begin   //always #50 clk = ~clk; alter method
clk <= 1'b0; #50;
clk <= 1'b1;#50; 
end

initial begin
rst <= 1'b1; #100;
rst <= 1'b0; #100;
d <= 1'b1; #100;
d <= 1'b0; #100;
$finish;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end
endmodule