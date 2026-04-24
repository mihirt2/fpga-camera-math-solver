`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2026 12:29:16 PM
// Design Name: 
// Module Name: ocr_pkg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


package ocr_pkg;
    parameter int IMG_W           = 320;
    parameter int IMG_H           = 240;
    parameter int MAX_CHARS       = 32;
    parameter int CHAR_W          = 16;
    parameter int CHAR_H          = 32;
    parameter int TEMPLATE_BITS   = CHAR_W * CHAR_H;   // 512
    parameter int NUM_TEMPLATES   = 16;                 // 0-9, +, -, *, /, (, )
    parameter int CHAR_CODE_WIDTH = $clog2(NUM_TEMPLATES);  // 4
endpackage
