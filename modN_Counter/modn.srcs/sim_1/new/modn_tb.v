`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 06:06:11
// Design Name: 
// Module Name: modn_tb
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


module modn_tb;

parameter n = 10;
parameter WIDTH = 4;

reg clk;
reg rstn;
wire [WIDTH-1:0] out;

modn uut (
    .clk(clk),
    .rstn(rstn),
    .out(out)
);

always #10 clk = ~clk;

initial begin
    clk  = 0;
    rstn = 0;

    $monitor("T=%0t rstn=%0b out=%0d", $time, rstn, out);

    repeat(2) @(posedge clk);
    rstn = 1;

    repeat(20) @(posedge clk);

    $finish;
end

endmodule