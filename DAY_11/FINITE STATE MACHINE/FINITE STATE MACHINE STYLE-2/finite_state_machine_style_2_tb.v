module finite_state_machine_style_2_tb;

    reg clk, rst, start;
    wire done;

 
    finite_state_machine_style_2 dut (
        .clk(clk),
        .rst(rst),
        .start(start),
        .done(done)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("fsm_style_2.vcd");
        $dumpvars(0, finite_state_machine_style_2_tb);

        clk = 0;
        rst = 1;
        start = 0;

        #20 rst = 0;
        #10 start = 1;
        #10 start = 0;

        #50 $finish;
    end

 initial begin
	    $monitor("time=%0t | clk=%b | rst=%b | start=%b | done=%b",$time,clk,rst,start,done);
    end
  endmodule

