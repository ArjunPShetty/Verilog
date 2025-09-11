`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2025 19:32:51
// Design Name: 
// Module Name: half_adder_tb
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



module half_adder_tb;

reg a, b;
wire sum, carry;

// Instantiate the half_adder module
half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    $display("A B | SUM CARRY");
    $display("-------------");

    a = 0; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 0; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 1; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    a = 1; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);

    $finish;
end

endmodule
