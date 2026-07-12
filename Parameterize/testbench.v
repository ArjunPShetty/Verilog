module tb;

reg [31:0] a,b;
wire [31:0] c;

adder #(.WIDTH(32)) dut(
    .a(a),
    .b(b),
    .c(c)
);

initial begin
a = 32'h00000000; b = 32'h00000000; #100;
a = 32'h00000001; b = 32'h00000000; #100;
a = 32'h00000000; b = 32'h00000001; #100;
a = 32'h00000001; b = 32'h00000001; #100;
$finish;
end

initial begin
$dumpfile("dump.vvp");
$dumpvars(0);
end

endmodule