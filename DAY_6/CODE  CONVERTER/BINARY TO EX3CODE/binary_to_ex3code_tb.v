module binary_to_ex3code_tb;
reg [3:0]a;
wire [3:0]b;
integer i;
binary_to_ex3code dut(.a(a),.b(b));
initial begin
$monitor("a=%b | b=%b | time=%t",a,b,$time);
$dumpfile("binary_to_ex3code.vcd");
$dumpvars();
for(i=0;i<2**4;i++)begin
a=i;#10;
end
$finish;
end
endmodule
