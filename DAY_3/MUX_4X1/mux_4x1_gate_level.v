//Dsing

module four_onegatelevel(input [1:0]s,input[3:0]i,output y);
    wire e,f;
    wire a,b,c,d;
    not not_1(e,s[0]);     
    not not_2(f,s[1]);     
    and and_1(a,e,f,i[0]);      
    and and_2(b,e,s[1],i[1]);   
    and and_3(c,s[0],f,i[2]);   
    and and_4(d,s[0],s[1],i[3]);
    or or_1(y,a,b,c,d);
endmodule
