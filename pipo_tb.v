module pipo_tb;
reg clk;
reg rst;
reg load;
reg [3:0] p_in;
wire [3:0] p_out;
pipo dut (.clk(clk),.rst(rst),.load(load),.p_in(p_in),.p_out(p_out));
always #5 clk = ~clk;
initial begin
    $monitor("load=%b | p_in=%b | p_out=%b | time=%0t",load, p_in, p_out,$time);
    $dumpfile("pipo.vcd");
    $dumpvars(0);
    clk  = 0;
    rst  = 1;
    load = 0;
    p_in = 4'b0000;
    rst = 0;#10;
    load = 1;#10;
    p_in = 4'b0101;
    load = 0;#10;
    p_in = 4'b1111;
    $finish;#10;
end
endmodule

