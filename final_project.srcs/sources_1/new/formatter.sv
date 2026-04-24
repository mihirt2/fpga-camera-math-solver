//==============================================================================
// text_overlay
//
// Renders result_chars[] as text on the HDMI display using the font ROM.
// Draws a background bar at the bottom of the screen with the expression
// and computed result.
//
// Pipeline: 1 cycle of latency (font ROM read).
//   Stage 0: compute char slot, set font ROM address
//   Stage 1: pick glyph bit, mux output pixel
//
// All inputs (pixel_x, pixel_y, pixel_rgb_in) must be synchronous.
// Output pixel_rgb_out is delayed by 1 clock from input - chain BEFORE
// bbox_overlay and delay that module's inputs to match, OR put this last
// and accept the 1-pixel shift (invisible on screen).
//
// Instantiate in system_top:
//
//   text_overlay u_text (
//       .clk          (pixel_clk),
//       .pixel_x      (hdmi_x),
//       .pixel_y      (hdmi_y),
//       .pixel_rgb_in (camera_rgb),     // or bbox_overlay output
//       .result_chars (result_chars),
//       .result_len   (result_len),
//       .pixel_rgb_out(hdmi_rgb)
//   );
//==============================================================================
`timescale 1ns / 1ps

module text_overlay
    import ocr_pkg::*;
(
    input  logic        clk,

    input  logic [9:0]  pixel_x,
    input  logic [8:0]  pixel_y,
    input  logic [23:0] pixel_rgb_in,

    input  logic [7:0]  result_chars [0:31],
    input  logic [5:0]  result_len,

    output logic [23:0] pixel_rgb_out
);

    // ?? display parameters ???????????????????????????????????????????????
    localparam int TEXT_X_START = 0;
    localparam int TEXT_Y_START = IMG_H - CHAR_H;        // 240 - 32 = 208
    localparam int TEXT_Y_END   = IMG_H;                 // 240
    localparam int MAX_DISPLAY  = IMG_W / CHAR_W;        // 320 / 16 = 20 chars

    localparam logic [23:0] TEXT_COLOR = 24'hFF_FF_FF;   // white text
    localparam logic [23:0] BG_COLOR   = 24'h00_00_00;   // black background

    // ?? font ROM instance ????????????????????????????????????????????????
    logic [6:0]  rom_char;
    logic [4:0]  rom_row;
    logic [15:0] rom_bits;

    font_rom_16x32_digits u_font_rom (
        .clk       (clk),
        .char_code (rom_char),
        .row       (rom_row),
        .bits      (rom_bits)
    );

    // ?? stage 0: address computation (combinational) ?????????????????????
    logic [9:0] text_x_offset;
    logic [4:0] char_slot;      // which character in result_chars (0..19)
    logic [3:0] char_col;       // pixel column within the glyph (0..15)
    logic [4:0] char_row;       // pixel row within the glyph (0..31)
    logic       in_text;        // current pixel falls in the text bar

    always_comb begin
        text_x_offset = pixel_x - TEXT_X_START;
        char_slot     = text_x_offset[8:4];   // divide by 16
        char_col      = text_x_offset[3:0];   // mod 16
        char_row      = pixel_y - TEXT_Y_START;

        in_text = (pixel_y >= TEXT_Y_START)
               && (pixel_y <  TEXT_Y_END)
               && (pixel_x >= TEXT_X_START)
               && (pixel_x <  TEXT_X_START + MAX_DISPLAY * CHAR_W)
               && (char_slot < result_len);

        // font ROM address: ASCII code of the character, row within glyph
        rom_char = result_chars[char_slot][6:0];
        rom_row  = char_row;
    end

    // ?? stage 1: pipeline registers ??????????????????????????????????????
    logic        in_text_d;
    logic        in_bar_d;      // in the background bar (even if no character)
    logic [3:0]  char_col_d;
    logic [23:0] pixel_rgb_d;

    always_ff @(posedge clk) begin
        in_text_d   <= in_text;
        char_col_d  <= char_col;
        pixel_rgb_d <= pixel_rgb_in;

        // background bar spans the full width, regardless of result_len
        in_bar_d <= (pixel_y >= TEXT_Y_START) && (pixel_y < TEXT_Y_END);
    end

    // ?? stage 1: pick glyph bit and compose output ???????????????????????
    // bit 15 = leftmost pixel (char_col 0), bit 0 = rightmost (char_col 15)
    logic pixel_on;
    assign pixel_on = rom_bits[CHAR_W - 1 - char_col_d];

    always_comb begin
        if (in_text_d && pixel_on)
            pixel_rgb_out = TEXT_COLOR;
        else if (in_bar_d)
            pixel_rgb_out = BG_COLOR;
        else
            pixel_rgb_out = pixel_rgb_d;
    end

endmodule