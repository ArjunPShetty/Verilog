module tb;

reg [1:0]a ;
reg E;
wire [1:0] y_0, y_1, y_2, y_3; 

decoder uut (
    .a(a),
    .E(E), 
    .y_0(y_0), 
    .y_1(y_1), 
    .y_2(y_2), 
    .y_3(y_3)
);

initial begin
a = 2'b00; E =1'b1; #100;
a = 2'b01; E =1'b1; #100;
a = 2'b10; E =1'b1; #100;
a = 2'b11; E =1'b1; #100;
$finish;
end

initial begin 
$dumpfile("dump.vcd");
$dumpvars(0,tb);
end
endmodule