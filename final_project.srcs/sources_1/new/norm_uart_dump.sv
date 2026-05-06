`timescale 1ns / 1ps

module norm_uart_dump
    import ocr_pkg::*;
#(
    parameter int CLK_HZ = 100_000_000,
    parameter int BAUD   = 115200
)(
    input  logic                                   clk,
    input  logic                                   reset,
    input  logic                                   start,
    input  logic [$clog2(MAX_CHARS+1)-1:0]         num_chars,
    input  logic [MAX_CHARS*TEMPLATE_BITS-1:0]     norm_chars_flat,
    input  logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0]   char_codes_flat,
    input  logic [MAX_CHARS*10-1:0]                match_dists_flat,

    output logic                                   tx,
    output logic                                   busy
);

    typedef enum logic [2:0] {
        D_IDLE,
        D_BEGIN,
        D_CHAR_HDR,
        D_ROW,
        D_END
    } dump_state_t;

    dump_state_t state;

    logic [5:0]                         num_latched;
    logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] char_codes_latched;
    logic [MAX_CHARS*10-1:0]              match_dists_latched;
    logic [$clog2(MAX_CHARS)-1:0]       char_idx;
    logic [4:0]                         row_idx;
    logic [4:0]                         byte_pos;

    logic       tx_start;
    logic [7:0] tx_data;
    logic       tx_busy;
    logic       tx_done;
    logic       wait_busy_seen;

    uart_tx #(
        .CLK_HZ (CLK_HZ),
        .BAUD   (BAUD)
    ) u_uart_tx (
        .clk   (clk),
        .reset (reset),
        .start (tx_start),
        .data  (tx_data),
        .tx    (tx),
        .busy  (tx_busy),
        .done  (tx_done)
    );

    assign busy = (state != D_IDLE) || tx_busy || wait_busy_seen;

    function automatic logic [7:0] hex_digit(input logic [3:0] value);
        begin
            hex_digit = (value < 4'd10) ? (8'h30 + value) : (8'h41 + value - 4'd10);
        end
    endfunction

    function automatic logic [CHAR_CODE_WIDTH-1:0] selected_code;
        selected_code = char_codes_latched[int'(char_idx) * CHAR_CODE_WIDTH +: CHAR_CODE_WIDTH];
    endfunction

    function automatic logic [9:0] selected_margin;
        selected_margin = match_dists_latched[int'(char_idx) * 10 +: 10];
    endfunction

    function automatic logic [7:0] current_byte;
        int bit_idx;
        logic [CHAR_CODE_WIDTH-1:0] code;
        logic [9:0] margin;
        begin
            current_byte = 8'h0A;
            code = selected_code();
            margin = selected_margin();
            case (state)
                D_BEGIN: begin
                    case (byte_pos)
                        5'd0: current_byte = "B";
                        5'd1: current_byte = "E";
                        5'd2: current_byte = "G";
                        5'd3: current_byte = "I";
                        5'd4: current_byte = "N";
                        5'd5: current_byte = " ";
                        5'd6: current_byte = hex_digit(num_latched[5:4]);
                        5'd7: current_byte = hex_digit(num_latched[3:0]);
                        default: current_byte = 8'h0A;
                    endcase
                end

                D_CHAR_HDR: begin
                    case (byte_pos)
                        5'd0: current_byte = "C";
                        5'd1: current_byte = " ";
                        5'd2: current_byte = hex_digit({3'b000, char_idx[$clog2(MAX_CHARS)-1]});
                        5'd3: current_byte = hex_digit(char_idx[3:0]);
                        5'd4: current_byte = " ";
                        5'd5: current_byte = "K";
                        5'd6: current_byte = hex_digit({3'b000, code[4]});
                        5'd7: current_byte = hex_digit(code[3:0]);
                        5'd8: current_byte = " ";
                        5'd9: current_byte = "M";
                        5'd10: current_byte = hex_digit({2'b00, margin[9:8]});
                        5'd11: current_byte = hex_digit(margin[7:4]);
                        5'd12: current_byte = hex_digit(margin[3:0]);
                        default: current_byte = 8'h0A;
                    endcase
                end

                D_ROW: begin
                    if (byte_pos < CHAR_W) begin
                        bit_idx = int'(char_idx) * TEMPLATE_BITS
                                + (TEMPLATE_BITS - 1 - int'(row_idx) * CHAR_W - int'(byte_pos));
                        current_byte = norm_chars_flat[bit_idx] ? "1" : "0";
                    end else begin
                        current_byte = 8'h0A;
                    end
                end

                D_END: begin
                    case (byte_pos)
                        5'd0: current_byte = "E";
                        5'd1: current_byte = "N";
                        5'd2: current_byte = "D";
                        default: current_byte = 8'h0A;
                    endcase
                end

                default: current_byte = 8'h0A;
            endcase
        end
    endfunction

    task automatic advance_state;
        begin
            case (state)
                D_BEGIN: begin
                    if (byte_pos == 5'd8) begin
                        byte_pos <= '0;
                        char_idx <= '0;
                        row_idx  <= '0;
                        state    <= (num_latched == 0) ? D_END : D_CHAR_HDR;
                    end else begin
                        byte_pos <= byte_pos + 1'b1;
                    end
                end

                D_CHAR_HDR: begin
                    if (byte_pos == 5'd13) begin
                        byte_pos <= '0;
                        row_idx  <= '0;
                        state    <= D_ROW;
                    end else begin
                        byte_pos <= byte_pos + 1'b1;
                    end
                end

                D_ROW: begin
                    if (byte_pos == CHAR_W) begin
                        byte_pos <= '0;
                        if (row_idx == CHAR_H - 1) begin
                            row_idx <= '0;
                            if ({1'b0, char_idx} + 5'd1 >= num_latched[$clog2(MAX_CHARS+1)-1:0]) begin
                                char_idx <= '0;
                                state    <= D_END;
                            end else begin
                                char_idx <= char_idx + 1'b1;
                                state    <= D_CHAR_HDR;
                            end
                        end else begin
                            row_idx <= row_idx + 1'b1;
                        end
                    end else begin
                        byte_pos <= byte_pos + 1'b1;
                    end
                end

                D_END: begin
                    if (byte_pos == 5'd3) begin
                        byte_pos <= '0;
                        char_idx <= '0;
                        row_idx  <= '0;
                        state    <= D_IDLE;
                    end else begin
                        byte_pos <= byte_pos + 1'b1;
                    end
                end

                default: begin
                    byte_pos <= '0;
                    char_idx <= '0;
                    row_idx  <= '0;
                    state    <= D_IDLE;
                end
            endcase
        end
    endtask

    always_ff @(posedge clk) begin
        if (reset) begin
            state          <= D_IDLE;
            num_latched    <= '0;
            char_idx       <= '0;
            row_idx        <= '0;
            byte_pos       <= '0;
            tx_start       <= 1'b0;
            tx_data        <= 8'h00;
            wait_busy_seen <= 1'b0;
        end else begin
            tx_start <= 1'b0;

            if (wait_busy_seen) begin
                if (tx_busy)
                    wait_busy_seen <= 1'b0;
            end else if (state == D_IDLE) begin
                if (start) begin
                    num_latched   <= {1'b0, num_chars};
                    char_codes_latched <= char_codes_flat;
                    match_dists_latched <= match_dists_flat;
                    char_idx      <= '0;
                    row_idx       <= '0;
                    byte_pos      <= '0;
                    state         <= D_BEGIN;
                end
            end else if (!tx_busy) begin
                tx_data        <= current_byte();
                tx_start       <= 1'b1;
                wait_busy_seen <= 1'b1;
                advance_state();
            end
        end
    end

endmodule
