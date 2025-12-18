//Desing

module mux2x1(
input [7:0]a,
input [1:0] select_line,
output reg [7:0] y);
reg [7:0]mux[3:0];
always @(*)begin
	if (a)begin
	for (integer i=0;i<4;i++)
		mux[i]=a;
end
y=mux[select_line];
end
endmodule
