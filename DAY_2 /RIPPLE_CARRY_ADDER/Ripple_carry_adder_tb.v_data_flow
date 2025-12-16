//TB

module ripple_carry_adder_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
wire c0,c1,c2;
ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
$monitor("a=%b | b=%b | cin=%b | sum=%b | cout=%b | time=%t",a,b,cin,sum,cout,$time);
$dumpfile("ripple_carry_adder.vcd");
$dumpvars();
a=4'b0000;b=4'b0000;cin=0;#5;
a=4'b0000;b=4'b0001;cin=1;#5;
a=4'b0001;b=4'b0000;cin=1;#5;
a=4'b1001;b=4'b1001;cin=1;#5;
$finish;
end
endmodule
