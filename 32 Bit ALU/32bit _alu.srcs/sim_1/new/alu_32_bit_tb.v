`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2026 09:42:08
// Design Name: 
// Module Name: alu_32_bit_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_32_bit_tb; 
reg [31:0]a; 
reg [31:0]b; 
reg [2:0]f; 
wire [31:0]y; 
alu_32_bit test2(.y(y),.a(a),.b(b),.f(f)); 
initial 
begin 
a=32'h00000000; 
b=32'hFFFFFFFF; 
#10 f=3'b000; 
#10 f=3'b001; 
#10 f=3'b010; 
#10 f=3'b011;
#10 f=3'b100; 
#10 f=3'b101; 
#10 f=3'b110; 
#10 f=3'b111;
end 
initial 
#50 $finish; 
endmodule
