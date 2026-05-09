`timescale 1ns / 1ps

//==============================================================================
// ocr_parser_top
//==============================================================================

module ocr_parser_top
    import ocr_pkg::*;
#(
    parameter bit USE_EXTERNAL_CLASSIFIER = 1'b1,
    parameter bit USE_CNN_MATCH = 1'b0,

    parameter string CNN_CONV1_W_FILE    = "vivado_q8_8/conv1_weight.mem",
    parameter string CNN_CONV2_W_FILE    = "vivado_q8_8/conv2_weight.mem",
    parameter string CNN_CONV3_W_FILE    = "vivado_q8_8/conv3_weight.mem",
    parameter string CNN_FC1_W_FILE      = "vivado_q8_8/fc1_weight.mem",
    parameter string CNN_FC1_B_FILE      = "vivado_q8_8/fc1_bias.mem",
    parameter string CNN_FC2_W_FILE      = "vivado_q8_8/fc2_weight.mem",
    parameter string CNN_FC2_B_FILE      = "vivado_q8_8/fc2_bias.mem",
    parameter string CNN_CLASS_CODE_FILE = "vivado_q8_8/class_code.mem"
)
(
    input  logic                       clk,
    input  logic                       reset,
    input  logic                       trigger,

    // Camera frame buffer read port
    output logic [16:0]                cam_rd_addr,
    input  logic [7:0]                 cam_rd_data,
    output logic                       cam_rd_en,
    input  logic                       adaptive,
    input  logic [7:0]                 threshold,

    output logic                       external_dump_start,
    input  logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] external_char_codes_flat,
    input  logic                       external_char_codes_valid,

    output logic [7:0]                 result_chars [0:DISPLAY_CHARS-1],
    output logic [$clog2(DISPLAY_CHARS+1)-1:0] result_len,
    output logic                       result_valid,

    output logic [3:0]                 stage_dbg,
    output logic                       busy,

    // Debug bounding boxes for HDMI overlay
    output logic [35:0]                   dbg_bboxes [0:MAX_CHARS-1],
    output logic [$clog2(MAX_CHARS+1)-1:0]  dbg_num_chars,

    input  logic [$clog2(MAX_CHARS)-1:0] dbg_char_sel,
    output logic [TEMPLATE_BITS-1:0]   dbg_normalized_char,
    output logic [MAX_CHARS*TEMPLATE_BITS-1:0] dbg_norm_chars_flat,
    output logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] dbg_char_codes_flat,
    output logic [MAX_CHARS*10-1:0] dbg_match_dists_flat,
    output logic [CHAR_CODE_WIDTH-1:0] dbg_selected_char_code,
    output logic [9:0] dbg_selected_match_dist,
    output logic [MAX_CHARS*CHAR_CODE_WIDTH-1:0] dbg_solver_char_codes_flat,
    output logic [$clog2(MAX_CHARS+1)-1:0] dbg_solver_num_chars,
    output logic dbg_parse_done,
    output logic dbg_parse_wait_timeout,
    output logic dbg_solver_valid,
    output logic dbg_solver_valid_latched
);

    //==========================================================================
    // TOP-LEVEL FSM
    //==========================================================================
    typedef enum logic [3:0] {
        S_IDLE,
        S_BINARIZE,
        S_SEGMENT,
        S_COPY_BBOX,
        S_LOAD_BBOX,
        S_NORMALIZE,
        S_MATCH,
        S_NEXT_CHAR,
        S_WAIT_CLASSIFY,
        S_PARSE,
        S_DONE
    } stage_t;

    stage_t stage, stage_next;

    logic trigger_prev;
    wire trigger_edge = trigger & ~trigger_prev;

    always_ff @(posedge clk) begin
        if (reset)
            trigger_prev <= 1'b0;
        else
            trigger_prev <= trigger;
    end

    logic binarize_done;
    logic segment_done;
    logic normalize_done;
    logic match_done;
    logic parse_done;
    logic norm_is_minus;
    logic [TEMPLATE_BITS-1:0] match_input_latched;
    logic classify_dump_sent;
    logic [29:0] classify_wait_count;
    logic classify_wait_timeout;
    logic [25:0] parse_wait_count;
    logic parse_wait_timeout;

    logic [$clog2(MAX_CHARS)-1:0]   char_idx;
    logic [$clog2(MAX_CHARS+1)-1:0] num_chars;
    localparam logic [CHAR_CODE_WIDTH-1:0] OCR_MINUS_CODE  = 5'd13;
    localparam logic [CHAR_CODE_WIDTH-1:0] OCR_REJECT_CODE = {CHAR_CODE_WIDTH{1'b1}};
    localparam int MIN_BBOX_W = 4;
    localparam int MIN_BBOX_H = 8;
    localparam logic [9:0] CNN_REJECT_MARGIN = 10'd1;

    assign busy = (stage != S_IDLE) && (stage != S_DONE);
    assign stage_dbg = stage;
    assign classify_wait_timeout = (classify_wait_count == 30'd500_000_000);
    assign parse_wait_timeout = (parse_wait_count == 26'd50_000_000);

    //==========================================================================
    // BBOX COPY LOGIC
    //==========================================================================
    logic [$clog2(MAX_CHARS+1)-1:0] bbox_copy_idx;
    logic                         bbox_copy_done;
    logic                         bbox_copy_valid;
    logic [TEMPLATE_BITS-1:0]     norm_history [0:MAX_CHARS-1];

    assign bbox_copy_done = bbox_copy_valid && (bbox_copy_idx == num_chars);

    //==========================================================================
    // BINARY FRAME BUFFER
    //==========================================================================
    logic        bin_we;
    logic [13:0] bin_waddr;
    logic [31:0] bin_wdata;
    logic [13:0] bin_raddr;
    logic [31:0] bin_rdata;

    binary_frame_buffer u_bin_fb (
        .clk       (clk),
        .we        (bin_we),
        .waddr     (bin_waddr),
        .wdata     (bin_wdata),
        .raddr     (bin_raddr),
        .rdata     (bin_rdata)
    );

    //==========================================================================
    // STAGE 1: BINARIZE
    //==========================================================================
    logic [16:0] bin_cam_addr;
    logic        bin_cam_en;
    logic [13:0] bin_bin_waddr;
    logic [31:0] bin_bin_wdata;
    logic        bin_bin_we;

    binarize #(
        .IMG_W(IMG_W),
        .IMG_H(IMG_H),
        .CROP_LEFT(IMG_CROP_LEFT),
        .CROP_RIGHT(IMG_CROP_RIGHT)
    ) u_binarize (
        .clk       (clk),
        .reset     (reset),
        .start     (stage == S_BINARIZE),
        .threshold (threshold),
        .adaptive  (adaptive),
        .cam_addr  (bin_cam_addr),
        .cam_data  (cam_rd_data),
        .cam_en    (bin_cam_en),

        .bin_waddr (bin_bin_waddr),
        .bin_wdata (bin_bin_wdata),
        .bin_we    (bin_bin_we),

        .done      (binarize_done)
    );

    //==========================================================================
    // STAGE 2: SEGMENT
    //==========================================================================
    logic [13:0] seg_bin_raddr;

    logic [$clog2(MAX_CHARS)-1:0] bbox_waddr;
    logic                         bbox_we;
    logic [35:0]                  bbox_wdata;
    logic [$clog2(MAX_CHARS)-1:0] bbox_raddr;
    logic [35:0]                  bbox_rdata;

    segment u_segment (
        .clk        (clk),
        .reset      (reset),
        .start      (stage == S_SEGMENT),

        .bin_raddr  (seg_bin_raddr),
        .bin_rdata  (bin_rdata),

        .bbox_waddr (bbox_waddr),
        .bbox_wdata (bbox_wdata),
        .bbox_we    (bbox_we),

        .num_chars  (num_chars),
        .done       (segment_done)
    );

    bbox_storage u_bbox_storage (
        .clk   (clk),
        .waddr (bbox_waddr),
        .wdata (bbox_wdata),
        .we    (bbox_we),
        .raddr (bbox_raddr),
        .rdata (bbox_rdata)
    );

    //==========================================================================
    // CURRENT BBOX SIGNALS
    //==========================================================================
    wire [9:0] cur_bbox_x_min = bbox_rdata[35:26];
    wire [9:0] cur_bbox_x_max = bbox_rdata[25:16];
    wire [7:0] cur_bbox_y_min = bbox_rdata[15:8];
    wire [7:0] cur_bbox_y_max = bbox_rdata[7:0];

    wire [9:0] bbox_width     = (cur_bbox_x_max >= cur_bbox_x_min)
                              ? (cur_bbox_x_max - cur_bbox_x_min + 10'd1)
                              : 10'd0;
    wire [7:0] bbox_height    = (cur_bbox_y_max >= cur_bbox_y_min)
                              ? (cur_bbox_y_max - cur_bbox_y_min + 8'd1)
                              : 8'd0;
    wire       bbox_is_minus  = (bbox_width >= 10'd8)
                              && (bbox_height <= 8'd18)
                              && (bbox_width >= ({2'b0, bbox_height} * 10'd3));
    wire       bbox_too_small = !bbox_is_minus
                              && ((bbox_width < MIN_BBOX_W)
                                  || (bbox_height < MIN_BBOX_H));

    //==========================================================================
    // TOP-LEVEL FSM STATE REGISTER
    //==========================================================================
    always_ff @(posedge clk) begin
        if (reset) begin
            stage    <= S_IDLE;
            char_idx <= '0;
            classify_dump_sent <= 1'b0;
            classify_wait_count <= '0;
            parse_wait_count <= '0;
        end else begin
            stage <= stage_next;

            if (stage == S_NEXT_CHAR)
                char_idx <= char_idx + 1;
            else if (stage == S_IDLE || stage == S_SEGMENT)
                char_idx <= '0;

            if (stage != S_WAIT_CLASSIFY)
                classify_dump_sent <= 1'b0;
            else if (!classify_dump_sent)
                classify_dump_sent <= 1'b1;

            if (stage != S_WAIT_CLASSIFY)
                classify_wait_count <= '0;
            else if (!external_char_codes_valid && !classify_wait_timeout)
                classify_wait_count <= classify_wait_count + 1'b1;

            if (stage != S_PARSE)
                parse_wait_count <= '0;
            else if (!parse_done && !parse_wait_timeout)
                parse_wait_count <= parse_wait_count + 1'b1;
        end
    end

    assign external_dump_start = (stage == S_WAIT_CLASSIFY) && !classify_dump_sent;

    //==========================================================================
    // TOP-LEVEL FSM TRANSITIONS
    //==========================================================================
    always_comb begin
        stage_next = stage;

        case (stage)
            S_IDLE: begin
                if (trigger_edge)
                    stage_next = S_BINARIZE;
            end

            S_BINARIZE: begin
                if (binarize_done)
                    stage_next = S_SEGMENT;
            end

            S_SEGMENT: begin
                if (segment_done)
                    stage_next = (num_chars == 0) ? S_DONE : S_COPY_BBOX;
            end

            S_COPY_BBOX: begin
                if (bbox_copy_done)
                    stage_next = S_LOAD_BBOX;
            end

            S_LOAD_BBOX: begin
                stage_next = S_NORMALIZE;
            end

            S_NORMALIZE: begin
                if (bbox_is_minus || bbox_too_small)
                    stage_next = S_NEXT_CHAR;
                else if (normalize_done && norm_is_minus)
                    stage_next = S_NEXT_CHAR;
                else if (normalize_done)
                    stage_next = USE_EXTERNAL_CLASSIFIER ? S_NEXT_CHAR : S_MATCH;
            end

            S_MATCH: begin
                if (match_done)
                    stage_next = S_NEXT_CHAR;
            end

            S_NEXT_CHAR: begin
                if ({1'b0, char_idx} + 5'd1 >= num_chars)
                    stage_next = USE_EXTERNAL_CLASSIFIER ? S_WAIT_CLASSIFY : S_PARSE;
                else
                    stage_next = S_LOAD_BBOX;
            end

            S_WAIT_CLASSIFY: begin
                if (trigger_edge)
                    stage_next = S_BINARIZE;
                else if (external_char_codes_valid || classify_wait_timeout)
                    stage_next = S_PARSE;
            end

            S_PARSE: begin
                if (trigger_edge)
                    stage_next = S_BINARIZE;
                else if (parse_done || parse_wait_timeout)
                    stage_next = S_DONE;
            end

            S_DONE: begin
                if (trigger_edge)
                    stage_next = S_BINARIZE;
            end

            default: begin
                stage_next = S_IDLE;
            end
        endcase
    end

    //==========================================================================
    // BBOX COPY
    //==========================================================================
    always_ff @(posedge clk) begin
        if (reset) begin
            bbox_copy_idx   <= '0;
            bbox_copy_valid <= 1'b0;
            dbg_num_chars   <= '0;

            for (int i = 0; i < MAX_CHARS; i++)
                dbg_bboxes[i] <= '0;
        end else if (stage == S_SEGMENT && segment_done) begin
            bbox_copy_idx   <= '0;
            bbox_copy_valid <= 1'b0;
            dbg_num_chars   <= num_chars;
        end else if (stage == S_COPY_BBOX) begin
            if (bbox_copy_valid)
                dbg_bboxes[bbox_copy_idx - 1] <= bbox_rdata;

            if (!bbox_copy_done) begin
                bbox_copy_idx   <= bbox_copy_idx + 1;
                bbox_copy_valid <= 1'b1;
            end
        end
    end

    assign bbox_raddr = (stage == S_COPY_BBOX) ? bbox_copy_idx[$clog2(MAX_CHARS)-1:0] : char_idx;

    //==========================================================================
    // STAGE 3: NORMALIZE
    //==========================================================================
    logic [13:0]        norm_bin_raddr;
    logic [4:0]         norm_waddr;
    logic [CHAR_W-1:0]  norm_wdata;
    logic               norm_we;

    logic [TEMPLATE_BITS-1:0] normalized_char;
    logic norm_started;
    logic [9:0] norm_ink_count;
    logic [4:0] norm_x_min;
    logic [4:0] norm_x_max;
    logic [5:0] norm_y_min;
    logic [5:0] norm_y_max;
    logic [4:0] norm_bbox_w;
    logic [5:0] norm_bbox_h;
    wire  normalize_start = (stage == S_NORMALIZE)
                          && !norm_started
                          && !bbox_is_minus
                          && !bbox_too_small;

    always_comb begin
        norm_ink_count = '0;
        norm_x_min = CHAR_W - 1;
        norm_x_max = '0;
        norm_y_min = CHAR_H - 1;
        norm_y_max = '0;

        for (int y = 0; y < CHAR_H; y++) begin
            for (int x = 0; x < CHAR_W; x++) begin
                if (normalized_char[TEMPLATE_BITS - 1 - y * CHAR_W - x]) begin
                    norm_ink_count = norm_ink_count + 1'b1;
                    if (x[4:0] < norm_x_min)
                        norm_x_min = x[4:0];
                    if (x[4:0] > norm_x_max)
                        norm_x_max = x[4:0];
                    if (y[5:0] < norm_y_min)
                        norm_y_min = y[5:0];
                    if (y[5:0] > norm_y_max)
                        norm_y_max = y[5:0];
                end
            end
        end

        norm_bbox_w = (norm_ink_count != 0) ? (norm_x_max - norm_x_min + 1'b1) : '0;
        norm_bbox_h = (norm_ink_count != 0) ? (norm_y_max - norm_y_min + 1'b1) : '0;
        norm_is_minus = (norm_ink_count >= 10'd6)
                     && (norm_bbox_w >= 5'd8)
                     && (norm_bbox_h <= 6'd8)
                     && ({1'b0, norm_bbox_w} >= (norm_bbox_h << 1));
    end

    always_ff @(posedge clk) begin
        if (reset) begin
            normalized_char <= '0;
            norm_started    <= 1'b0;
        end else begin
            if (stage != S_NORMALIZE) begin
                norm_started <= 1'b0;
            end else if (!norm_started) begin
                normalized_char <= '0;
                norm_started    <= 1'b1;
            end

            if (norm_we)
                normalized_char[TEMPLATE_BITS - 1 - norm_waddr * CHAR_W -: CHAR_W] <= norm_wdata;
        end
    end

    normalize u_normalize (
        .clk        (clk),
        .reset      (reset),
        .start      (normalize_start),

        .bbox_x_min (cur_bbox_x_min),
        .bbox_x_max (cur_bbox_x_max),
        .bbox_y_min (cur_bbox_y_min),
        .bbox_y_max (cur_bbox_y_max),

        .bin_raddr  (norm_bin_raddr),
        .bin_rdata  (bin_rdata),

        .norm_waddr (norm_waddr),
        .norm_wdata (norm_wdata),
        .norm_we    (norm_we),

        .done       (normalize_done)
    );

    always_ff @(posedge clk) begin
        if (reset || stage == S_BINARIZE) begin
            for (int i = 0; i < MAX_CHARS; i++)
                norm_history[i] <= '0;
        end else if (stage == S_MATCH && match_done && char_idx < MAX_CHARS) begin
            norm_history[char_idx] <= match_input_latched;
        end else if (stage == S_NORMALIZE && normalize_done && char_idx < MAX_CHARS) begin
            norm_history[char_idx] <= normalized_char;
        end
    end

    assign dbg_normalized_char = norm_history[dbg_char_sel];

    always_comb begin
        for (int i = 0; i < MAX_CHARS; i++)
            dbg_norm_chars_flat[i*TEMPLATE_BITS +: TEMPLATE_BITS] = norm_history[i];
    end

    //==========================================================================
    // STAGE 4: TEMPLATE MATCH
    //==========================================================================
    logic [CHAR_CODE_WIDTH-1:0] matched_char;
    logic [9:0]                 match_distance;
    logic                       match_started;
    logic                       match_input_valid;
    wire                        match_start = (stage == S_MATCH) && match_input_valid && !match_started;

    always_ff @(posedge clk) begin
        if (reset) begin
            match_started      <= 1'b0;
            match_input_valid  <= 1'b0;
            match_input_latched <= '0;
        end else begin
            if (stage != S_MATCH) begin
                match_started     <= 1'b0;
                match_input_valid <= 1'b0;
            end else if (!match_input_valid) begin
                match_input_latched <= normalized_char;
                match_input_valid   <= 1'b1;
            end else if (!match_started) begin
                match_started <= 1'b1;
            end
        end
    end

    generate
        if (USE_EXTERNAL_CLASSIFIER) begin : g_external_match
            assign matched_char   = OCR_REJECT_CODE;
            assign match_distance = '0;
            assign match_done     = 1'b0;
        end else begin : g_iou_match
            if (USE_CNN_MATCH) begin : g_cnn_match
                tiny_math_cnn_match #(
                    .CONV1_W_FILE    (CNN_CONV1_W_FILE),
                    .CONV2_W_FILE    (CNN_CONV2_W_FILE),
                    .CONV3_W_FILE    (CNN_CONV3_W_FILE),
                    .FC1_W_FILE      (CNN_FC1_W_FILE),
                    .FC1_B_FILE      (CNN_FC1_B_FILE),
                    .FC2_W_FILE      (CNN_FC2_W_FILE),
                    .FC2_B_FILE      (CNN_FC2_B_FILE),
                    .CLASS_CODE_FILE (CNN_CLASS_CODE_FILE)
                ) u_match (
                    .clk         (clk),
                    .reset       (reset),
                    .start       (match_start),
                    .input_char  (match_input_latched),

                    .best_code   (matched_char),
                    .best_dist   (match_distance),
                    .done        (match_done)
                );
            end else begin : g_template_match
                template_match u_match (
                    .clk         (clk),
                    .reset       (reset),
                    .start       (match_start),
                    .input_char  (match_input_latched),

                    .best_code   (matched_char),
                    .best_dist   (match_distance),
                    .done        (match_done)
                );
            end
        end
    endgenerate

    logic [CHAR_CODE_WIDTH-1:0] char_codes [0:MAX_CHARS-1];
    logic [9:0] match_dist_history [0:MAX_CHARS-1];
    logic preclassified_slot [0:MAX_CHARS-1];
    logic [CHAR_CODE_WIDTH-1:0] solver_char_codes [0:MAX_CHARS-1];
    logic [$clog2(MAX_CHARS+1)-1:0] solver_num_chars;
    logic                            solver_valid;
    logic                            solver_is_const;
    logic [2:0]                      solver_num_solutions;
    logic signed [31:0]              solver_value;
    logic signed [31:0]              solver_solutions [0:4];
    logic signed [15:0]              solver_coefficients [0:5];
    logic                            solver_valid_latched;
    logic                            solver_is_const_latched;
    logic [2:0]                      solver_num_solutions_latched;
    logic signed [31:0]              solver_value_latched;
    logic signed [31:0]              solver_solutions_latched [0:4];
    logic signed [15:0]              solver_coefficients_latched [0:5];
    logic                            solver_outputs_latched;

    always_ff @(posedge clk) begin
        if (reset) begin
            for (int i = 0; i < MAX_CHARS; i++) begin
                char_codes[i] <= OCR_REJECT_CODE;
                match_dist_history[i] <= '0;
                preclassified_slot[i] <= 1'b0;
            end
        end else if (stage == S_BINARIZE) begin
            for (int i = 0; i < MAX_CHARS; i++) begin
                char_codes[i] <= OCR_REJECT_CODE;
                match_dist_history[i] <= '0;
                preclassified_slot[i] <= 1'b0;
            end
        end else if (stage == S_NORMALIZE && bbox_is_minus) begin
            char_codes[char_idx] <= OCR_MINUS_CODE;
            match_dist_history[char_idx] <= 10'h3FF;
            preclassified_slot[char_idx] <= 1'b1;
        end else if (stage == S_NORMALIZE && bbox_too_small) begin
            char_codes[char_idx] <= OCR_REJECT_CODE;
            match_dist_history[char_idx] <= 10'h3FC;
            preclassified_slot[char_idx] <= 1'b1;
        end else if (stage == S_NORMALIZE && normalize_done && norm_is_minus) begin
            char_codes[char_idx] <= OCR_MINUS_CODE;
            match_dist_history[char_idx] <= 10'h3FE;
            preclassified_slot[char_idx] <= 1'b1;
        end else if (stage == S_WAIT_CLASSIFY && external_char_codes_valid) begin
            for (int i = 0; i < MAX_CHARS; i++) begin
                if ((i < int'(num_chars)) && !preclassified_slot[i]) begin
                    char_codes[i] <= external_char_codes_flat[i*CHAR_CODE_WIDTH +: CHAR_CODE_WIDTH];
                    match_dist_history[i] <= 10'h3FD;
                end
            end
        end else if (stage == S_WAIT_CLASSIFY && classify_wait_timeout) begin
            for (int i = 0; i < MAX_CHARS; i++) begin
                if ((i < int'(num_chars)) && !preclassified_slot[i]) begin
                    char_codes[i] <= OCR_REJECT_CODE;
                    match_dist_history[i] <= 10'h3FB;
                end
            end
        end else if (stage == S_MATCH && match_done) begin
            match_dist_history[char_idx] <= match_distance;
            if (USE_CNN_MATCH && (match_distance < CNN_REJECT_MARGIN))
                char_codes[char_idx] <= OCR_REJECT_CODE;
            else
                char_codes[char_idx] <= matched_char;
        end
    end

    always_comb begin
        for (int i = 0; i < MAX_CHARS; i++) begin
            dbg_char_codes_flat[i*CHAR_CODE_WIDTH +: CHAR_CODE_WIDTH] = char_codes[i];
            dbg_match_dists_flat[i*10 +: 10] = match_dist_history[i];
            dbg_solver_char_codes_flat[i*CHAR_CODE_WIDTH +: CHAR_CODE_WIDTH] = solver_char_codes[i];
        end
    end

    assign dbg_selected_char_code  = char_codes[dbg_char_sel];
    assign dbg_selected_match_dist = match_dist_history[dbg_char_sel];
    assign dbg_solver_num_chars = solver_num_chars;
    assign dbg_parse_done = parse_done;
    assign dbg_parse_wait_timeout = parse_wait_timeout;
    assign dbg_solver_valid = solver_valid;
    assign dbg_solver_valid_latched = solver_valid_latched;

    //==========================================================================
    // STAGE 5: SOLVE
    //==========================================================================
    always_comb begin
        int compact_idx;

        compact_idx = 0;
        solver_num_chars = '0;
        for (int i = 0; i < MAX_CHARS; i++) begin
            solver_char_codes[i]  = OCR_REJECT_CODE;
        end

        for (int i = 0; i < MAX_CHARS; i++) begin
            if ((i < int'(num_chars)) && (char_codes[i] != OCR_REJECT_CODE)) begin
                case (char_codes[i])
                    5'd10:   solver_char_codes[compact_idx] = 5'd10; // '+'
                    5'd11:   solver_char_codes[compact_idx] = 5'd13; // 'x'
                    5'd12:   solver_char_codes[compact_idx] = 5'd12; // '*'
                    5'd13:   solver_char_codes[compact_idx] = 5'd11; // '-' class
                    5'd14:   solver_char_codes[compact_idx] = 5'd14; // '('
                    5'd15:   solver_char_codes[compact_idx] = 5'd15; // ')'
                    5'd16:   solver_char_codes[compact_idx] = 5'd16; // '^'
                    OCR_REJECT_CODE: solver_char_codes[compact_idx] = OCR_REJECT_CODE;
                    default: solver_char_codes[compact_idx] = char_codes[i];
                endcase

                compact_idx++;
            end
        end

        solver_num_chars = $clog2(MAX_CHARS + 1)'(compact_idx);
    end

    solver #(
        .MAX_CHARS       (MAX_CHARS),
        .CHAR_CODE_WIDTH (CHAR_CODE_WIDTH),
        .NUM_SAMPLES     (256),
        .MAX_SOLUTIONS   (5)
    ) u_solver (
        .clk           (clk),
        .reset         (reset),
        .start         (stage == S_PARSE),
        .char_codes    (solver_char_codes),
        .num_chars     (solver_num_chars),
        .done          (parse_done),
        .valid         (solver_valid),
        .is_const      (solver_is_const),
        .num_solutions (solver_num_solutions),
        .value         (solver_value),
        .solutions     (solver_solutions),
        .coefficients  (solver_coefficients)
    );

    always_ff @(posedge clk) begin
        if (reset || stage == S_BINARIZE) begin
            solver_valid_latched         <= 1'b0;
            solver_is_const_latched      <= 1'b0;
            solver_num_solutions_latched <= '0;
            solver_value_latched         <= '0;
            solver_outputs_latched       <= 1'b0;
            for (int i = 0; i < 5; i++)
                solver_solutions_latched[i] <= '0;
            for (int i = 0; i < 6; i++)
                solver_coefficients_latched[i] <= '0;
        end else if (stage != S_DONE) begin
            solver_outputs_latched <= 1'b0;
        end else if (!solver_outputs_latched) begin
            solver_valid_latched         <= solver_valid;
            solver_is_const_latched      <= solver_is_const;
            solver_num_solutions_latched <= solver_num_solutions;
            solver_value_latched         <= solver_value;
            solver_outputs_latched       <= 1'b1;
            for (int i = 0; i < 5; i++)
                solver_solutions_latched[i] <= solver_solutions[i];
            for (int i = 0; i < 6; i++)
                solver_coefficients_latched[i] <= solver_coefficients[i];
        end
    end

    //==========================================================================
    // STAGE 6: RESULT FORMATTING
    //==========================================================================
    logic format_started;
    wire  format_start = (stage == S_DONE) && solver_outputs_latched && !format_started;

    always_ff @(posedge clk) begin
        if (reset) begin
            format_started <= 1'b0;
        end else begin
            if (stage != S_DONE)
                format_started <= 1'b0;
            else if (format_start)
                format_started <= 1'b1;
        end
    end

    solver_to_ascii_full_decimal #(
        .MAX_CHARS       (MAX_CHARS),
        .CHAR_CODE_WIDTH (CHAR_CODE_WIDTH),
        .MAX_SOLUTIONS   (5),
        .DISPLAY_CHARS   (DISPLAY_CHARS)
    ) u_formatter (
        .clk          (clk),
        .reset        (reset),
        .start        (format_start),
        .solver_valid (solver_valid_latched),
        .is_const     (solver_is_const_latched),
        .num_solutions(solver_num_solutions_latched),
        .value        (solver_value_latched),
        .solution0    (solver_solutions_latched[0]),
        .solution1    (solver_solutions_latched[1]),
        .solution2    (solver_solutions_latched[2]),
        .solution3    (solver_solutions_latched[3]),
        .solution4    (solver_solutions_latched[4]),
        .result_chars (result_chars),
        .result_len   (result_len),
        .result_valid (result_valid)
    );

    //==========================================================================
    // BRAM ADDRESS ARBITRATION
    //==========================================================================
    assign cam_rd_addr = bin_cam_addr;
    assign cam_rd_en   = bin_cam_en;

    always_comb begin
        case (stage)
            S_SEGMENT:   bin_raddr = seg_bin_raddr;
            S_NORMALIZE: bin_raddr = norm_bin_raddr;
            default:     bin_raddr = '0;
        endcase
    end

    assign bin_waddr = bin_bin_waddr;
    assign bin_wdata = bin_bin_wdata;
    assign bin_we    = bin_bin_we;

endmodule
