`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 09:44:50
// Design Name: 
// Module Name: traffic_tb
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


module traffic_tb;

reg clk;
reg reset;
wire [2:0] highway_light;
wire [2:0] cross_light;

traffic_fsm dut(
    .clk(clk),
    .reset(reset),
    .highway_light(highway_light),
    .cross_light(cross_light)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #20 reset = 0;
    #1000 $stop;
end

endmodule
