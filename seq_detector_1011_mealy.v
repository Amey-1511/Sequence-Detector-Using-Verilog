module seq_detector_1011 (
input wire clk,
input wire rst,
input wire din,
output reg detect
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] state, next_state;

always @(posedge clk or posedge rst) begin
    if (rst)
        state <= S0;
    else
        state <= next_state;
end

always @(*) begin
    next_state = state;
    detect     = 1'b0;

    case(state)

        S0: begin
            if(din)
                next_state = S1;
            else
                next_state = S0;
        end

        S1: begin
            if(din)
                next_state = S1;
            else
                next_state = S2;
        end

        S2: begin
            if(din)
                next_state = S3;
            else
                next_state = S0;
        end

        S3: begin
            if(din) begin
                detect     = 1'b1;
                next_state = S1;
            end
            else
                next_state = S2;
        end

    endcase
end

endmodule
