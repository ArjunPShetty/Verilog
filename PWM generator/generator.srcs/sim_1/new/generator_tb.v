`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 19:42:12
// Design Name: 
// Module Name: generator_tb
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


module generator_tb;

    reg clk;
    reg rst;
    reg [7:0] duty;
    wire pwm_out;

    generator dut (
        .clk(clk),
        .rst(rst),
        .duty(duty),
        .pwm_out(pwm_out)
    );


    always #5 clk = ~clk;

    initial begin
        clk  = 0;
        rst  = 1;
        duty = 8'd0;

        #20 rst = 0;
        #50 duty = 8'd64;    
        #100 duty = 8'd128;  
        #100 duty = 8'd192;  
        #100 duty = 8'd255;  

        #100 $finish;
    end

endmodule







