//TB

module two_one_data_flow_tb;
reg [1:0]a;
reg sel;
wire b;
two_one_data_flow dut(.a(a),.sel(sel),.b(b));
initial begin
$monitor("a[1]=%b | a[0]=%b |  b=%b | sel=%b | time=%0t",a[1],a[0],sel,b,$time);
$dumpfile("two_one_data_flow.vcd");
$dumpvars();
a=2'b00;sel=0;#10;
a=2'b01;sel=0;#10;
a=2'b10;sel=1;#10;
a=2'b11;sel=1;#10;
$finish;
end
endmodule
 
