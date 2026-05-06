//==============================================================================
// bbox_overlay
//
// Combinational module: checks if the current pixel coordinate falls on the
// edge of any bounding box. If so, overrides RGB to draw a colored rectangle.
//
// Instantiate in system_top on the HDMI display path:
//
//   bbox_overlay u_overlay (
//       .pixel_x      (hdmi_x),
//       .pixel_y      (hdmi_y),
//       .bboxes       (dbg_bboxes),
//       .num_chars    (dbg_num_chars),
//       .pixel_rgb_in (camera_rgb),
//       .pixel_rgb_out(hdmi_rgb)
//   );
//==============================================================================
`timescale 1ns / 1ps

module bbox_overlay
    import ocr_pkg::*;
(
    input  logic [9:0]                          pixel_x,
    input  logic [8:0]                          pixel_y,

    input  logic [35:0]                         bboxes [0:MAX_CHARS-1],
    input  logic [$clog2(MAX_CHARS+1)-1:0]      num_chars,

    input  logic [23:0]                         pixel_rgb_in,   // {R,G,B} 8 bits each
    output logic [23:0]                         pixel_rgb_out
);

    localparam logic [23:0] BBOX_COLOR = 24'hFF_00_00;   // red
    localparam int BORDER_W = 1;                          // 1-pixel border

    // check all bounding boxes combinationally
    logic on_edge;

    always_comb begin
        on_edge = 1'b0;

        for (int i = 0; i < MAX_CHARS; i++) begin
            if (i < num_chars) begin
                // unpack bbox: {x_min[9:0], x_max[9:0], y_min[7:0], y_max[7:0]}
                automatic logic [9:0] x_min = bboxes[i][35:26];
                automatic logic [9:0] x_max = bboxes[i][25:16];
                automatic logic [7:0] y_min = bboxes[i][15:8];
                automatic logic [7:0] y_max = bboxes[i][7:0];

                // inside the bbox region?
                automatic logic in_x = (pixel_x >= x_min) && (pixel_x <= x_max);
                automatic logic in_y = (pixel_y >= y_min) && (pixel_y <= y_max);

                // on a vertical edge?
                automatic logic on_v = in_y && (
                    (pixel_x >= x_min && pixel_x < x_min + BORDER_W) ||
                    (pixel_x <= x_max && pixel_x > x_max - BORDER_W)
                );

                // on a horizontal edge?
                automatic logic on_h = in_x && (
                    (pixel_y >= y_min && pixel_y < y_min + BORDER_W) ||
                    (pixel_y <= y_max && pixel_y > y_max - BORDER_W)
                );

                if (on_v || on_h)
                    on_edge = 1'b1;
            end
        end

        pixel_rgb_out = on_edge ? BBOX_COLOR : pixel_rgb_in;
    end

endmodule
