//TB

module mux2x_behavioral_tb;
reg [1:0]a;
reg select_line;
wire y;
mux2x_behavioral dut(.a(a),.select_line(select_line),.y(y));
initial begin
$monitor("a[1]=%b | a[0]=%b |  y=%b | select_line=%b | time=%0t",a[1],a[0],select_line,y,$time);
$dumpfile("mux2x_behavioral.vcd");
$dumpvars(0);
a=2'b00;select_line=0;#10;
a=2'b01;select_line=0;#10;
a=2'b10;select_line=1;#10;
a=2'b11;select_line=1;#10;
$finish;
end
endmodule
 
