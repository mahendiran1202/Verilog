module finite_state_machine_style_2 (
    input  wire clk,
    input  wire rst,
    input  wire start,
    output reg  done
);

    parameter IDLE = 2'b00,
              RUN  = 2'b01,
              DONE = 2'b10;

    reg [1:0] current_state, next_state;

    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end
   
    always @(*) begin
        next_state = current_state;
        done       = 1'b0;

        case (current_state)
            IDLE: if (start) next_state = RUN;
            RUN : next_state = DONE;
            DONE: begin
                done       = 1'b1;
                next_state = IDLE;
            end
            default: begin
                next_state = IDLE;
                done       = 1'b0;
            end
        endcase
    end

endmodule


