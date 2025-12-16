//Desing

module fulladder(
input a,b,cin,
output sum,carry);
wire d,e,f;
xor xor_1(d,a,b);
xor xor_2(sum,d,cin);
and and_1(e,d,cin);
and and_2(f,a,b);
or or_1(carry,e,f);
endmodule
