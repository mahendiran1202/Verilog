//TB

module two_onegate_tb;
reg i0,i1,s;
wire y,a,b;
two_onegatelevel dut (.i0(i0),.i1(i1),.s(s),.y(y));
initial begin
$monitor ("time=%t i0=%b i1=%b y=%b",$time,i0,i1,s,y);
$dumpfile("mux.vcd");
$dumpvars(0);
i0=0;i1=0;s=0;#10;
i0=0;i1=1;s=1;#10;
i0=1;i1=0;s=0;#10;
i0=0;i1=1;s=1;#10;
$finish;
end 
endmodule
