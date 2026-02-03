module sr_latch(
input wire s,
input wire r,
output reg q,
output reg qn);
always @(s or r)begin
	if (s==1'b1 && r==1'b0)begin
		q=1'b1;
		qn=1'b0;
	end
	else if (s==1'b0 && r==1'b1)begin
		q=1'b0;
		qn=1'b1;
	end
	else if (s==1'b0 && r==1'b0)begin
	end
	else begin
		q=1'bx;
	        qn=1'bx;
end 
end
endmodule
