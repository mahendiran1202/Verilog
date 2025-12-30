module mealy_non_overlapping_tb;
reg clk;
reg rst;
reg data;
wire y;

mealy_non_overlapping dut (.clk(clk),.rst(rst),.data(data),.y(y));

always #5 clk = ~clk;

always @(posedge clk)
    $display("time=%0t | rst=%b | data=%b | present_state=%d | next_state=%d | y=%b",$time, rst, data, dut.present_state, dut.next_state, y);

initial begin
    clk = 0;
    rst = 1;
    data = 0;

    $dumpfile("mealy_non_overlapping.vcd");
    $dumpvars(0, mealy_non_overlapping_tb);

    #10 rst = 0;

    #10 data = 1;
    #10 data = 0;
    #10 data = 1;
    #10 data = 0;
    #10 data = 1;
    #10 data = 0;
    #10 data = 1;
    #10 data = 1;
    #10 data = 0;
    #10 data = 1;
    #10 data = 1;

    #10 $finish;
end
endmodule
