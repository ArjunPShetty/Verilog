module encoder (y0, y1, y2, y3, a1, a0);

input y0, y1, y2, y3;
output a1, a0;

assign a1 = y2 | y3;
assign a0 = y1 | y3;

endmodule