module moore_101(
input clk,
input rst,
input data,
output reg y);

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

reg [1:0] present_state,next_state;

always @(posedge clk or posedge rst) begin
if(rst)
      present_state<=s0;
else
      present_state<=next_state;
end
always @(*)begin
 next_state=present_state;
    y=1'b0;
case (present_state)
   s0 : if(data)
           next_state=s1;
   s1 : if (data)
           next_state=s1;
        else 
           next_state=s2;
   s2 : if (data)
            next_state=s3;
         else 
            next_state=s0;
      
    s3 :begin y=1'b1;
         if (data)
             next_state=s1;
          else
             next_state=s2;
end 
     default: next_state=s0;
endcase
end
endmodule
