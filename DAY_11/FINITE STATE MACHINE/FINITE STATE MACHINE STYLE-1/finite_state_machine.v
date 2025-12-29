module fsm_one (
    input  wire clk,
    input  wire rst,
    input  wire start,
    output wire done
);

    parameter S_IDLE = 2'b00;
    parameter S_RUN  = 2'b01;
    parameter S_DONE = 2'b10;

    logic [1:0] current_state, next_state;

    
    always @(posedge clk or posedge rst) begin
        if (rst)
            current_state <= S_IDLE;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            S_IDLE: begin
                if (start)
                    next_state = S_RUN;
                else
                    next_state = S_IDLE;
            end

            S_RUN: begin
                next_state = S_DONE;
            end

            S_DONE: begin
                next_state = S_IDLE;
            end

            default: next_state = S_IDLE;
        endcase
    end

   
    assign done = (current_state == S_DONE);

endmodule

