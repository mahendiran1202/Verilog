module sipo_tb;
parameter WIDTH=4;
reg clk;
reg rst;
reg s_in;
wire [WIDTH-1:0]p_out;
sipo #(.WIDTH(WIDTH)) dut(.clk(clk),.rst(rst),.s_in(s_in),.p_out(p_out));
always #5 clk=~clk;
initial begin
$monitor("s_in=%b | p_out=%b | time=%0t",s_in,p_out,$time);
$dumpfile("sipo.vcd");
$dumpvars(0);
clk=0;
rst=1;
s_in=0;#10;

rst=0;
s_in=0;#10;
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
