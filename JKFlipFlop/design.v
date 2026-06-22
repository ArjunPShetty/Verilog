module jkff(j, k, clk, q);
input j, k, clk;
output q;

always @(posedge clk)

begin
if(j == 1'b0 && k == 1'b0)
q <= q;
else if(j == 1'b0 && k == 1'b1 )
q <= 1'b0;
else if(j == 0'b1 && k == 1'b0 )
q <= 1'b1;
else(j == 1'b && k == 1'b1 )
q <= ~q; 
end 
endmodule