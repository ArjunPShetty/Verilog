`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2026 09:40:33
// Design Name: 
// Module Name: alu_32_bit
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


module alu_32_bit(y,a,b,f); 
input [31:0]a; 
input [31:0]b; 
input [2:0]f; 
output reg [31:0]y; 
always@(*) 
begin 
case(f) 
3'b000:y=a&b;  
3'b001:y=a|b;   
3'b010:y=~(a&b);     
3'b011:y=~(a|b);     
3'b101:y=a+b;  
3'b110:y=a-b;  
3'b111:y=a*b;  
default:y=32'bx; 
endcase 
end 
endmodule 

