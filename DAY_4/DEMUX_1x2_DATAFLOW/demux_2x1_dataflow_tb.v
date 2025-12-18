module demux2_tb;
wire [1:0]b;
reg a;
reg select_line;
demux2_ dut( .a(a), .select_line(select_line), .b(b));
initial begin
$monitor("Time = %0t, a = %b, select line = %b, b[0] = %b, b[1] = %b", $time, a, select_line, b[0], b[1]);
$dumpfile("demux2_.vcd");
$dumpvars();
a = 0; select_line = 0;  #10;
a = 1; select_line = 0;  #10;
a = 0; select_line = 1;  #10;
a = 1; select_line = 1;  #10;
$finish;
end
endmodule
