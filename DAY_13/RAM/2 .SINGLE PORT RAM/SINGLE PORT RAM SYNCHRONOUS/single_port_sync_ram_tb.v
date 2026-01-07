module ram_parameterized_tb();
parameter length=2, locations=8;
integer i;
reg clk,rw;
reg [$clog2(locations)-1:0] addr;
reg [length-1:0] indata;
wire [length-1:0] outdata;
ram_parameterized #(length, locations) dut(clk,rw,addr,indata,outdata);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("memoryport.vcd");
	$dumpvars(0);
	rw=1;
	addr=0;indata=0;#20;
	$display("\nWrite Mode:\n");
	for(i=0;i<locations;i+=1) begin
		addr = i;
		indata = $random;#20;
	end
	rw=0;
	$display("\nRead Mode:\n");
	for(i=0;i<locations;i+=1) begin
		addr = i;#20;
	end
	$finish;
end
always @(posedge clk) begin
	if(rw)
		$display("Address=%b | Input Data=%b  | Time=%0t",addr,indata,$time);
	else
		$display("Address=%b | Output Data=%b | Time=%0t",addr,outdata,$time);
end
endmodule
