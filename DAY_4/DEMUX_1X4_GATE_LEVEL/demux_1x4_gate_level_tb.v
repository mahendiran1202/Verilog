module demux1x4_tb;
wire [3:0]b;
reg a;
reg [1:0]select_line;
demux1x4 dut(.a(a),.select_line(select_line),.b(b));
initial begin
$monitor("Time=%0t | a=%b | select_line=%b | b[0]=%b | b[1]=%b | b[2]=%b | b[3]=%b",$time,a,select_line,b[0],b[1],b[2],b[3]);
$dumpfile("demux1x4.vcd");
$dumpvars();
a = 0; select_line = 2'b00;  #10;
a = 1; select_line = 2'b01;  #10;
a = 0; select_line = 2'b10;  #10;
a = 1; select_line = 2'b11;  #10;
$finish;
end
endmodule
