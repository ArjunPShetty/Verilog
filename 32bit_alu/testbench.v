module tb;
reg[31:0]a,b;
reg[2:0]f;
wire[31:0]y;

alu dut(
    .a(a),
    .b(b),
    .f(f),
    .y(y)
);

initial begin
a = 32'd20;
b = 32'd10; 
f = 3'b000; #10;
f = 3'b001; #10;
f = 3'b010; #10;
f = 3'b011; #10;
f = 3'b100; #10;
f = 3'b101; #10;
f = 3'b110; #10;
$finish;
end 

initial begin
$dumpfile("dump.vcd");
$dumpvars(0,tb);
end
endmodule