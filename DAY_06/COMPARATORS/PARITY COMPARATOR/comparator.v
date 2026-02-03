module comparator(
input a,b,
output reg greater,equal,less);
always @(*)begin
{greater,equal,less}=3'b000;
if (a>b)
greater =1;
else if (a==b)
equal =1;
else if (a<b)
less =1;
end 
endmodule
