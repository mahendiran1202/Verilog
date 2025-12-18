module demux4x1(
input a,
input [1:0]select_line, 
output [3:0]b);
assign b = select_line[1] ? (select_line[0] ? {a, 3'b000} : {1'b0, a, 2'b00}) :  (select_line[0] ? {2'b00, a, 1'b0} : {3'b000, a}) ;
endmodule
