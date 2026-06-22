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
a = 1'b0; b = 1'b0; c = 1'b0; #100;
a = 1'b0; b = 1'b0; c = 1'b1; #100;
a = 1'b0; b = 1'b1; c = 1'b0; #100;
a = 1'b0; b = 1'b1; c = 1'b1; #100;
a = 1'b1; b = 1'b0; c = 1'b0; #100;
a = 1'b1; b = 1'b0; c = 1'b1; #100;
a = 1'b1; b = 1'b1; c = 1'b0; #100;
a = 1'b1; b = 1'b1; c = 1'b1; #100;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end

endmodule
