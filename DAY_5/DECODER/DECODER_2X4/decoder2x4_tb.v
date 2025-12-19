module decoder2x4_tb;
wire [3:0]b;
reg [1:0]a;
decoder2x4 dut(.a(a),.b(b));
initial begin
$monitor("Time=%0t | a=%b |  b=%b |( b[3]=%b | b[2]=%b | b[1]=%b | b[0]=%b )",$time,a,b,b[3],b[2],b[1],b[0]);
$dumpfile("decoder2x4.vcd");
$dumpvars;
a=2'b00;#5;
a=2'b01;#5;
a=2'b10;#5;
a=2'b11;#5;
$finish;
end
endmodule
