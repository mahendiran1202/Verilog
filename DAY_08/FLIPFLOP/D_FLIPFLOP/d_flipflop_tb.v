module d_ff_tb;
reg d,clk,rst;
wire q;
d_ff dut(.d(d),.clk(clk),.rst(rst),.q(q));
always #5 clk=~clk;
initial begin
	$monitor("d=%b | q=%b | time=%0t",d,q,$time);
	$dumpfile("d_ff.vcd");
	$dumpvars(0);
     clk=0;
     rst=1;
     d=0;#5;
     rst=0;
     d=1;#10;
     d=0;#10;
     d=1;#10;
     $finish;
     end
     endmodule
