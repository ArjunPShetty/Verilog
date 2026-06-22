module tb();
reg a, b;
wire y;
gate dut (
    .a(a),
    .b(b),
    .y(y)
);
initial begin
    a = 1'b0; b = 1'b0; #100;
    a = 1'b0; b = 1'b1; #100;
    a = 1'b1; b = 1'b0; #100;
    a = 1'b1; b = 1'b1; #100;

    $finish;
end
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
end
endmodule