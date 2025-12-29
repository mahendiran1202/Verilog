module updown_counter(
 input clk,
 input rst,
 input up,
 output reg [3:0]count);
always @(posedge clk or posedge rst)begin
if(rst)
     count<=4'b0000;
else if (up)
      count<=count+1'b1;
else
      count<=count-1'b1;
end
endmodule
