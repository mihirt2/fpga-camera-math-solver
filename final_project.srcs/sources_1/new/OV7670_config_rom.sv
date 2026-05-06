`timescale 1ns / 1ps

module OV7670_config_rom (
    input  wire         clk,
    input  wire  [7:0]  addr,
    output logic [15:0]  dout
);

// ---------------------------------------------------------------
//  OV7670  QVGA 320x240  YUV422  (Y-only capture)
//  ROM_LAST_ADDR in cam_init must equal the last valid address
//  here (currently 38).
// ---------------------------------------------------------------

always_ff @(posedge clk) begin
    case (addr)
        // ---------- Software reset + startup delay ----------
        0:  dout <= 16'h12_80;   // COM7   - reset all registers
        // 13 dummy writes ? 1 ms post-reset delay
        1:  dout <= 16'hFF_F0;
        2:  dout <= 16'hFF_F0;
        3:  dout <= 16'hFF_F0;
        4:  dout <= 16'hFF_F0;
        5:  dout <= 16'hFF_F0;
        6:  dout <= 16'hFF_F0;
        7:  dout <= 16'hFF_F0;
        8:  dout <= 16'hFF_F0;
        9:  dout <= 16'hFF_F0;
        10: dout <= 16'hFF_F0;
        11: dout <= 16'hFF_F0;
        12: dout <= 16'hFF_F0;
        13: dout <= 16'hFF_F0;

        // ---------- Output format ----------
        14: dout <= 16'h12_00;   // COM7   - YUV
        15: dout <= 16'h40_D0;   // COM15  - full 00-FF range for YUV
        16: dout <= 16'h3A_04;   // TSLB   - YUYV order, auto-reset window
        17: dout <= 16'h8C_00;   // RGB444 - disabled (YUV mode)

        // ---------- Clock ----------
        18: dout <= 16'h11_01;   // CLKRC  - prescaler /2  (PCLK = XCLK/2)
        19: dout <= 16'h6B_4A;   // DBLV   - PLL x4, bypass regulator

        // ---------- QVGA downsample ----------
        20: dout <= 16'h0C_04;   // COM3   - enable DCW/scaling
        21: dout <= 16'h3E_19;   // COM14  - PCLK divider = /2, manual scaling
        22: dout <= 16'h72_11;   // SCALING_DCWCTR - downsample by 2
        23: dout <= 16'h73_F1;   // SCALING_PCLK_DIV - DSP clock /2
        24: dout <= 16'hA2_02;   // SCALING_PCLK_DELAY - default

        // ---------- Window (QVGA 320x240) ----------
        25: dout <= 16'h17_16;   // HSTART
        26: dout <= 16'h18_04;   // HSTOP
        27: dout <= 16'h32_80;   // HREF   - no edge offset
        28: dout <= 16'h19_02;   // VSTART
        29: dout <= 16'h1A_7A;   // VSTOP
        30: dout <= 16'h03_0A;   // VREF

        // ---------- Auto-exposure / AGC / AWB ----------
        31: dout <= 16'h13_E7;   // COM8   - AGC, AWB, AEC on
        32: dout <= 16'h14_18;   // COM9   - 4x AGC ceiling
        33: dout <= 16'h24_95;   // AEW    - AGC/AEC upper limit
        34: dout <= 16'h25_33;   // AEB    - AGC/AEC lower limit
        35: dout <= 16'h26_E3;   // VPT    - AGC/AEC fast zone

        // ---------- Misc ----------
        36: dout <= 16'h04_00;   // COM1   - no CCIR656
        37: dout <= 16'h1E_07;   // MVFP   - mirror + flip (set 0x00 if unwanted)
        38: dout <= 16'h69_00;   // GFIX   - no green-channel fix

        default: dout <= 16'hFF_FF;
    endcase
end

endmodule
