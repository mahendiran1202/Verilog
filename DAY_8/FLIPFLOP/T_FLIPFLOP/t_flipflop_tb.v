module t_ff_tb;
reg t,clk,rst;
wire q;
t_ff dut(.t(t),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
$monitor("t=%b | q=%b | time=%0t",t,q,$time);
$dumpfile("t_ff.vcd");
$dumpvars(0);
clk=0;
rst=1;
t=0;#5;
 rst=0;
t=1;#10;
t=0;#10;
t=1;#10;
$finish;
end
endmodule

