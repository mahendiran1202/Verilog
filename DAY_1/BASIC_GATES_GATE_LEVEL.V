//DESIGN

module basic_gates_gate_level(a,b,out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor);
input a,b;
output out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor;
and  (out_and,a,b);
or   (out_or,a,b);
nand (out_nand,a,b);
nor  (out_nor,a,b);
not  (out_not,a);
xor  (out_xor,a,b);
xnor (out_xnor,a,b);
endmodule

//TB

module basic_gates_gate_level_tb;
reg a,b;
wire out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor;
basic_gates_gate_level dut (.a(a),.b(b),.out_and(out_and),.out_or(out_or),.out_nand(out_nand),.out_nor(out_nor),.out_not(out_not),.out_xor(out_xor),.out_xnor(out_xnor));
initial begin
$monitor("a=%b | b=%b | out_and=%b | out_or=%b | out_nand=%b | out_nor=%b | out_not=%b | out_xor=%b | out_xnor=%b | time=%0t",a,b,out_and,out_or,out_nand,out_nor,out_not,out_xor,out_xnor,$time);
$dumpfile("basic_gates_gate_level.vcd");
$dumpvars(0);
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end
endmodule

