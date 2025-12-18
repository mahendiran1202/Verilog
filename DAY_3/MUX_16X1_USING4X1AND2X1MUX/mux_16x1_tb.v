module mux_16x1_tb();
reg [15:0]a;
reg [3:0]sel;
wire y;
mux_16x1 dut(.a(a),.sel(sel),.y(y));
initial begin
$monitor("input=%b | mode=%b | output=%b",a,sel,y);
$dumpfile("mux_16x1.vcd");
$dumpvars();
a=16'd42791;
sel=4'd0;#10;
sel=4'd1;#10;
sel=4'd2;#10;
sel=4'd3;#10;
sel=4'd4;#10;
sel=4'd5;#10;
sel=4'd6;#10;
sel=4'd7;#10;
sel=4'd8;#10;
sel=4'd9;#10;
sel=4'd10;#10;
sel=4'd11;#10;
sel=4'd12;#10;
sel=4'd13;#10;
sel=4'd14;#10;
sel=4'd15;#10;
$finish;
end 
endmodule

