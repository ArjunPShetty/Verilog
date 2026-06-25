module counter(clk,rstn,out);
input clk,rstn;
output reg [3:0]out;

always @(posedge clk)
begin
if (rstn == 1'b1)
out = 4'b0000;
else
out = out + 1'b1;
end
endmodule