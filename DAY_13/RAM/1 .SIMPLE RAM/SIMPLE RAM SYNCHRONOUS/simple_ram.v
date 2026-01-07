module simple_ram(
    input clk,
    input rw,
    input [3:0] addr,
    input [7:0] indata,
    output reg [7:0] outdata
);

reg [7:0] memory [15:0];

always @(posedge clk) begin
    if (rw)
        memory[addr] <= indata;
end

always @(*) begin
    if (!rw)
        outdata = memory[addr];
end

endmodule


