`timescale 1ns / 1ps

package poly_pkg;

    parameter int COEFF_WIDTH = 16;
    parameter int MAX_DEGREE  = 5;

    typedef logic signed [COEFF_WIDTH-1:0] coeff_t;
    typedef coeff_t polynomial_t [0:MAX_DEGREE];

endpackage
