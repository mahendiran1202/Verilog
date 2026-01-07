module ram_tb;
integer i;
reg clk,rw;
reg [3:0] addr;
reg [7:0] indata;
wire [7:0] outdata;

ram dut(clk,rw,addr,indata,outdata);
initial begin
 clk=0;
forever #10 clk=~clk;
end
initial begin
$display("Address=%b | Input Data=%b | Time=%0t",addr,indata,$time);
$display("Address=%b | Output Data=%b | Time=%ot",addr,outdata,$time);
$dumpfile("memory.vcd");
$dumpvars(0);

rw=1;
addr=0;indata=0;#20;
$display("\nWrite Mode:\n");
for(i=0;i<16;i+=1)begin
	addr = i;
	indata = $random;#20;
end
rw=0;
$display("\nRead Mode:\n");
for(i=0;i<16;i+=1)begin
	addr = i;#20;
end
$finish;
end
always @(posedge clk)begin
	if(rw)
$display("Address=%b | Input Data=%b | Time=%0t",addr,indata,$time);
else
$display("Address=%b | Output Data=%b | Time=%ot",addr,outdata,$time);
end
endmodule
