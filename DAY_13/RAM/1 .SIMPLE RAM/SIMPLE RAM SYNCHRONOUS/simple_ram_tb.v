module simple_ram_tb;
reg clk,rw;
reg [3:0] addr;
reg [7:0] indata;
wire [7:0] outdata;

simple_ram dut(.clk(clk),.rw(rw),.addr(addr),.indata(indata),.outdata(outdata));
initial clk=0;
always #5 clk=~clk;
always @(posedge clk) begin
if(rw)
 $display("clk=%0d | re=%0d | addr=%0d | indata=%0d  | time=%0t",clk,rw,addr,indata,$time);
else
 $display("clk=%0d | re=%0d | addr=%0d | outdata=%0d | time=%0t",clk,rw,addr,outdata,$time);
end

initial begin
$dumpfile("simple_ram.vcd");
$dumpvars(0);

rw=1;
addr=0;
indata=0;#20;

$display ("\nWrite mode:\n");
rw=1;
for(integer i=0; i<16; i+=1)begin
addr=i;
indata=$random;#20;
end

$display("\nRead mode:\n");
rw=0;
for(integer i=0; i<16; i+=1)begin
addr=i;#20;
end
$finish;#10;
end 
endmodule

