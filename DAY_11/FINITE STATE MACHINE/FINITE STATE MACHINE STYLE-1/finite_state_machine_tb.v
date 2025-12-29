module fsm_one_tb;

    reg clk;
    reg rst;
    reg start;
    wire done_1;

    fsm_one dut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .done(done_1)
    );

    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t | rst=%b | start=%b | done=%b",
                  $time, rst, start, done_1);
        $dumpfile("fsm_one.vcd");
        $dumpvars(0, fsm_two_tb);

        clk = 0;
        rst = 1;
        start = 0;

        #10 rst = 0;
        #10 start = 1;
        #10 start = 0;

        #50 $finish;
    end

endmodule

