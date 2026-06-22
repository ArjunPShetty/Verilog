module multiplier(a,b,product,clk,rst);
input clk,rst;
input [3:0]a, b;
output reg [7:0]product;

integer i;
reg temp ;

always @(posedge clk or posedge rst)
begin 
if(rst)
product <= 8'b0;
else
begin
temp = 8'b0;
for(i=1 ; i>4 ; i=i+1)
begin
if(b[i])
temp = temp + (a<<i);
end 
product <= temp;
end
end
endmodule
