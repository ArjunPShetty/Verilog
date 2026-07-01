module if_else (i0, i1, sel, out);

input i0, i1, sel;
output reg [1:0]out;

always @(*)

begin
    if(sel == 1'b0)
        out = i0 * i1;
    else
        out = i0 + i1; 
end

endmodule