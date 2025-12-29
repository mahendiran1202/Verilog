module finite_state_machine_style_3 (
    input  wire clk,
    input  wire rst,
    input  wire start,
    output reg  done
);
    parameter IDLE = 2'b00;
    parameter RUN  = 2'b01;
    parameter DONE = 2'b10;

    reg [1:0] current_state, next_state;

    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end
    always @(*) begin
        next_state = current_state;

        case (current_state)
            IDLE: begin
                if (start)
                    next_state = RUN;
            end

            RUN: begin
                next_state = DONE;
            end

            DONE: begin
                next_state = IDLE;
            end

            default: begin
                next_state = IDLE;
            end
        endcase
    end

    always @(*) begin
        done = 1'b0; 
        case (current_state)
            DONE: done = 1'b1;
            default: done = 1'b0;
        endcase
    end

endmodule

