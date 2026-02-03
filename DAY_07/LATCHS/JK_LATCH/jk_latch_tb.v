module jk_latch_tb;
reg j;
reg k;
wire q;
wire qn;
jk_latch dut(.j(j),.k(k),.q(q),.qn(qn));
initial begin
$monitor("j=%b | k=%b | q=%b | qn=%b |time=%t",j,k,q,qn,$time);
$dumpfile("jk_latch.vcd");
$dumpvars();
j=1;k=0;#10;
j=0;k=1;#10;
j=0;k=0;#10;
j=1;k=0;#10;
j=0;k=0;#10;
j=1;k=1;#10;
$finish;
end
endmodule
