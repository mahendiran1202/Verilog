//Desing

module full_subtractor( input a,b,c,output difference,borrow);
wire nd1,nd2,nota;
xor(difference,a,b,c);  
not(nota,a);
and(nd1,nota,b);   
xnor(nd2,a,b);
and(nd3,c,nd2);
or(borrow,nd1,nd3);	
endmodule
