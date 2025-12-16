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

\\TB

module fulladder_tb;
reg a,b,cin;
wire sum,carry;
fulladder dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial begin
$monitor("a=%b | b=%b | cin=%b | sum=%b | carry=%b |time=%t",a,b,cin,sum,carry,$time);
$dumpfile("fulladder.vcd");
$dumpvars();
a=0;b=0;cin=0;#10;
a=0;b=0;cin=1;#10;
a=0;b=1;cin=0;#10;
a=0;b=1;cin=1;#10;
a=1;b=0;cin=0;#10;
a=1;b=0;cin=1;#10;
a=1;b=1;cin=0;#10;
a=1;b=1;cin=1;#10;
$finish;
end 
endmodule
