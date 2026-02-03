module mux_2x1(input[1:0]a,input sel,output reg  y);
always @(*)begin
case (sel)
1'b0:y=a[0];
1'b1:y=a[1];
endcase
end
endmodule
module mux_4x1 (input [3:0]a,input [1:0]sel,output reg y);
always @(*)begin
case (sel)
2'b00:y=a[0];
2'b01:y=a[1];
2'b10:y=a[2];
2'b11:y=a[3];
endcase
end
endmodule
module mux_16x1(input[15:0]a,input[3:0]sel,output wire  y);
wire w1,w2,w3,w4,q1,q2;
mux_4x1 m1 (.a(a[3:0]),   .sel(sel[1:0]), .y(w1));
mux_4x1 m2 (.a(a[7:4]),   .sel(sel[1:0]), .y(w2));
mux_4x1 m3 (.a(a[11:8]),  .sel(sel[1:0]), .y(w3));
mux_4x1 m4 (.a(a[15:12]), .sel(sel[1:0]), .y(w4));
mux_2x1 m5 (.a({w2, w1}), .sel(sel[2]), .y(q1));
mux_2x1 m6 (.a({w4, w3}), .sel(sel[2]), .y(q2));
mux_2x1 m7 (.a({q2, q1}), .sel(sel[3]), .y(y));
endmodule
