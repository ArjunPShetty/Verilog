`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2025 09:44:30
// Design Name: 
// Module Name: traffic_fsm
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




module traffic_fsm(
    input clk,
    input reset,
    output reg [2:0] highway_light,   // R Y G
    output reg [2:0] cross_light      // R Y G
);

parameter HG = 2'b00;
parameter HY = 2'b01;
parameter CG = 2'b10;
parameter CY = 2'b11;

reg [1:0] state;
reg [31:0] counter;

parameter T_HG = 50;
parameter T_HY = 20;
parameter T_CG = 50;
parameter T_CY = 20;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state   <= HG;
        counter <= 0;
    end else begin
        case(state)
            HG: begin
                if (counter < T_HG) counter <= counter + 1;
                else begin counter <= 0; state <= HY; end
            end
            HY: begin
                if (counter < T_HY) counter <= counter + 1;
                else begin counter <= 0; state <= CG; end
            end
            CG: begin
                if (counter < T_CG) counter <= counter + 1;
                else begin counter <= 0; state <= CY; end
            end
            CY: begin
                if (counter < T_CY) counter <= counter + 1;
                else begin counter <= 0; state <= HG; end
            end
        endcase
    end
end

always @(*) begin
    case(state)
        HG: begin highway_light = 3'b001; cross_light = 3'b100; end
        HY: begin highway_light = 3'b010; cross_light = 3'b100; end
        CG: begin highway_light = 3'b100; cross_light = 3'b001; end
        CY: begin highway_light = 3'b100; cross_light = 3'b010; end
    endcase
end

endmodule

