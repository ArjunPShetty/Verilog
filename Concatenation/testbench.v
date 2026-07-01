module tb;

reg [1:0]a;
reg [3:0]b;

wire [7:0]c;
wire [15:0]d;

concatenation uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d)
);


initial begin
a = 1'b00; b = 1'b1101; #100;
a = 1'b01; b = 1'b1011; #100;
a = 1'b10; b = 1'b0111; #100;
a = 1'b11; b = 1'b1110; #100;

$finish;
end

initial begin
$dumpfile("dump.vvp");
$dumpvars(0);
end

endmodule