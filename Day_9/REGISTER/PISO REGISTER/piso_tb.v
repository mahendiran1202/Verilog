module piso_tb;
reg clk;
reg rst;
reg [3:0]p_in;
wire s_out;
piso dut(.clk(clk),.rst(rst),.p_in(p_in),.s_out(s_out));
always #5 clk=~clk;
initial begin
$monitor("p_in=%b | s_out=%b | time=%0t",p_in,s_out,$time);
$dumpfile("piso.vcd");
$dumpvars(0);
clk=0;
rst=1;
p_in=1010;#10;

rst=0;
p_in=4'b0000;#10;
p_in=4'b0001;#10;
p_in=4'b0010;#10;
p_in=4'b0011;#10;
p_in=4'b0100;#10;
p_in=4'b0101;#10;
p_in=4'b0110;#10;
p_in=4'b0111;#10;
p_in=4'b1000;#10;
p_in=4'b1001;#10;
$finish;
end
endmodule
