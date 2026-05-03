`timescale 1ns / 1ps
//==============================================================================
// tiny_math_cnn_match
//
// Drop-in character classifier with the same interface as template_match.
// This module implements the 16x32 TinyMathCNN from tiny_math_cnn(3).ipynb:
//
//   input 1x32x16
//   conv1 1->8,   3x3, ReLU, maxpool 2x2
//   conv2 8->16,  3x3, ReLU, maxpool 2x2
//   conv3 16->24, 3x3, ReLU, maxpool 2x2
//   fc1 192->32, ReLU
//   fc2 32->NUM_CLASSES
//
// Weights are Q8.8 signed int16 values exported by the notebook into .mem files.
// Inference is intentionally sequential: one MAC per clock. That keeps resource
// use small and makes the NN easy to validate before optimizing.
//
// ocr_parser_top can select this matcher with USE_CNN_MATCH. template_match.sv
// is still kept as the fallback matcher.
//==============================================================================

module tiny_math_cnn_match
    import ocr_pkg::*;
#(
    parameter int NUM_CLASSES = 18,

    parameter string CONV1_W_FILE    = "vivado_q8_8/conv1_weight.mem",
    parameter string CONV2_W_FILE    = "vivado_q8_8/conv2_weight.mem",
    parameter string CONV3_W_FILE    = "vivado_q8_8/conv3_weight.mem",
    parameter string FC1_W_FILE      = "vivado_q8_8/fc1_weight.mem",
    parameter string FC1_B_FILE      = "vivado_q8_8/fc1_bias.mem",
    parameter string FC2_W_FILE      = "vivado_q8_8/fc2_weight.mem",
    parameter string FC2_B_FILE      = "vivado_q8_8/fc2_bias.mem",
    parameter string CLASS_CODE_FILE = "vivado_q8_8/class_code.mem",

    // Match torchvision Normalize(mean=0.5, std=0.5). If your training images
    // use black ink on white background, ink is -1.0 and background is +1.0.
    parameter logic signed [15:0] INPUT_INK_Q8_8 = -16'sd256,
    parameter logic signed [15:0] INPUT_BG_Q8_8  =  16'sd256
)(
    input  logic                       clk,
    input  logic                       reset,
    input  logic                       start,
    input  logic [TEMPLATE_BITS-1:0]   input_char,

    output logic [CHAR_CODE_WIDTH-1:0] best_code,
    output logic [9:0]                 best_dist,
    output logic                       done
);

    localparam int ACT_W = 16;
    localparam int ACC_W = 40;

    localparam int C1_OUT      = 8;
    localparam int C2_OUT      = 16;
    localparam int C3_OUT      = 24;
    localparam int FC1_OUT     = 32;
    localparam int C1_W_COUNT  = C1_OUT * 1 * 3 * 3;
    localparam int C2_W_COUNT  = C2_OUT * C1_OUT * 3 * 3;
    localparam int C3_W_COUNT  = C3_OUT * C2_OUT * 3 * 3;
    localparam int FC1_IN      = C3_OUT * 4 * 2;
    localparam int FC2_IN      = FC1_OUT;
    localparam int FC2_OUT     = NUM_CLASSES;
    localparam int FC1_W_COUNT = FC1_OUT * FC1_IN;
    localparam int FC2_W_COUNT = FC2_OUT * FC2_IN;

    typedef logic signed [ACT_W-1:0] act_t;
    typedef logic signed [ACC_W-1:0] acc_t;

    logic signed [15:0] conv1_w [0:C1_W_COUNT-1];
    logic signed [15:0] conv2_w [0:C2_W_COUNT-1];
    logic signed [15:0] conv3_w [0:C3_W_COUNT-1];
    logic signed [15:0] fc1_w   [0:FC1_W_COUNT-1];
    logic signed [15:0] fc1_b   [0:FC1_OUT-1];
    logic signed [15:0] fc2_w   [0:FC2_W_COUNT-1];
    logic signed [15:0] fc2_b   [0:FC2_OUT-1];
    logic [CHAR_CODE_WIDTH-1:0] class_code [0:NUM_CLASSES-1];

    act_t pool1 [0:C1_OUT-1][0:15][0:7];
    act_t pool2 [0:C2_OUT-1][0:7][0:3];
    act_t pool3 [0:C3_OUT-1][0:3][0:1];
    act_t fc1_act [0:FC1_OUT-1];
    act_t logits [0:FC2_OUT-1];

    initial begin
        for (int i = 0; i < C1_W_COUNT; i++)  conv1_w[i] = '0;
        for (int i = 0; i < C2_W_COUNT; i++)  conv2_w[i] = '0;
        for (int i = 0; i < C3_W_COUNT; i++)  conv3_w[i] = '0;
        for (int i = 0; i < FC1_W_COUNT; i++) fc1_w[i] = '0;
        for (int i = 0; i < FC1_OUT; i++)     fc1_b[i] = '0;
        for (int i = 0; i < FC2_W_COUNT; i++) fc2_w[i] = '0;
        for (int i = 0; i < FC2_OUT; i++)     fc2_b[i] = '0;
        for (int i = 0; i < NUM_CLASSES; i++) class_code[i] = '0;

        $readmemh(CONV1_W_FILE, conv1_w);
        $readmemh(CONV2_W_FILE, conv2_w);
        $readmemh(CONV3_W_FILE, conv3_w);
        $readmemh(FC1_W_FILE, fc1_w);
        $readmemh(FC1_B_FILE, fc1_b);
        $readmemh(FC2_W_FILE, fc2_w);
        $readmemh(FC2_B_FILE, fc2_b);
        $readmemh(CLASS_CODE_FILE, class_code);
    end

    function automatic act_t clamp_q8_8(input acc_t value);
        begin
            if (value > acc_t'(32767))
                clamp_q8_8 = 16'sd32767;
            else if (value < acc_t'(-32768))
                clamp_q8_8 = -16'sd32768;
            else
                clamp_q8_8 = value[15:0];
        end
    endfunction

    function automatic act_t relu_q8_8(input act_t value);
        begin
            relu_q8_8 = value[ACT_W-1] ? '0 : value;
        end
    endfunction

    function automatic act_t relu_shifted(input acc_t value);
        act_t clipped;
        begin
            clipped = clamp_q8_8(value >>> 8);
            relu_shifted = relu_q8_8(clipped);
        end
    endfunction

    function automatic act_t shifted_with_bias(input acc_t value, input act_t bias);
        acc_t shifted;
        begin
            shifted = (value >>> 8) + acc_t'(bias);
            shifted_with_bias = clamp_q8_8(shifted);
        end
    endfunction

    function automatic act_t input_pixel_q8_8(input int y, input int x);
        logic pixel;
        begin
            if (y < 0 || y >= CHAR_H || x < 0 || x >= CHAR_W) begin
                input_pixel_q8_8 = '0;
            end else begin
                pixel = input_char[TEMPLATE_BITS - 1 - y * CHAR_W - x];
                input_pixel_q8_8 = pixel ? INPUT_INK_Q8_8 : INPUT_BG_Q8_8;
            end
        end
    endfunction

    function automatic act_t pool1_pixel(input int ch, input int y, input int x);
        begin
            if (ch < 0 || ch >= C1_OUT || y < 0 || y >= 16 || x < 0 || x >= 8)
                pool1_pixel = '0;
            else
                pool1_pixel = pool1[ch][y][x];
        end
    endfunction

    function automatic act_t pool2_pixel(input int ch, input int y, input int x);
        begin
            if (ch < 0 || ch >= C2_OUT || y < 0 || y >= 8 || x < 0 || x >= 4)
                pool2_pixel = '0;
            else
                pool2_pixel = pool2[ch][y][x];
        end
    endfunction

    function automatic act_t max4(
        input act_t a,
        input act_t b,
        input act_t c,
        input act_t d
    );
        act_t ab;
        act_t cd;
        begin
            ab = (a > b) ? a : b;
            cd = (c > d) ? c : d;
            max4 = (ab > cd) ? ab : cd;
        end
    endfunction

    function automatic logic [9:0] margin_to_10b(input acc_t margin);
        acc_t margin_shifted;
        begin
            margin_shifted = margin >>> 8;
            if (margin <= 0)
                margin_to_10b = 10'd0;
            else if (margin_shifted > 1023)
                margin_to_10b = 10'h3FF;
            else
                margin_to_10b = margin_shifted[9:0];
        end
    endfunction

    typedef enum logic [4:0] {
        S_IDLE,
        S_CLEAR,
        S_CONV1,
        S_POOL1,
        S_CONV2,
        S_POOL2,
        S_CONV3,
        S_POOL3,
        S_FC1,
        S_FC2,
        S_ARGMAX,
        S_SCORE,
        S_DONE
    } state_t;

    state_t state;

    logic [4:0] clear_idx;
    logic [4:0] out_ch;
    logic [4:0] in_ch;
    logic [5:0] y_idx;
    logic [4:0] x_idx;
    logic [1:0] ky_idx;
    logic [1:0] kx_idx;
    logic [7:0] flat_idx;
    logic [4:0] class_idx;

    acc_t mac;
    act_t conv_value;
    logic [4:0] best_class;
    act_t best_logit;
    act_t second_logit;

    int src_y;
    int src_x;
    int weight_idx;
    act_t current_act;
    logic signed [15:0] current_weight;
    acc_t product;

    always_comb begin
        src_y = 0;
        src_x = 0;
        weight_idx = 0;
        current_act = '0;
        current_weight = '0;

        unique case (state)
            S_CONV1: begin
                src_y = int'(y_idx) + int'(ky_idx) - 1;
                src_x = int'(x_idx) + int'(kx_idx) - 1;
                weight_idx = (int'(out_ch) * 3 + int'(ky_idx)) * 3 + int'(kx_idx);
                current_act = input_pixel_q8_8(src_y, src_x);
                current_weight = conv1_w[weight_idx];
            end

            S_CONV2: begin
                src_y = int'(y_idx) + int'(ky_idx) - 1;
                src_x = int'(x_idx) + int'(kx_idx) - 1;
                weight_idx = (((int'(out_ch) * C1_OUT + int'(in_ch)) * 3)
                            + int'(ky_idx)) * 3 + int'(kx_idx);
                current_act = pool1_pixel(int'(in_ch), src_y, src_x);
                current_weight = conv2_w[weight_idx];
            end

            S_CONV3: begin
                src_y = int'(y_idx) + int'(ky_idx) - 1;
                src_x = int'(x_idx) + int'(kx_idx) - 1;
                weight_idx = (((int'(out_ch) * C2_OUT + int'(in_ch)) * 3)
                            + int'(ky_idx)) * 3 + int'(kx_idx);
                current_act = pool2_pixel(int'(in_ch), src_y, src_x);
                current_weight = conv3_w[weight_idx];
            end

            S_FC1: begin
                weight_idx = int'(out_ch) * FC1_IN + int'(flat_idx);
                current_weight = fc1_w[weight_idx];
                current_act = pool3[flat_idx[7:3]][flat_idx[2:1]][flat_idx[0]];
            end

            S_FC2: begin
                weight_idx = int'(class_idx) * FC2_IN + int'(flat_idx[4:0]);
                current_weight = fc2_w[weight_idx];
                current_act = fc1_act[flat_idx[4:0]];
            end

            default: begin
                current_act = '0;
                current_weight = '0;
            end
        endcase

        product = acc_t'(current_act) * acc_t'(current_weight);
    end

    wire last_kx = (kx_idx == 2);
    wire last_ky = (ky_idx == 2);

    assign best_code = class_code[best_class];
    assign done      = (state == S_DONE);

    always_ff @(posedge clk) begin
        if (reset) begin
            state       <= S_IDLE;
            best_dist   <= '0;
            clear_idx   <= '0;
            out_ch      <= '0;
            in_ch       <= '0;
            y_idx       <= '0;
            x_idx       <= '0;
            ky_idx      <= '0;
            kx_idx      <= '0;
            flat_idx    <= '0;
            class_idx   <= '0;
            mac         <= '0;
            conv_value  <= '0;
            best_class  <= '0;
            best_logit  <= -16'sd32768;
            second_logit <= -16'sd32768;
        end else begin
            case (state)
                S_IDLE: begin
                    if (start) begin
                        clear_idx    <= '0;
                        best_dist    <= '0;
                        best_class   <= '0;
                        best_logit   <= -16'sd32768;
                        second_logit <= -16'sd32768;
                        state        <= S_CLEAR;
                    end
                end

                S_CLEAR: begin
                    fc1_act[clear_idx] <= '0;
                    if (clear_idx < FC1_OUT - 1) begin
                        clear_idx <= clear_idx + 1'b1;
                    end else begin
                        out_ch   <= '0;
                        y_idx    <= '0;
                        x_idx    <= '0;
                        ky_idx   <= '0;
                        kx_idx   <= '0;
                        mac      <= '0;
                        state    <= S_CONV1;
                    end
                end

                S_CONV1: begin
                    mac <= mac + product;

                    if (last_kx && last_ky) begin
                        conv_value <= relu_shifted(mac + product);
                        kx_idx <= '0;
                        ky_idx <= '0;
                        state  <= S_POOL1;
                    end else if (last_kx) begin
                        kx_idx <= '0;
                        ky_idx <= ky_idx + 1'b1;
                    end else begin
                        kx_idx <= kx_idx + 1'b1;
                    end
                end

                S_POOL1: begin
                    if ((y_idx[0] == 1'b0) && (x_idx[0] == 1'b0))
                        pool1[out_ch][y_idx[4:1]][x_idx[3:1]] <= conv_value;
                    else if (conv_value > pool1[out_ch][y_idx[4:1]][x_idx[3:1]])
                        pool1[out_ch][y_idx[4:1]][x_idx[3:1]] <= conv_value;

                    mac <= '0;

                    if (x_idx < 15) begin
                        x_idx <= x_idx + 1'b1;
                        state <= S_CONV1;
                    end else if (y_idx < 31) begin
                        x_idx <= '0;
                        y_idx <= y_idx + 1'b1;
                        state <= S_CONV1;
                    end else if (out_ch < C1_OUT - 1) begin
                        out_ch <= out_ch + 1'b1;
                        y_idx  <= '0;
                        x_idx  <= '0;
                        state  <= S_CONV1;
                    end else begin
                        out_ch <= '0;
                        in_ch  <= '0;
                        y_idx  <= '0;
                        x_idx  <= '0;
                        state  <= S_CONV2;
                    end
                end

                S_CONV2: begin
                    mac <= mac + product;

                    if (last_kx && last_ky && in_ch == C1_OUT - 1) begin
                        conv_value <= relu_shifted(mac + product);
                        kx_idx <= '0;
                        ky_idx <= '0;
                        in_ch  <= '0;
                        state  <= S_POOL2;
                    end else if (last_kx && last_ky) begin
                        kx_idx <= '0;
                        ky_idx <= '0;
                        in_ch  <= in_ch + 1'b1;
                    end else if (last_kx) begin
                        kx_idx <= '0;
                        ky_idx <= ky_idx + 1'b1;
                    end else begin
                        kx_idx <= kx_idx + 1'b1;
                    end
                end

                S_POOL2: begin
                    if ((y_idx[0] == 1'b0) && (x_idx[0] == 1'b0))
                        pool2[out_ch][y_idx[3:1]][x_idx[2:1]] <= conv_value;
                    else if (conv_value > pool2[out_ch][y_idx[3:1]][x_idx[2:1]])
                        pool2[out_ch][y_idx[3:1]][x_idx[2:1]] <= conv_value;

                    mac <= '0;

                    if (x_idx < 7) begin
                        x_idx <= x_idx + 1'b1;
                        state <= S_CONV2;
                    end else if (y_idx < 15) begin
                        x_idx <= '0;
                        y_idx <= y_idx + 1'b1;
                        state <= S_CONV2;
                    end else if (out_ch < C2_OUT - 1) begin
                        out_ch <= out_ch + 1'b1;
                        y_idx  <= '0;
                        x_idx  <= '0;
                        state  <= S_CONV2;
                    end else begin
                        out_ch <= '0;
                        in_ch  <= '0;
                        y_idx  <= '0;
                        x_idx  <= '0;
                        state  <= S_CONV3;
                    end
                end

                S_CONV3: begin
                    mac <= mac + product;

                    if (last_kx && last_ky && in_ch == C2_OUT - 1) begin
                        conv_value <= relu_shifted(mac + product);
                        kx_idx <= '0;
                        ky_idx <= '0;
                        in_ch  <= '0;
                        state  <= S_POOL3;
                    end else if (last_kx && last_ky) begin
                        kx_idx <= '0;
                        ky_idx <= '0;
                        in_ch  <= in_ch + 1'b1;
                    end else if (last_kx) begin
                        kx_idx <= '0;
                        ky_idx <= ky_idx + 1'b1;
                    end else begin
                        kx_idx <= kx_idx + 1'b1;
                    end
                end

                S_POOL3: begin
                    if ((y_idx[0] == 1'b0) && (x_idx[0] == 1'b0))
                        pool3[out_ch][y_idx[2:1]][x_idx[1]] <= conv_value;
                    else if (conv_value > pool3[out_ch][y_idx[2:1]][x_idx[1]])
                        pool3[out_ch][y_idx[2:1]][x_idx[1]] <= conv_value;

                    mac <= '0;

                    if (x_idx < 3) begin
                        x_idx <= x_idx + 1'b1;
                        state <= S_CONV3;
                    end else if (y_idx < 7) begin
                        x_idx <= '0;
                        y_idx <= y_idx + 1'b1;
                        state <= S_CONV3;
                    end else if (out_ch < C3_OUT - 1) begin
                        out_ch <= out_ch + 1'b1;
                        y_idx  <= '0;
                        x_idx  <= '0;
                        state  <= S_CONV3;
                    end else begin
                        out_ch   <= '0;
                        flat_idx <= '0;
                        state    <= S_FC1;
                    end
                end

                S_FC1: begin
                    mac <= mac + product;

                    if (flat_idx == FC1_IN - 1) begin
                        fc1_act[out_ch] <= relu_q8_8(
                            shifted_with_bias(mac + product, fc1_b[out_ch])
                        );
                        mac <= '0;
                        flat_idx <= '0;

                        if (out_ch < FC1_OUT - 1) begin
                            out_ch <= out_ch + 1'b1;
                        end else begin
                            class_idx <= '0;
                            state     <= S_FC2;
                        end
                    end else begin
                        flat_idx <= flat_idx + 1'b1;
                    end
                end

                S_FC2: begin
                    mac <= mac + product;

                    if (flat_idx == FC2_IN - 1) begin
                        logits[class_idx] <= shifted_with_bias(
                            mac + product,
                            fc2_b[class_idx]
                        );
                        mac <= '0;
                        flat_idx <= '0;

                        if (class_idx < FC2_OUT - 1) begin
                            class_idx <= class_idx + 1'b1;
                        end else begin
                            class_idx <= '0;
                            best_class <= '0;
                            best_logit <= -16'sd32768;
                            second_logit <= -16'sd32768;
                            state <= S_ARGMAX;
                        end
                    end else begin
                        flat_idx <= flat_idx + 1'b1;
                    end
                end

                S_ARGMAX: begin
                    if (logits[class_idx] > best_logit) begin
                        second_logit <= best_logit;
                        best_logit   <= logits[class_idx];
                        best_class   <= class_idx;
                    end else if (logits[class_idx] > second_logit) begin
                        second_logit <= logits[class_idx];
                    end

                    if (class_idx < FC2_OUT - 1) begin
                        class_idx <= class_idx + 1'b1;
                    end else begin
                        state <= S_SCORE;
                    end
                end

                S_SCORE: begin
                    best_dist <= margin_to_10b(acc_t'(best_logit) - acc_t'(second_logit));
                    state <= S_DONE;
                end

                S_DONE: begin
                    state <= S_IDLE;
                end

                default: begin
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule
