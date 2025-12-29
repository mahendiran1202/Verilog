module finite_state_machine_style_3_tb;

  reg clk;
  reg rst;
  reg start;
  wire done;

 
  finite_state_machine_style_3 dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .done(done)
  );

 
  initial clk = 0;
  always #5 clk = ~clk;

 
  initial begin
	  $dumpfile("finite_state_machine_style_3.vcd");
	  $dumpvars(0,finite_state_machine_style_3_tb);
    rst = 1;
    #10 rst = 0;
    #100 $finish;
  end
  initial begin
	  $monitor("time=%0t | clk=%b | rst=%b | start=%b | done=%b",$time,clk,rst,start,done);
  end
endmodule


