module tb;

reg y0, y1, y2, y3;
wire a1, a0;

encoder uut(
    .y0(y0),
    .y1(y1), 
    .y2(y2), 
    .y3(y3),
    .a1(a1),
    .a0(a0)
);

initial begin
y3 = 1'b0; y2 = 1'b0; y1 = 1'b0; y0 = 1'b1; #100;
y3 = 1'b0; y2 = 1'b0; y1 = 1'b1; y0 = 1'b0; #100;
y3 = 1'b0; y2 = 1'b1; y1 = 1'b0; y0 = 1'b0; #100;
y3 = 1'b1; y2 = 1'b0; y1 = 1'b0; y0 = 1'b0; #100;
$finish;
end 

initial begin
$dumpfile("damp.vcd");
$dumpvars(0,tb);
end
endmodule