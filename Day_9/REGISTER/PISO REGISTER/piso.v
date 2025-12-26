module piso(
 input clk,
 input rst,
 input [3:0]p_in,
 output reg s_out);
always @(posedge clk or posedge rst)begin
if(rst)
     s_out<=1'b0;
else
      s_out<=p_in;
end
endmodule
