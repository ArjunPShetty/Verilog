`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 05:53:08
// Design Name: 
// Module Name: four_bit_tb
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


module four_bit_tb(    );
reg [3:0] a,b;
reg ck;
wire cout;
wire [3:0] s;

four_bit uut(a,b,ck,s,cout);

always
begin
    #10 ck=0;
    #10 ck=1;
end

initial
begin
       a=3;b=6;
   #10 a=4;b=6;  
   #10 a=2;b=5;  
   #10 a=9;b=4;  
      
end

endmodule
