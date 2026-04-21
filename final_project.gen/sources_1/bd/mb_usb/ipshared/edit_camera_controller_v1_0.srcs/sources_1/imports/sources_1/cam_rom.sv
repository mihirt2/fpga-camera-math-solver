module OV7670_config_rom(
    input  wire        clk,
    input  wire [7:0]  addr,
    output logic [15:0] dout
);
always @(posedge clk) begin
    case (addr)
        0:  dout <= 16'h12_80;   // COM7   Reset
        1:  dout <= 16'hFF_F0;   // Delay
        2:  dout <= 16'h12_00;   // COM7   YUV
        3:  dout <= 16'h11_00;   // CLKRC  No prescaling
        4:  dout <= 16'h0C_00;   // COM3   No scaling
        5:  dout <= 16'h3E_00;   // COM14  Normal PCLK
        6:  dout <= 16'h04_00;   // COM1   Disable CCIR656
        7:  dout <= 16'h40_00;   // COM15  Full output range
        8:  dout <= 16'h3A_04;   // TSLB   YUYV byte order
        9:  dout <= 16'h13_E5;   // COM8   Enable AGC, AEC, AWB
        10: dout <= 16'h14_18;   // COM9   AGC gain x4
        11: dout <= 16'hA5_05;   // BD50MAX
        12: dout <= 16'hAB_07;   // BD60MAX
        13: dout <= 16'h24_95;   // AGC upper limit
        14: dout <= 16'h25_33;   // AGC lower limit
        15: dout <= 16'h26_E3;   // AGC/AEC fast mode region
        16: dout <= 16'h17_13;   // HSTART
        17: dout <= 16'h18_01;   // HSTOP
        18: dout <= 16'h32_6B;   // HREF
        19: dout <= 16'h19_02;   // VSTART
        20: dout <= 16'h1A_7A;   // VSTOP
        21: dout <= 16'h03_0A;   // VREF
        22: dout <= 16'h1E_00;   // MVFP
        23: dout <= 16'h69_00;   // GFIX
        24: dout <= 16'h15_00;   // COM10  VSYNC active high
        default: dout <= 16'hFF_FF;
    endcase
end
endmodule