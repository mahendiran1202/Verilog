module comparator_tb;
reg a,b;
wire greater,equal,less;
comparator dut(.a(a),.b(b),.greater(greater),.equal(equal),.less(less));
initial begin
$monitor("a=%b | b=%b | A Greater B=%b |A Equal B=%b | A Less B=%b | time=%t",a,b,greater,equal,less,$time);
$dumpfile("comparator.vcd");
$dumpvars();
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule 
