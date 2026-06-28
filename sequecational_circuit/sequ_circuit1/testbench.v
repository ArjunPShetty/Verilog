module tb;
reg a, b, c;
reg clk, rst;
wire y;

design uut (
    .a(a),
    .b(b),
    .c(c),
    .clk(clk),
    .rst(rst),
    .y(y)
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

initial begin
    clk = 1'b0;
    forever #50 clk = ~clk;
end

initial begin
    rst = 1'b1;
    a = 1'b0; b = 1'b0; c = 1'b0; #100;

    rst = 1'b0;
    a = 1'b0; b = 1'b0; c = 1'b0; #100;
    a = 1'b0; b = 1'b0; c = 1'b1; #100;
    a = 1'b0; b = 1'b1; c = 1'b0; #100;
    a = 1'b0; b = 1'b1; c = 1'b1; #100;
    a = 1'b1; b = 1'b0; c = 1'b0; #100;
    a = 1'b1; b = 1'b0; c = 1'b1; #100;
    a = 1'b1; b = 1'b1; c = 1'b0; #100;
    a = 1'b1; b = 1'b1; c = 1'b1; #100;
    $finish;
end

endmodule