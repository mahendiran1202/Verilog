//TB

module half_subtractor_tb();
reg a,b;
wire diff,borrow;
half_subtractor dut(.a(a),.b(b),.diff(diff),.borrow(borrow));
initial begin
$monitor("Time=%0t | a=%b | b=%b | diff=%b | borrow=%b ",$time,a,b,diff,borrow);
$dumpfile("half_subtractor.vcd");
$dumpvars;
a=0;b=0;#5
a=0;b=1;#5
a=1;b=0;#5
a=1;b=1;#5
$finish;
end
endmodule
