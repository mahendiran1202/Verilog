module tff(
	input t,
	input clk,
	input rst, 
	output reg q);

always @(negedge clk or posedge rst) begin
	if (rst) q<=0;
	else if (t) q<=~q;
end
endmodule

module async_down_counter(
	input clk,
	input rst, 
	output [3:0] q);

tff t1(.clk(clk),.rst(rst),.t(1'b1),.q(q[0]));
tff t2(.clk(~q[0]),.rst(rst),.t(1'b1),.q(q[1]));
tff t3(.clk(~q[1]),.rst(rst),.t(1'b1),.q(q[2]));
tff t4(.clk(~q[2]),.rst(rst),.t(1'b1),.q(q[3]));
endmodule
