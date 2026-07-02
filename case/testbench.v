module tb;
reg [1:0]a, b, c, d;
reg [1:0]s;
wire [1:0]y;

cases uut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s(s),
    .y(y)
);

initial begin
    $dumpfile("dump.vvp");
    $dumpvars(0,tb);
end

initial begin
    a <= 2'b00; b <=2'b01; c <=2'b10; d <=2'b11;
    s <= 2'b00; #100;
    s <= 2'b01; #100;
    s <= 2'b10; #100;
    s <= 2'b11; #100;
    $finish;
end
endmodule