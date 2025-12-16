//Desing

module halfadder(input a,b,output s,c);
xor xor_gate(s,a,b);
and and_gate(c,a,b);
endmodule
