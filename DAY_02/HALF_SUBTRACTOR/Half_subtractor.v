//Desing

module half_subtractor(input a,b,output diff,borrow);
wire not_a;
assign diff=a^b;
assign borrow=~a&b; 
xor(diff,a,b );
not(not_a,a);
and(borrow,not_a,b);
endmodule
