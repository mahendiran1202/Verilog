module sr_latch_tb;
reg s;
reg r;
wire q;
wire qn;
sr_latch dut(.s(s),.r(r),.q(q),.qn(qn));
initial begin
$monitor("s=%b | r=%b | q=%b | qn=%b | time=%t",s,r,q,qn,$time);
$dumpfile("sr_latch.vcd");
$dumpvars();
s=0;r=1;#10;
s=1;r=0;#10;
s=0;r=0;#10;
s=0;r=1;#10;
s=0;r=0;#10;
s=1;r=1;#10;
$finish;
end
endmodule

