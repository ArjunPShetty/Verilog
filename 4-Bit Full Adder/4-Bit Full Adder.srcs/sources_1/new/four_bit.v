`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2025 05:41:35
// Design Name: 
// Module Name: four_bit
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


module four_bit(
    input [3:0] a,b,
    input ck,
    output [3:0] s,
    output cout
    );
   c_addsub_0 your_instance_name (
     .A(a),          // input wire [3 : 0] A
     .B(b),          // input wire [3 : 0] B
     .CLK(ck),      // input wire CLK
     .C_OUT(cout),  // output wire C_OUT
     .S(s)          // output wire [3 : 0] S
);
endmodule
