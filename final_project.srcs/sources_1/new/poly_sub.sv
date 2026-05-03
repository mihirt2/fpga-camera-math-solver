`timescale 1ns / 1ps

module poly_sub(
    input  poly_pkg::polynomial_t a,
    input  poly_pkg::polynomial_t b,
    output poly_pkg::polynomial_t diff
);
    integer i;

    always_comb begin
        for (i = 0; i <= poly_pkg::MAX_DEGREE; i = i + 1) begin
            diff[i] = a[i] - b[i];
        end
    end
endmodule
