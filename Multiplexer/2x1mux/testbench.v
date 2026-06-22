module tb ();

reg s;
reg [1:0]a, b;
wire [1:0]y;

mux dut (
.a(a),
.b(b),
.s(s),
.y(y)
);

initial begin
    a=2'b00; b=2'b00; s=0; #10; s=1; #10;
    a=2'b00; b=2'b01; s=0; #10; s=1; #10;
    a=2'b00; b=2'b10; s=0; #10; s=1; #10;
    a=2'b00; b=2'b11; s=0; #10; s=1; #10;
    a=2'b01; b=2'b00; s=0; #10; s=1; #10;
    a=2'b01; b=2'b01; s=0; #10; s=1; #10;
    a=2'b01; b=2'b10; s=0; #10; s=1; #10;
    a=2'b01; b=2'b11; s=0; #10; s=1; #10;
    a=2'b10; b=2'b00; s=0; #10; s=1; #10;
    a=2'b10; b=2'b01; s=0; #10; s=1; #10;
    a=2'b10; b=2'b10; s=0; #10; s=1; #10;
    a=2'b10; b=2'b11; s=0; #10; s=1; #10;
    a=2'b11; b=2'b00; s=0; #10; s=1; #10;
    a=2'b11; b=2'b01; s=0; #10; s=1; #10;
    a=2'b11; b=2'b10; s=0; #10; s=1; #10;
    a=2'b11; b=2'b11; s=0; #10; s=1; #10;
    $finish;
end

initial begin 
$dumpfile("dump.vcd");
$dumpvars(0);
end
endmodule