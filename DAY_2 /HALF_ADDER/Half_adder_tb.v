//TB

module halfadder_tb();
reg a,b;
wire s,c;
halfadder dut(a,b,s,c);
initial begin
$monitor("time=%t,a=%b,b=%b,s=%b,c=%b",$time,a,b,s,c);
$dumpfile("halfadder.vcd");
$dumpvars(0, halfadder_tb);
#3 a=0;b=0;
#3 a=0;b=1;
#3 a=1;b=0;
#3 a=1;b=1;
#20;
$finish;
end
endmodule
