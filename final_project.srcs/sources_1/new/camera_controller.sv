`timescale 1ns / 1ps

module camera_controller (
    input  logic        clk_25,
    input  logic        clk_100,
    input  logic        reset,

    // Camera pins
    inout  logic        cam_sda,
    output logic        cam_scl,
    input  logic        cam_pclk,
    input  logic        cam_vsync,
    input  logic        cam_href,
    input  logic [7:0]  cam_d,
    output logic        cam_pwdn,
    output logic        cam_reset_n,

    // BRAM write port
    output logic [16:0] cam_wr_addr,
    output logic [7:0]  cam_wr_data,
    output logic        cam_we,

    // Status
    output logic        init_done,
    output logic        frame_done
);

    assign cam_pwdn    = 1'b0;   // power on
    assign cam_reset_n = 1'b1;   // not in reset

    cam_init u_init (
        .xclk       (clk_100),
        .reset      (reset),
        .start_fsm  (1'b1),
        .sda        (cam_sda),
        .scl        (cam_scl),
        .write_flag (init_done)
    );

    ov7670_capture u_capture (
        .pclk       (cam_pclk),
        .reset      (reset | ~init_done),
        .capture_en (init_done),
        .vsync      (cam_vsync),
        .href       (cam_href),
        .d          (cam_d),
        .bram_addr  (cam_wr_addr),
        .bram_wrdata(cam_wr_data),
        .bram_we    (cam_we),
        .frame_done (frame_done)
    );

endmodule
