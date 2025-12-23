`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 11:13:54
// Design Name: 
// Module Name: stopwatch_tb
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


module stopwatch_tb;
    reg clk;
    reg rst;
    reg start_stop;
    wire [3:0] sec_ones;
    wire [3:0] sec_tens;
    wire [3:0] min_ones;
    wire [3:0] min_tens;

    stopwatch dut (
        .clk(clk),
        .rst(rst),
        .start_stop(start_stop),
        .sec_ones(sec_ones),
        .sec_tens(sec_tens),
        .min_ones(min_ones),
        .min_tens(min_tens)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        start_stop = 0;
        #20;
        rst = 0;             
        #20;
        start_stop = 1;      
        #10 start_stop = 0;
        #200;                
        start_stop = 1;      
        #10 start_stop = 0;
        #100;               
        start_stop = 1;      
        #10 start_stop = 0;
        #200;
        $finish;
    end

endmodule
