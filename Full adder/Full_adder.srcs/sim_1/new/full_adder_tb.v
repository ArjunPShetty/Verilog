`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 19:45:19
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb(    );

wire sum,carry;
reg a,b,cin;

full_adder dut(a,b,cin,sum,carry);
initial
begin
     a=0;b=0;cin=0;
#10  a=0;b=0;cin=1;
#10  a=0;b=1;cin=0;
#10  a=0;b=1;cin=1;
#10  a=1;b=0;cin=0;
#10  a=1;b=0;cin=1;
#10  a=1;b=1;cin=0;
#10  a=1;b=1;cin=1;
#10 $finish;


end

endmodule
