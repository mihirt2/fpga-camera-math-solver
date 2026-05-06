module external_class_uart_rx
    import ocr_pkg::*;
#(
    parameter int CLK_HZ = 100_000_000,
    parameter int BAUD   = 115200
)(
    input  logic                                   clk,
    input  logic                                   reset,
    input  logic                                   rx,
    input  logic [$clog2(MAX_CHARS+1)-1:0]         expected_chars,
    output logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0]   char_codes_flat,
    output logic                                   valid
);

    typedef enum logic [1:0] {
        C_WAIT_R,
        C_WAIT_HI,
        C_WAIT_LO
    } state_t;

    state_t state;
    logic [7:0] rx_data;
    logic       rx_valid;
    logic [3:0] hi_nibble;
    logic [$clog2(MAX_CHARS+1)-1:0] char_idx;
    logic [$clog2(MAX_CHARS+1)-1:0] expected_latched;
    logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] next_char_codes_flat;

    uart_rx #(
        .CLK_HZ (CLK_HZ),
        .BAUD   (BAUD)
    ) u_uart_rx (
        .clk   (clk),
        .reset (reset),
        .rx    (rx),
        .data  (rx_data),
        .valid (rx_valid)
    );

    function automatic logic is_hex(input logic [7:0] ch);
        is_hex = ((ch >= "0") && (ch <= "9")) ||
                 ((ch >= "A") && (ch <= "F")) ||
                 ((ch >= "a") && (ch <= "f"));
    endfunction

    function automatic logic [3:0] hex_value(input logic [7:0] ch);
        if ((ch >= "0") && (ch <= "9"))
            hex_value = ch[3:0];
        else if ((ch >= "A") && (ch <= "F"))
            hex_value = ch - "A" + 4'd10;
        else
            hex_value = ch - "a" + 4'd10;
    endfunction

    function automatic logic [CHAR_CODE_WIDTH-1:0] code_value(
        input logic [3:0] hi,
        input logic [3:0] lo
    );
        logic [7:0] code;
        begin
            code = {hi, lo};
            code_value = code[CHAR_CODE_WIDTH-1:0];
        end
    endfunction

    always_ff @(posedge clk) begin
        if (reset) begin
            state <= C_WAIT_R;
            char_idx <= '0;
            expected_latched <= '0;
            hi_nibble <= '0;
            char_codes_flat <= '0;
            next_char_codes_flat <= '0;
            valid <= 1'b0;
        end else begin
            valid <= 1'b0;

            if (rx_valid) begin
                case (state)
                    C_WAIT_R: begin
                        if ((rx_data == "R") || (rx_data == "r")) begin
                            char_idx <= '0;
                            expected_latched <= expected_chars;
                            next_char_codes_flat <= '0;
                            state <= C_WAIT_HI;
                        end
                    end

                    C_WAIT_HI: begin
                        if ((rx_data == 8'h0A) || (rx_data == 8'h0D)) begin
                            if (char_idx == expected_latched) begin
                                char_codes_flat <= next_char_codes_flat;
                                valid <= 1'b1;
                            end
                            state <= C_WAIT_R;
                        end else if (is_hex(rx_data)) begin
                            hi_nibble <= hex_value(rx_data);
                            state <= C_WAIT_LO;
                        end
                    end

                    C_WAIT_LO: begin
                        if ((rx_data == 8'h0A) || (rx_data == 8'h0D)) begin
                            state <= C_WAIT_R;
                        end else if (is_hex(rx_data)) begin
                            if (char_idx < MAX_CHARS) begin
                                next_char_codes_flat[int'(char_idx) * CHAR_CODE_WIDTH +: CHAR_CODE_WIDTH]
                                    <= code_value(hi_nibble, hex_value(rx_data));
                            end

                            if ({1'b0, char_idx} + 1'b1 > expected_latched) begin
                                state <= C_WAIT_R;
                            end else begin
                                char_idx <= char_idx + 1'b1;
                                state <= C_WAIT_HI;
                            end
                        end
                    end

                    default: begin
                        state <= C_WAIT_R;
                    end
                endcase
            end
        end
    end

endmodule
