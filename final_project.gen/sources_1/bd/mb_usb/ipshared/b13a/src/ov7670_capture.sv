`timescale 1ns / 1ps
module ov7670_capture (
    input  logic        pclk,
    input  logic        reset,
    input  logic        capture_en,
    input  logic        vsync,
    input  logic        href,
    input  logic [7:0]  d,
    output logic [18:0] bram_addr,
    output logic [15:0] bram_wrdata,
    output logic        bram_we,
    output logic        frame_done
);
    enum logic [1:0] {
        s_idle,
        s_write,
        s_end_row,
        s_end_frame
    } curr_state, next_state;

    logic [9:0]  x_coord, x_coord_next;
    logic [9:0]  y_coord, y_coord_next;
    logic        byte_toggle, byte_toggle_next;
    logic [7:0]  first_byte;
    logic        we_next;
    logic        frame_done_next;

    always_comb begin
        next_state       = curr_state;
        x_coord_next     = x_coord;
        y_coord_next     = y_coord;
        byte_toggle_next = byte_toggle;
        we_next          = 1'b0;
        frame_done_next  = 1'b0;

        unique case (curr_state)
            s_idle: begin
                byte_toggle_next = 1'b0;
            end
            s_write: begin
                case (byte_toggle)
                    1'b0: begin
                        byte_toggle_next = 1'b1;
                    end
                    1'b1: begin
                        if (x_coord < 10'd640 && y_coord < 10'd480)
                            we_next = 1'b1;
                        x_coord_next     = x_coord + 10'd1;
                        byte_toggle_next = 1'b0;
                    end
                endcase
            end
            s_end_row: begin
                x_coord_next     = 10'd0;
                y_coord_next     = y_coord + 10'd1;
                byte_toggle_next = 1'b0;
            end
            s_end_frame: begin
                x_coord_next     = 10'd0;
                y_coord_next     = 10'd0;
                byte_toggle_next = 1'b0;
                frame_done_next  = 1'b1;
            end
        endcase

        case (curr_state)
            s_idle:
                if (vsync)
                    next_state = s_end_frame;
                else if (capture_en && href)
                    next_state = s_write;
                else
                    next_state = s_idle;
            s_write:
                if (vsync)
                    next_state = s_end_frame;
                else if (~href)
                    next_state = s_end_row;
                else
                    next_state = s_write;
            s_end_row:
                if (href)
                    next_state = s_write;
                else
                    next_state = s_idle;
            s_end_frame:
                if (vsync)
                    next_state = s_idle;
                else
                    next_state = s_write;
        endcase
    end

    always_ff @(posedge pclk or posedge reset) begin
        if (reset) begin
            curr_state  <= s_idle;
            x_coord     <= 10'd0;
            y_coord     <= 10'd0;
            byte_toggle <= 1'b0;
            first_byte  <= 8'd0;
            bram_we     <= 1'b0;
            bram_addr   <= 19'd0;
            bram_wrdata <= 16'd0;
            frame_done  <= 1'b0;
        end else begin
            curr_state  <= next_state;
            x_coord     <= x_coord_next;
            y_coord     <= y_coord_next;
            byte_toggle <= byte_toggle_next;
            bram_we     <= we_next;
            frame_done  <= frame_done_next;

            // Capture first byte
            if (curr_state == s_write && !byte_toggle)
                first_byte <= d;

            // Write pixel and increment flat address
            if (we_next) begin
                bram_wrdata <= {first_byte, d};
                bram_addr   <= {9'b0, y_coord} * 19'd640 + {9'b0, x_coord};
            end

        end
    end
endmodule