module odd_party_generator_tb;
reg [3:0]a;
wire b;
wire [4:0]generated;
odd_parity_generator dut(.a(a),.b(b),.generated(generated));
initial begin
$monitor("time=%t | a=%b | b=%b | generated=%b",$time,a,b,generated);
$dumpfile("odd_parity_generator.vcd");
$dumpvars(0);
a=4'b0001;#10; 
a=4'b0011;#10;
a=4'b0111;#10;
a=4'b1111;#10;
$finish;
end
endmodule

