module pipo(
 input clk,
 input rst,
 input [3:0]p_in,
 output reg [3:0]p_out);
always @(posedge clk or posedge rst)begin
if(rst)
     p_out<=4'b0000;
else
      p_out<=p_in;
end
endmodule

