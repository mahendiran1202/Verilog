//Desing

module mux2x_behavioral(
input [1:0]a,
input select_line,
output reg y);
always @(*)begin
case(select_line)
1'b0:y=a[0];
1'b1:y=a[1];
default :y=1'b0;
endcase
end
endmodule

