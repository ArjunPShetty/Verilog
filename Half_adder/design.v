module halfadder(a,b,s,c);

input a,b;
output s,c;

assign s=a^b;  //data flow modlling
assign c=a&b;

endmodule