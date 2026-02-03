module binary_to_bcd_tb;
wire [7:0]b;
reg [3:0]a;
integer i;
binary_to_bcd dut(.a(a),.b(b));
initial begin 
$monitor("Time=%0t | a=%b(%d) | b=%b(%d)",$time,a,a,b,a);
$dumpfile("binary_to_bcd.vcd");
$dumpvars;
for(i=0;i<2**4;i++) begin
a=i;#5;
end
end
endmodule
