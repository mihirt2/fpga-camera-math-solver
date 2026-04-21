module top_level (
    input  logic clk_100MHz,
    input  logic reset_rtl_0,
    // UART
    input  logic uart_rtl_0_rxd,
    output logic uart_rtl_0_txd,
    // HDMI
    output logic HDMI_0_tmds_clk_n,
    output logic HDMI_0_tmds_clk_p,
    output logic [2:0] HDMI_0_tmds_data_n,
    output logic [2:0] HDMI_0_tmds_data_p,
    // Camera
    inout  logic cam_sda_0,
    output logic cam_scl_0,
    input  logic cam_pclk_0,
    input  logic cam_vsync_0,
    input  logic cam_href_0,
    input  logic [7:0] cam_d_0,
    output logic cam_pwdn_0,
    // XCLK
    output logic clk_out2_0
);
    logic resetn;
    assign resetn = ~reset_rtl_0;

    mb_usb u_bd (
        .clk_100MHz(clk_100MHz),
        .reset_rtl_0(resetn),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .HDMI_0_tmds_clk_n(HDMI_0_tmds_clk_n),
        .HDMI_0_tmds_clk_p(HDMI_0_tmds_clk_p),
        .HDMI_0_tmds_data_n(HDMI_0_tmds_data_n),
        .HDMI_0_tmds_data_p(HDMI_0_tmds_data_p),
        .cam_sda_0(cam_sda_0),
        .cam_scl_0(cam_scl_0),
        .cam_pclk_0(cam_pclk_0),
        .cam_vsync_0(cam_vsync_0),
        .cam_href_0(cam_href_0),
        .cam_d_0(cam_d_0),
        .cam_pwdn_0(cam_pwdn_0),
        .clk_out2_0(clk_out2_0)
    );
endmodule