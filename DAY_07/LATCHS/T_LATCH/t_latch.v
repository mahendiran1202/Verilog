module t_latch(
input t,
input en,
input rst,
output reg q);
always @ (*)begin
if(rst)begin
q=1'b0;
end
else if (en)begin
if (t)
q=~q;
else 
q=q;
end
end
endmodule
