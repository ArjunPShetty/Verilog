module tb ();
reg a,b;
wire s,c;

halfadder dut (.a(a),.b(b),.s(s),.c(c));

initial begin
a=1'b0;b=1'b0;#100;
a=1'b0;b=1'b1;#100;
a=1'b1;b=1'b0;#100;
a=1'b1;b=1'b1;#100;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(0);
end
endmodule