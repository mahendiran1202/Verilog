//DESIGN
module basic_gate(
input a,b,
output out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor);
assign out_and=a&b;
assign out_or=a|b;
assign out_nand=~(a&b);
assign out_nor=~(a|b);
assign out_not=~a;
assign out_xor=(a^b);
assign out_xnor=~(a^b);
endmodule

//TB

module basic_gate_tb;
reg a, b;
wire out_and, out_or, out_nand, out_nor, out_not, out_xor, out_xnor;
basic_gate dut (.a(a),.b(b),.out_and(out_and),.out_or(out_or),.out_nand(out_nand),.out_nor(out_nor),.out_not(out_not),.out_xor(out_xor),.out_xnor(out_xnor));
initial begin
$monitor("a=%b | b=%b | out_and=%b | out_or=%b | out_nand=%b | out_nor=%b | out_not=%b | out_xor=%b | out_xnor=%b | time=%0t",a,b,out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor,$time);
$dumpfile("basic_gate.vcd");
$dumpvars(0);
a=0;b=0;#5;
a=0;b=1;#5;
a=1;b=0;#5;
a=1;b=1;#5;
$finish;
end
endmodule


