`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 19:41:57
// Design Name: 
// Module Name: generator
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


module generator (
    input  wire clk,
    input  wire rst,
    input  wire [7:0] duty, 
    output reg  pwm_out
);

    reg [7:0] count;

    always @(posedge clk) begin
        if (rst)
            count <= 8'd0;
        else
            count <= count + 1'b1;
    end

    always @(posedge clk) begin
        if (rst)
            pwm_out <= 1'b0;
        else if (count < duty)
            pwm_out <= 1'b1;
        else
            pwm_out <= 1'b0;
    end

endmodule