module jk_latch(
input wire j,
input wire k,
output reg  q,
output reg qn);
always @ (j or k)begin
if (j==1'b1 && k==1'b0) begin
q=1'b1;
qn=1'b0;
end
else if (j==1'b0 && k==1'b1) begin
q=1'b0;
qn=1'b1;
end
else if (j==1'b0 && k==1'b0) begin
end
else begin
q=~q;
qn=~qn;
end
end
endmodule
