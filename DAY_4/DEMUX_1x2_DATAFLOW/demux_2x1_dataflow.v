module demux2_(
input a,
input select_line, 
output [1:0]b);
assign b = select_line ? {a, 1'b0} : {1'b0, a} ; 
endmodule
