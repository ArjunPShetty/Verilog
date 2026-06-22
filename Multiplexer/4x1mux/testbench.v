module tb ;

reg [1:0]a, b, c, d, s;
wire [1:0]y;

mux dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s(s),
    .y(y)
);

initial begin 
a = 2'b00;
b = 2'b01;
c = 2'b10;
d = 2'b11;

s = 2'b00; #10;
s = 2'b01; #10;
s = 2'b10; #10;
s = 2'b11; #10;
$finish;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end

endmodule