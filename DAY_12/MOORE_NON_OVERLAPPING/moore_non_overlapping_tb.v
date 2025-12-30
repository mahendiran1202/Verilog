module moore_non_overlapping_101_tb;
reg data;
reg clk;
reg rst;
wire y;

moore_non_overlapping_101 dut (.data(data),.clk(clk),.rst(rst),.y(y));

always #5 clk = ~clk;

always @(posedge clk)
  $display("data=%b | clk=%b | rst=%b | present_state=%d | next_state=%d | y=%b | time=%0t",data, clk, rst,dut.present_state,dut.next_state, y, $time);
initial begin
  clk = 0;
  rst = 1;
  data = 0;

  $dumpfile("moore_non_overlapping_101.vcd");
  $dumpvars(0, moore_non_overlapping_101_tb);
  #10 rst = 0;

  #10 data = 1;
  #10 data = 0;
  #10 data = 1;
  #10 data = 0;
  #10 data = 1;
  #10 data = 1;
  #10 data = 0;
  #10 data = 1;
  #10 data = 0;

  #10 $finish;
end

endmodule
