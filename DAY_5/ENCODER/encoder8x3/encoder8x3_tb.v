module encoder8x3_tb;
reg [7:0]a;
wire [2:0]b;
encoder8x3 dut(.a(a),.b(b));
initial begin
$monitor("time=%0t | a=%b |b=%b",$time,a,b);
$dumpfile("encoder8x3.vcd");
$dumpvars(0);
a=8'b00000001;#10;
a=8'b00000010;#10;
a=8'b00000100;#10;
a=8'b00001000;#10;
a=8'b00010000;#10;
a=8'b00100000;#10;
a=8'b01000000;#10;
a=8'b10000000;#10;
$finish;
end 
endmodule 
