//TB
module basic_gates_behavioral_tb;
reg a, b;
wire and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out;
basic_gates_behavioral dut (.a(a),.b(b),.and_out(and_out),.or_out(or_out),.not_out(not_out),.nand_out(nand_out),.nor_out(nor_out),.xor_out(xor_out),.xnor_out(xnor_out));
initial begin
$monitor("a=%b | b=%b | and_out=%b |  or_out=%b |  not_out=%b |  nand_out=%b |  nor_out=%b |  xor_out=%b |  xnor_out=%b | time=%t",a,b,and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out,$time);
$dumpfile("basic_gates_behavioral.vcd");
$dumpvars();
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
$finish;
end
endmodule

  
  
  //DESIGN
  module basic_gates_behavioral (
input  a,
input  b,
output reg and_out,
output reg or_out,
output reg not_out,
output reg nand_out,
output reg nor_out,
output reg xor_out,
output reg xnor_out);
always @(*) begin
and_out  = a & b;
or_out   = a | b;
not_out  = ~a;
nand_out = ~(a & b);
nor_out  = ~(a | b);
xor_out  = a ^ b;
xnor_out = ~(a ^ b);
end
endmodule
