module even_parity_checker_tb;
reg [4:0]a;
wire b;
even_parity_checker dut(.a(a),.b(b));
always @(a*b)begin
	if(b)
           $monitor("time=%t | a=%b | b=%b-ERROR",$time,a,b);
   else
	   $monitor("time=%t | a=%b | b=%b-NOERROR",$time,a,b);
   end
   initial begin
	   $dumpfile("even_parity_checker.vcd");
	   $dumpvars(0);
	   for(integer i=0;i<2**5;i++) begin
		   a=i;#15;
	   end
	   $finish;
   end
   endmodule

