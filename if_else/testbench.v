module tb;
reg i0, i1, sel;
wire [1:0]out;

if_else uut(
    .i0(i0),
    .i1(i1),
    .sel(sel),
    .out(out)  
);

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
end

initial begin
    i0 = 1'b1; i1 = 1'b0; sel = 1'b1; #100;
    i0 = 1'b0; i1 = 1'b0; sel = 1'b0; #100;
    i0 = 1'b1; i1 = 1'b1; sel = 1'b1; #100;
    i0 = 1'b0; i1 = 1'b1; sel = 1'b0; #100;
    $finish;
end

endmodule