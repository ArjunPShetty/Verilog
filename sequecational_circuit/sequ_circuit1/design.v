module design(a, b, c, clk, rst, y);
input a, b, c, clk, rst;
output y;

wire com_1, com_2;
reg reg_1, reg_2;

assign com_1 = (a | b) & c;
assign com_2 = ~reg_1;
assign y = ~reg_2;

always @(posedge clk or posedge rst)
begin

if(rst == 1'b1)
begin
reg_1 <= 1'b1;
reg_2 <= 1'b1;
end 

else

begin
reg_1 <= com_1;
reg_2 <= com_2;
end

end
endmodule
