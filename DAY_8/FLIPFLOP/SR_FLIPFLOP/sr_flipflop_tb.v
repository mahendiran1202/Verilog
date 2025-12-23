module sr_ff_tb;
reg s,r,clk,rst;
wire q,qn;
sr_ff dut(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qn(qn));
always #5 clk=~clk;
initial begin
$monitor("s=%b | r=%b |q=%b | qn=%b | time=%0t",s,r,q,qn,$time);
$dumpfile("sr_ff.vcd");
$dumpvars(0);
clk=0;
rst=1;
s=0;
r=0;#10;
rst=0;
s=0;r=0;#10;
s=0;r=1;#10;
s=1;r=0;#10;
s=1;r=1;#10;
s=0;r=1;#10;
s=1;r=1;#10;
$finish;
end
endmodule
