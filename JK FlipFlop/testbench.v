module tb () ;
reg a, b, c;
wire y;

comb_circuit1 dut (
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin
#50 clk = ~clk;
j = 1'b0; k = 1'b0; #100;
j = 1'b0; k = 1'b1; #100;
j = 1'b1; k = 1'b0; #100;
j = 1'b1; k = 1'b1; #100;
j = 1'b0; k = 1'b0; #100;
j = 1'b0; k = 1'b1; #100;
j = 1'b1; k = 1'b0; #100;
j = 1'b1; k = 1'b1; #100;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end

endmodule
