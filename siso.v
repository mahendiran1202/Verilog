module siso(
input clk,
input rst,
input s_in,
output s_out);
reg [3:0] shift_reg;
always @(posedge clk) begin
   if(rst)
      shift_reg <=4'b0000;
  else 
        shift_reg <= {shift_reg[2:0], s_in};
end
assign s_out = shift_reg[3];
endmodule


