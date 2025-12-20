module even_parity_generated_tb;
reg [3:0]a;
wire b ;
wire [4:0]generated;
even_parity_generator dut(.a(a),.b(b),.generated(generated));
initial begin
$monitor("time=%t | a=%b | b=%b | generated=%b",$time,a,b,generated);
$dumpfile("even_parity_generator.vcd");
$dumpvars(0);
a=4'b0000;#5;
a=4'b0001;#5;
a=4'b0010;#5;
a=4'b0011;#5;
$finish;
end
endmodule
