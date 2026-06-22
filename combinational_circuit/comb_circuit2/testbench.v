module tb () ;
reg a, b;
wire f;

comb_circuit2 dut (
    .a(a),
    .b(b),
    .f(f)
);

initial begin
a = 1'b0; b = 1'b0; #100;
a = 1'b0; b = 1'b1; #100;
a = 1'b1; b = 1'b0; #100;
a = 1'b1; b = 1'b1; #100;
$finish ;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end

endmodule
