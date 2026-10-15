module traffic_light (
    input wire clk,
    input wire rst,
    output reg red,
    output reg yellow,
    output reg green
);

    // State encoding
    parameter RED    = 2'b00;
    parameter GREEN  = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] state;
    reg [3:0] count;

    // State transition logic
    always @(posedge clk) begin
        if (rst) begin
            state <= RED;
            count <= 0;
        end
        else begin
            case (state)

                RED: begin
                    if (count == 9) begin
                        state <= GREEN;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

                GREEN: begin
                    if (count == 9) begin
                        state <= YELLOW;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

                YELLOW: begin
                    if (count == 2) begin
                        state <= RED;
                        count <= 0;
                    end
                    else
                        count <= count + 1;
                end

                default: begin
                    state <= RED;
                    count <= 0;
                end

            endcase
        end
    end

    // Output logic
    always @(*) begin
        red    = 0;
        yellow = 0;
        green  = 0;

        case (state)
            RED:    red    = 1;
            GREEN:  green  = 1;
            YELLOW: yellow = 1;
        endcase
    end

endmodule
