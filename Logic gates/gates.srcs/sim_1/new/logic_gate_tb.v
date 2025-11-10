`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2025 19:15:08
// Design Name: 
// Module Name: logic_gate_tb
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


module logic_gate_tb(    );
reg a,b;
wire y0,y1,y2;
logic_gate uut(a,b,y0,y1,y2);
initial
begin
    a=0; b=0;
#10 a=0; b=1;
#10 a=1; b=0;
#10 a=1; b=1;
#10 $finish;
end

endmodule
