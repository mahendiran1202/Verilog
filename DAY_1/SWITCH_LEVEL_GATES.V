//DESING

module cmos_nand (
input  a,b,
output y);
supply1 power;   
supply0 ground;
pmos p1 (y,power,a);
pmos p2 (y,power,b);
nmos n1 (n1,ground,a);
nmos n2 (y,n1,b);
endmodule


//TB


module coms_nand_tb;
reg a,b;
wire y;
wire n1;
cmos_nand dut(.a(a),.b(b),.y(y));
initial begin
$monitor("a=%b | b=%b | y=%b |time=%t",a,b,y,$time);
$dumpfile("cmos_nand.vcd");
$dumpvars();
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
$finish;
end 
endmodule
