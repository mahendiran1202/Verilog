//TB

module mux8x_tb;
reg [7:0]a;
reg [2:0]select_line;
wire y;
mux8 dut(.a(a),.select_line(select_line),.y(y));
initial begin
$monitor("a=%b | selcet_line=%b | y=%b | time=%0t",a,select_line,y,$time);
$dumpfile("mux8.vcd");
$dumpvars();
a=8'b10101010;
select_line=3'b000;#7;
select_line=3'b001;#7;
select_line=3'b010;#7;
select_line=3'b011;#7;
select_line=3'b100;#7;
select_line=3'b101;#7;
select_line=3'b110;#7;
select_line=3'b111;#7;
$finish;
end 
endmodule
