//Desing

module two_one_data_flow(
input[1:0]a,
input sel,
output b);
assign b=(sel & a[1]) | (~sel & a[0]); 
endmodule
