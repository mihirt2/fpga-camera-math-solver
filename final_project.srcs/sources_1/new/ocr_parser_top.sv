`timescale 1ns / 1ps

//==============================================================================
// ocr_parser_top
//==============================================================================

module ocr_parser_top
    import ocr_pkg::*;
(
    input  logic                       clk,
    input  logic                       reset,
    input  logic                       trigger,

    // Camera frame buffer read port
    output logic [16:0]                cam_rd_addr,
    input  logic [7:0]                 cam_rd_data,
    output logic                       cam_rd_en,
    input  logic        adaptive,

    input  logic [7:0]                 threshold,

    output logic [7:0]                 result_chars [0:31],
    output logic [5:0]                 result_len,
    output logic                       result_valid,

    output logic [3:0]                 stage_dbg,
    output logic                       busy,

    // debug bounding boxes for HDMI overlay
    output logic [35:0]                   dbg_bboxes [0:MAX_CHARS-1],
    output logic [$clog2(MAX_CHARS)-1:0]  dbg_num_chars,

    // debug binary image read port (for HDMI display)
    input  logic [13:0]                bin_dbg_raddr,
    output logic [31:0]                bin_dbg_rdata,
    output logic [TEMPLATE_BITS-1:0] dbg_normalized_char
);

    //==========================================================================
    // TOP-LEVEL FSM
    //==========================================================================
    typedef enum logic [3:0] {
        S_IDLE,
        S_BINARIZE,
        S_SEGMENT,
        S_COPY_BBOX,
        S_NORMALIZE,
        S_MATCH,
        S_NEXT_CHAR,
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

    logic [$clog2(MAX_CHARS)-1:0] char_idx;
    logic [$clog2(MAX_CHARS)-1:0] num_chars;

    assign busy = (stage != S_IDLE) && (stage != S_DONE);
    assign stage_dbg = stage;

    //==========================================================================
    // BBOX COPY LOGIC
    //==========================================================================
    logic [$clog2(MAX_CHARS)-1:0] bbox_copy_idx;
    logic                          bbox_copy_done;
    logic                          bbox_copy_valid;

    assign bbox_copy_done = bbox_copy_valid && (bbox_copy_idx == num_chars);

    //==========================================================================
    // TOP-LEVEL FSM TRANSITIONS
    //==========================================================================
    always_ff @(posedge clk) begin
        if (reset) begin
            stage    <= S_IDLE;
            char_idx <= '0;
        end else begin
            stage <= stage_next;
            if (stage == S_NEXT_CHAR)
                char_idx <= char_idx + 1;
            else if (stage == S_IDLE || stage == S_SEGMENT)
                char_idx <= '0;
        end
    end

    always_comb begin
        stage_next = stage;
        unique case (stage)
            S_IDLE:      if (trigger_edge)    stage_next = S_BINARIZE;
            S_BINARIZE:  if (binarize_done)   stage_next = S_SEGMENT;
            S_SEGMENT:   if (segment_done)    stage_next = (num_chars == 0) ? S_IDLE : S_COPY_BBOX;
            S_COPY_BBOX: if (bbox_copy_done)  stage_next = S_NORMALIZE;
            S_NORMALIZE: if (normalize_done)  stage_next = S_MATCH;
            S_MATCH:     if (match_done)      stage_next = S_NEXT_CHAR;
            S_NEXT_CHAR: stage_next = (char_idx + 1 >= num_chars) ? S_PARSE : S_NORMALIZE;
            S_PARSE:     if (parse_done)      stage_next = S_DONE;
            S_DONE:      stage_next = S_IDLE;
            default:     stage_next = S_IDLE;
        endcase
    end

    //==========================================================================
    // BINARY FRAME BUFFER (with debug read port)
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
        .rdata     (bin_rdata),
        .dbg_raddr (bin_dbg_raddr),
        .dbg_rdata (bin_dbg_rdata)
    );

    //==========================================================================
    // STAGE 1: BINARIZE
    //==========================================================================
    logic [16:0] bin_cam_addr;
    logic        bin_cam_en;
    logic [13:0] bin_bin_waddr;
    logic [31:0] bin_bin_wdata;
    logic        bin_bin_we;

    binarize u_binarize (
        .clk       (clk),
        .reset     (reset),
        .start     (stage == S_BINARIZE),
        .threshold (threshold),
        .adaptive (adaptive),
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
    logic                          bbox_we;
    logic [35:0]                   bbox_wdata;
    logic [$clog2(MAX_CHARS)-1:0] bbox_raddr;
    logic [35:0]                   bbox_rdata;

    segment u_segment (
        .clk       (clk),
        .reset     (reset),
        .start     (stage == S_SEGMENT),

        .bin_raddr (seg_bin_raddr),
        .bin_rdata (bin_rdata),

        .bbox_waddr(bbox_waddr),
        .bbox_wdata(bbox_wdata),
        .bbox_we   (bbox_we),

        .num_chars (num_chars),
        .done      (segment_done)
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
    // BBOX COPY (S_COPY_BBOX state)
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

    assign bbox_raddr = (stage == S_COPY_BBOX) ? bbox_copy_idx : char_idx;
    
    //==========================================================================
    // STAGE 3: NORMALIZE (CHAR_W x CHAR_H output)
    //==========================================================================
    logic [13:0] norm_bin_raddr;

    wire [9:0] cur_bbox_x_min = bbox_rdata[35:26];
    wire [9:0] cur_bbox_x_max = bbox_rdata[25:16];
    wire [7:0] cur_bbox_y_min = bbox_rdata[15:8];
    wire [7:0] cur_bbox_y_max = bbox_rdata[7:0];

    logic [4:0]         norm_waddr;
    logic [CHAR_W-1:0]  norm_wdata;
    logic               norm_we;

    logic [TEMPLATE_BITS-1:0] normalized_char;

    // NEW - holds last character for debug display
    logic norm_started;
    always_ff @(posedge clk) begin
        if (reset) begin
            normalized_char <= '0;
            norm_started <= 1'b0;
        end else begin
            if (stage != S_NORMALIZE)
                norm_started <= 1'b0;
            else if (!norm_started) begin
                normalized_char <= '0;
                norm_started <= 1'b1;
            end

            if (norm_we)
                normalized_char[TEMPLATE_BITS - 1 - norm_waddr * CHAR_W -: CHAR_W] <= norm_wdata;
        end
    end

    normalize u_normalize (
        .clk        (clk),
        .reset      (reset),
        .start      (stage == S_NORMALIZE),

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
    
    assign dbg_normalized_char = normalized_char;

    //==========================================================================
    // STAGE 4: TEMPLATE MATCH
    //==========================================================================
    logic [CHAR_CODE_WIDTH-1:0] matched_char;
    logic [9:0]                 match_distance;

    template_match u_match (
        .clk         (clk),
        .reset       (reset),
        .start       (stage == S_MATCH),
        .input_char  (normalized_char),

        .best_code   (matched_char),
        .best_dist   (match_distance),
        .done        (match_done)
    );

    logic [CHAR_CODE_WIDTH-1:0] char_codes [0:MAX_CHARS-1];

    always_ff @(posedge clk) begin
        if (reset) begin
            for (int i = 0; i < MAX_CHARS; i++)
                char_codes[i] <= '0;
        end else if (stage == S_MATCH && match_done) begin
            char_codes[char_idx] <= matched_char;
        end
    end

    //==========================================================================
    // STAGE 5: PARSE
    //==========================================================================
    logic signed [31:0] parse_value;

    expr_parser u_parser (
        .clk        (clk),
        .reset      (reset),
        .start      (stage == S_PARSE),
        .char_codes (char_codes),
        .num_chars  (num_chars),

        .value      (parse_value),
        .done       (parse_done)
    );

    //==========================================================================
    // STAGE 6: RESULT FORMATTING
    //==========================================================================
    int_to_ascii u_formatter (
        .clk           (clk),
        .reset         (reset),
        .start         (stage == S_DONE),
        .value         (parse_value),
        .char_codes    (char_codes),
        .num_chars     (num_chars),
        .result_chars  (result_chars),
        .result_len    (result_len),
        .result_valid  (result_valid)
    );

    //==========================================================================
    // BRAM ADDRESS ARBITRATION
    //==========================================================================
    assign cam_rd_addr = bin_cam_addr;
    assign cam_rd_en   = bin_cam_en;

    always_comb begin
        unique case (stage)
            S_SEGMENT:   bin_raddr = seg_bin_raddr;
            S_NORMALIZE: bin_raddr = norm_bin_raddr;
            default:     bin_raddr = '0;
        endcase
    end

    assign bin_waddr = bin_bin_waddr;
    assign bin_wdata = bin_bin_wdata;
    assign bin_we    = bin_bin_we;

endmodule