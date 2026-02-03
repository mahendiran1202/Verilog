module t_latch_tb;
reg t;
reg en;
reg rst;
wire q;
t_latch dut (.t(t),.en(en),.rst(rst),.q(q));
initial begin
$monitor("t=%b | en=%b | rst=%b | q=%b | time=%0t",t,en,rst,q,$time);
$dumpfile("t_latch.vcd");
$dumpvars(0);
t=0;
en=0;
rst=1;#10;
rst=0;#10;
en=1;t=1;#10;
t=0;#10;
en=0;t=1;#10;
en=1;t=1;#10;
$finish;
end
endmodule


