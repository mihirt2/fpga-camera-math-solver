`timescale 1ns / 1ps

module uart_tx #(
    parameter int CLK_HZ = 100_000_000,
    parameter int BAUD   = 115200
)(
    input  logic       clk,
    input  logic       reset,
    input  logic       start,
    input  logic [7:0] data,

    output logic       tx,
    output logic       busy,
    output logic       done
);

    localparam int CLKS_PER_BIT = CLK_HZ / BAUD;
    localparam int CNT_W = $clog2(CLKS_PER_BIT);

    typedef enum logic [1:0] {
        U_IDLE,
        U_START,
        U_DATA,
        U_STOP
    } state_t;

    state_t state;
    logic [CNT_W-1:0] clk_count;
    logic [2:0]       bit_idx;
    logic [7:0]       shreg;

    always_ff @(posedge clk) begin
        if (reset) begin
            state     <= U_IDLE;
            clk_count <= '0;
            bit_idx   <= '0;
            shreg     <= '0;
            tx        <= 1'b1;
            busy      <= 1'b0;
            done      <= 1'b0;
        end else begin
            done <= 1'b0;

            unique case (state)
                U_IDLE: begin
                    tx        <= 1'b1;
                    busy      <= 1'b0;
                    clk_count <= '0;
                    bit_idx   <= '0;
                    if (start) begin
                        shreg <= data;
                        tx    <= 1'b0;
                        busy  <= 1'b1;
                        state <= U_START;
                    end
                end

                U_START: begin
                    busy <= 1'b1;
                    tx   <= 1'b0;
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= '0;
                        tx        <= shreg[0];
                        state     <= U_DATA;
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                U_DATA: begin
                    busy <= 1'b1;
                    tx   <= shreg[bit_idx];
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= '0;
                        if (bit_idx == 3'd7) begin
                            bit_idx <= '0;
                            tx      <= 1'b1;
                            state   <= U_STOP;
                        end else begin
                            bit_idx <= bit_idx + 1'b1;
                            tx      <= shreg[bit_idx + 1'b1];
                        end
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                U_STOP: begin
                    busy <= 1'b1;
                    tx   <= 1'b1;
                    if (clk_count == CLKS_PER_BIT - 1) begin
                        clk_count <= '0;
                        done      <= 1'b1;
                        busy      <= 1'b0;
                        state     <= U_IDLE;
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end

                default: begin
                    state <= U_IDLE;
                    tx    <= 1'b1;
                    busy  <= 1'b0;
                end
            endcase
        end
    end

endmodule
