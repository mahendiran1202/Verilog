module sipo#(
parameter WIDTH=4)
(input clk,
 input rst,
 input s_in,
 output wire [3:0]p_out);
 reg[WIDTH-1:0]shift_reg;
always @(posedge clk)begin
if(rst)
     shift_reg<={WIDTH{1'b0}};
else
      shift_reg<={shift_reg[WIDTH-2:0],s_in};
end
assign p_out[3:0]=shift_reg[WIDTH-1];
endmodule
