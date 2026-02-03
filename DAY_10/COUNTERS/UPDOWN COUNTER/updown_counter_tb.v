module updown_counter_tb;
reg clk;
reg rst;
reg up;
wire [3:0]count;
updown_counter dut(.clk(clk),.rst(rst),.up(up),.count(count));
always #5 clk=~clk;
initial begin
$dumpfile("updown_counter.vcd");
$dumpvars(0,updown_counter_tb);
$monitor("count=%b | up=%b | time=%0t", count, up, $time);
clk=0;
rst=1;#10;
up=1;

rst=0;#10;

up=0;#100;
up=1;#100;

#300 $finish;

end
endmodule
