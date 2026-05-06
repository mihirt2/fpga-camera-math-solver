module uart_rx #(
    parameter int CLK_HZ = 100_000_000,
    parameter int BAUD   = 115200
)(
    input  logic       clk,
    input  logic       reset,
    input  logic       rx,
    output logic [7:0] data,
    output logic       valid
);

    localparam int CLKS_PER_BIT = CLK_HZ / BAUD;
    localparam int CTR_W = $clog2(CLKS_PER_BIT + 1);

    typedef enum logic [1:0] {
        R_IDLE,
        R_START,
        R_DATA,
        R_STOP
    } state_t;

    state_t state;
    logic [CTR_W-1:0] clk_count;
    logic [2:0] bit_idx;
    logic [7:0] shift;
    logic rx_meta;
    logic rx_sync;

    always_ff @(posedge clk) begin
        if (reset) begin
            rx_meta   <= 1'b1;
            rx_sync   <= 1'b1;
            state     <= R_IDLE;
            clk_count <= '0;
            bit_idx   <= '0;
            shift     <= '0;
            data      <= '0;
            valid     <= 1'b0;
        end else begin
            rx_meta <= rx;
            rx_sync <= rx_meta;
            valid   <= 1'b0;

            case (state)
                R_IDLE: begin
                    clk_count <= '0;
                    bit_idx   <= '0;
                    if (!rx_sync)
                        state <= R_START;
                end

                R_START: begin
                    if (clk_count == (CLKS_PER_BIT / 2)) begin
                        if (!rx_sync) begin
                            clk_count <= '0;
                            state <= R_DATA;
                        end else begin
                            state <= R_IDLE;
                        end
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                R_DATA: begin
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= '0;
                        shift[bit_idx] <= rx_sync;
                        if (bit_idx == 3'd7) begin
                            bit_idx <= '0;
                            state <= R_STOP;
                        end else begin
                            bit_idx <= bit_idx + 1'b1;
                        end
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                R_STOP: begin
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        data <= shift;
                        valid <= 1'b1;
                        clk_count <= '0;
                        state <= R_IDLE;
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                default: begin
                    state <= R_IDLE;
                end
            endcase
        end
    end

endmodule
