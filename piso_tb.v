module piso_tb;
reg clk;
reg rst;
reg load;
reg [3:0] p_in;
wire s_out;
piso dut (
    .clk(clk),
    .rst(rst),
    .load(load),
    .p_in(p_in),
    .s_out(s_out));
always #5 clk = ~clk;
initial begin
    $monitor("load=%b | p_in=%b | s_out=%b | time=%0t",load, p_in, s_out,$time);
    $dumpfile("piso.vcd");
    $dumpvars(0);
    clk  = 0;
    rst  = 1;
    load = 0;
    p_in = 4'b0000;
    rst = 0;#10;
    load = 1;#10;
        p_in = 4'b1011;
    load = 0;#10;
$finish;#10;
end
endmodule

