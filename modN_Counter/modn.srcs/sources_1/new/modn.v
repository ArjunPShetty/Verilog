`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 06:05:48
// Design Name: 
// Module Name: modn
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


module modn #(
    parameter n = 10,
    parameter WIDTH = 4
)(
    input  wire clk,
    input  wire rstn,
    output reg  [WIDTH-1:0] out
);

always @(posedge clk) 
begin
    if (!rstn)
        out <= 0;
    else 
    begin
        if (out == n-1)
            out <= 0;
        else
            out <= out+1;
    end
end

endmodule
