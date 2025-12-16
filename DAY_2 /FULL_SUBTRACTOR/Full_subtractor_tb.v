//TB

module full_subtractor_tb;
reg a,b,c;
wire difference,borrow;
full_subtractor dut(.a(a),.b(b),.c(c),.difference(difference),.borrow(borrow));
initial begin 
$monitor("Time=%0t | a=%b | b=%b | c=%b | difference=%b | borrow=%b", $time, a,b,c,difference,borrow);
$dumpfile("full_subtractor.vcd");
$dumpvars;
a=0;b=0;c=0;#5;
a=0;b=0;c=1;#5;
a=0;b=1;c=0;#5;
a=0;b=1;c=1;#5;
a=1;b=0;c=0;#5;
a=1;b=0;c=1;#5;
a=1;b=1;c=0;#5;
a=1;b=1;c=1;#5;
$finish; 
end
endmodule
