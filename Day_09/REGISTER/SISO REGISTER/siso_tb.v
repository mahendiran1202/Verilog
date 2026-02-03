module siso_tb;
reg clk;
reg rst;
reg s_in;
wire s_out;
siso dut(.clk(clk),.rst(rst),.s_in(s_in),.s_out(s_out));
always #5 clk=~clk;
initial begin
$monitor("s_in=%b | s_out=%b | time=%0t",s_in,s_out,$time);
$dumpfile("siso.vcd");
$dumpvars(0);
clk=0;
rst=1;
s_in=0;

rst=0;#10;
s_in=1;#10;
s_in=0;#10;
s_in=1;#10;
s_in=0;#10;
s_in=1;#10;
s_in=0;#10;
s_in=1;#10;
s_in=0;#10;
s_in=1;#10;
$finish;
end
endmodule
