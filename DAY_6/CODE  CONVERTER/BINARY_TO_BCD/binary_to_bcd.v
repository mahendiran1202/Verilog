module binary_to_bcd(
input [3:0]a,
output reg [7:0]b);
integer mod,div; 
always @(*) begin 
if(a>9) begin
mod=a%10;   
div=a/10;   
b={div[3:0],mod[3:0]};
end
else
b={4'b0000,a};
end
endmodule
