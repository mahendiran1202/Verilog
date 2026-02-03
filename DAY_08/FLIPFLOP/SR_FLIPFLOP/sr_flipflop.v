module sr_ff(
input s,r,clk,rst,
output reg q,
output qn);
always @(posedge clk or posedge rst)begin
if (rst)
    q<=1'b0;
else begin
     case({s,r})
    2'b00:q<=q;
    2'b01:q<=1'b0;
    2'b10:q<=1'b1;
    2'b11:q<=~q;
endcase
end 
end
assign qn=~q;
endmodule
