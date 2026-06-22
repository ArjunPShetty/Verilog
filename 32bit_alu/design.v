module alu(a, b, f, y);
input [31:0]a, b;
input [2:0]f;
output reg [31:0]y;

always @(*)
begin
case(f)
        3'b000 : y = a & b;      // AND
        3'b001 : y = a | b;      // OR
        3'b010 : y = ~(a & b);   // NAND
        3'b011 : y = ~(a | b);   // NOR
        3'b100 : y = a + b;      // ADD
        3'b101 : y = a - b;      // SUB
        3'b110 : y = a * b;      // MUL
endcase
end
endmodule