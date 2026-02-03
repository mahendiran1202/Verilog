module jk_ff_tb;
reg j,k,rst,clk;
wire q,qn;
jk_ff dut(.j(j),.k(k),.clk(clk),.rst(rst),.q(q),.qn(qn));
always #5 clk=~clk;
initial begin
$monitor("j=%b | k=%b | q=%b | qn=%b | time=%0t",j,k,q,qn,$time);
$dumpfile("jk_ff.vcd");
$dumpvars(0);
clk=0;
rst=1;
j=0;
k=0;#10;

rst=0;
j=0;k=0;#5;
j=0;k=1;#5;
j=1;k=0;#5;
j=1;k=1;#5;
j=0;k=0;#5;
j=1;k=1;#5;
$finish;
end
endmodule
