module siso#(
parameter WIDTH=4)
(input wire clk,
input wire rst,
input wire s_in,
output wire s_out);
reg[WIDTH-1:0]shift_reg;
always @(posedge clk)begin
if(rst)
        shift_reg<={WIDTH{1'b0}};
else
        shift_reg<={shift_reg[WIDTH-2:0],s_in};
end
assign s_out=shift_reg[WIDTH-1];
endmodule
       
      
