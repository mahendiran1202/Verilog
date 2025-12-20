module even_parity_checker(
input [4:0]a,
output reg b);
always @(*)begin

	b=^a;
end
endmodule
