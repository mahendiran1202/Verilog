module pipo (
    input  clk,
    input  rst,
    input  load,
    input  [3:0] p_in,
    output [3:0] p_out);
reg [3:0] shift_reg;
always @(posedge clk) begin
    if (rst)
       shift_reg<= 4'b0000;
    else if (load)
       shift_reg<= p_in; 
end
assign p_out = shift_reg[3];
endmodule

