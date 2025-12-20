module odd_parity_checker_tb;
reg [4:0]a;
wire b;
odd_parity_checker dut(.a(a),.b(b));
always @(a*b)begin
if(b)
	$monitor("time=%t | a=%b | b=%b-ERROR",$time,a,b);
else
        $monitor("time=%t | a=%b | b=%b-NOERROR",$time,a,b);
end
initial begin
	$dumpfile("odd_parity_checker");
	$dumpvars(0);

	for (integer i=1;i<2**5;i++)begin
		a=i;#5;
	end
	$finish;
end
endmodule

