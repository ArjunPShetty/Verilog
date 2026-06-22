module tb;
reg [3:0]a, b;
reg c0;
wire [3:0]s;
wire c4;

adder uut(a, b, c0, s, c4);

initial begin 
a = 4'b0011; b = 4'b0011; c0 = 1'b0; #10;
a = 4'b1011; b = 4'b1011; c0 = 1'b0; #10;
a = 4'b1111; b = 4'b1111; c0 = 1'b0; #10;
$finish;
end 
initial begin 
$dumpfile("dump.vcd");
$dumpvars(0,tb);
end 
endmodule

