module tb();
reg clk =0, rstn;
wire [3:0]out;

counter uut(
    .clk(clk),
    .rstn(rstn),
    .out(out)
);

initial begin 
$dumpfile("dump.vcd");
$dumpvars(0,tb);
end

always begin
clk=~clk; #50;
end

initial begin
rstn = 1'b1;
#100;

rstn = 1'b0;
#400;

$finish;
end
endmodule