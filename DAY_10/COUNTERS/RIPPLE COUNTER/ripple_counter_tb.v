module ripple_counter_tb;
reg clk;
reg rst;
wire [3:0] count;

/* DUT instantiation */
ripple_counter dut (
    .clk(clk),
    .rst(rst),
    .count(count)
);

/* Clock generation */
always #5 clk = ~clk;  // 10 ns period

initial begin
    $monitor("count=%b | time=%0t",count,$time);
    $dumpfile("ripple_counter.vcd");
    $dumpvars(0, ripple_counter_tb);

    clk = 0;
    rst = 1;#10;

    rst = 0;  // release reset

    #100 $finish; // run simulation
end

endmodule

