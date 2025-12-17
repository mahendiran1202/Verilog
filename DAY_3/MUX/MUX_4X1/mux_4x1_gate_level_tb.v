//TB

module four_onegatelevel_tb;
 reg [1:0] s;
 reg [3:0] i;
 wire y;
 four_onegatelevel dut (.s(s), .i(i), .y(y));
     initial begin
	     $monitor("time=%t s=%b i=%bgfhf y=%b",$time,s,i,y);
	     $dumpfile("mux.vcd");
            $dumpvars(0, four_onegatelevel_tb);
        s = 2'b00; i = 4'b0001; #10;  
        s = 2'b01; i = 4'b0010; #10;
        s = 2'b10; i = 4'b0100; #10; 
        s = 2'b11; i = 4'b1000; #10; 
      
      $finish;
    end
    endmodule
