module ram(
input clk,rw,
input [3:0] addr,
input [7:0] indata,
output reg [7:0] outdata);

reg [7:0] memory [15:0];
always @(posedge clk)begin
if(rw)begin
    memory [addr] <= indata;
end
end
always @(*)  begin
if(!rw) begin
   outdata = memory[addr];
end
end
endmodule
