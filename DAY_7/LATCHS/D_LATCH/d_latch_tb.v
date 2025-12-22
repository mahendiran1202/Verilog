module d_latch_tb;
reg d;
reg en;
wire q;
d_latch dut(.d(d),.en(en),.q(q));
initial begin
$monitor("d=%b | EN=%b | q=%b | time=%0t",d,en,q,$time);
$dumpfile("d_latch.vcd");
$dumpvars(0);
en=1;
d=0;#10;
d=1;#10;
en=0;
d=1'bx;#10;
$finish;
end
endmodule
