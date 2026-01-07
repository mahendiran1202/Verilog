module simple_dual_port_ram_tb();
parameter length=8, locations=32;
integer i;
reg clk,rw;
reg [$clog2(locations)-1:0] w_addr;
reg [$clog2(locations)-1:0] r_addr;
reg [length-1:0] indata;
wire [length-1:0] outdata;
simple_dual_port_ram #(length, locations) dut(clk,rw,w_addr,r_addr,indata,outdata);
initial begin
	clk=0;
	forever #10 clk=~clk;
end
initial begin
	$dumpfile("memorygtk.vcd");
	$dumpvars(0);
	rw=1;
	w_addr=0;r_addr=0;indata=0;#20;
	$display("\nWrite Mode:\n");
	for(i=0;i<locations;i+=1) begin
		w_addr = i;
		indata = $random;#20;
	end
	rw=0;
	$display("\nRead Mode:\n");
	for(i=0;i<locations;i+=1) begin
		r_addr = i;#20;
	end
	$finish;
end
always @(posedge clk) begin
	if(rw)
		$display("Input Address=%b | Input Data=%b  | Time=%0t",w_addr,indata,$time);
	else
		$display("Ouptut Address=%b | Output Data=%b | Time=%0t",r_addr,outdata,$time);
end
endmodule
