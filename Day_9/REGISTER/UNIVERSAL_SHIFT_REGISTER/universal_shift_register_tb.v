module universal_shift_register_tb;
reg clk;
reg rst;
reg [1:0] sel;
reg shift_r;
reg shift_l;
reg [3:0] d;
wire [3:0] q;
universal_shift_register dut (.clk(clk),.rst(rst),.sel(sel),.shift_r(shift_r),.shift_l(shift_l),.d(d),.q(q));
always #5 clk=~clk;
initial begin
$monitor("clock=%d | reset=%d |  mode=%d | shift_right=%b | shift_left=%b | input=%b | output=%b | time=%0t",clk,rst,sel,shift_r,shift_l,d,q,$time);
$dumpfile("universal_shift_register.vcd");
$dumpvars(0);

clk=0;
rst=1;
sel=2'b00;
shift_r=0;
shift_l=0;
d=4'b0000;#10;

rst=0;#10;

sel=2'b11;d=4'b1010;#10;
sel=2'b01;shift_r=1'b1;#10;
sel=2'b10;shift_l=1'b1;#10;
sel=2'b00;#10;
$finish;
end
endmodule
