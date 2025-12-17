//TB

module mux2x1_tb;
reg [7:0]a;
reg [1:0] select_line;
wire [7:0]y;
mux2x1 dut(.a(a),.select_line(select_line),.y(y));
initial begin
$monitor("a[1]=%b | a[0]=%b |  y=%b | select_line=%b | time=%0t",a[1],a[0],select_line,y,$time);
$dumpfile("mux2x1.vcd");
$dumpvars(0);
a=00000000;
a=01010101;
a=10101010;
a=11111111;
#5;select_line=0;  
#5;select_line=1;
#5;select_line=0;
$finish;
end
endmodule
