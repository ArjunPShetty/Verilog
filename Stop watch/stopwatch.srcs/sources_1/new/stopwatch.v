`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 11:08:13
// Design Name: 
// Module Name: stopwatch
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


module stopwatch (
    input  wire clk,     
    input  wire rst,         
    input  wire start_stop,  
    output reg  [3:0] sec_ones,
    output reg  [3:0] sec_tens,
    output reg  [3:0] min_ones,
    output reg  [3:0] min_tens
);
    parameter CLK_FREQ = 10; 

    reg [$clog2(CLK_FREQ)-1:0] clk_cnt;
    reg one_sec_pulse;
    reg run;
    always @(posedge clk) begin
        if (rst) begin
            clk_cnt       <= 0;
            one_sec_pulse <= 1'b0;
        end else if (clk_cnt == CLK_FREQ-1) begin
            clk_cnt       <= 0;
            one_sec_pulse <= 1'b1;
        end else begin
            clk_cnt       <= clk_cnt + 1;
            one_sec_pulse <= 1'b0;
        end
    end
    always @(posedge clk) begin
        if (rst)
            run <= 1'b0;
        else if (start_stop)
            run <= ~run;
    end
    always @(posedge clk) begin
        if (rst) begin
            sec_ones <= 0;
            sec_tens <= 0;
            min_ones <= 0;
            min_tens <= 0;
        end else if (one_sec_pulse && run) begin
            if (sec_ones == 9) begin
                sec_ones <= 0;
                if (sec_tens == 5) begin
                    sec_tens <= 0;
                    if (min_ones == 9) begin
                        min_ones <= 0;
                        if (min_tens == 5)
                            min_tens <= 0;
                        else
                            min_tens <= min_tens + 1;
                    end else
                        min_ones <= min_ones + 1;
                end else
                    sec_tens <= sec_tens + 1;
            end else
                sec_ones <= sec_ones + 1;
        end
    end

endmodule









