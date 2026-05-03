`timescale 1ns / 1ps

module poly_add(
    input  poly_pkg::polynomial_t a,
    input  poly_pkg::polynomial_t b,
    output poly_pkg::polynomial_t sum
);
    integer i;

    always_comb begin
        for (i = 0; i <= poly_pkg::MAX_DEGREE; i = i + 1) begin
            sum[i] = a[i] + b[i];
        end
    end
endmodule
