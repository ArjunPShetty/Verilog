module blocking(clk, rst, a, b, z, y);
input clk, rst, a, b;
output reg  z, y;

always @(posedge clk or posedge rst)
begin
if(rst == 1'b1) begin
 z <= 1'b0;
 y <= 1'b0;
end
else begin
z <= a|b;
y <= z;
end
end
endmodule
