module encoder4x2_tb;
reg [3:0]a;
wire [1:0]b;
encoder4x2 dut(.a(a),.b(b));
initial begin
$monitor("Time=%0t | a=%b | b=%b",$time,a,b,);
$dumpfile("encoder4x2.vcd");
$dumpvars;
a=4'b0001;#5;
a=4'b0010;#5;
a=4'b0100;#5;
a=4'b1000;#5;
$finish;
end
endmodule
