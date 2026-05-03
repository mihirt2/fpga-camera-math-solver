`timescale 1ns / 1ps

module poly_mul(
    input  poly_pkg::polynomial_t a,
    input  poly_pkg::polynomial_t b,
    output poly_pkg::polynomial_t prod
);
    integer i;
    integer j;

    always_comb begin
        for (i = 0; i <= poly_pkg::MAX_DEGREE; i = i + 1) begin
            prod[i] = '0;
        end

        for (i = 0; i <= poly_pkg::MAX_DEGREE; i = i + 1) begin
            for (j = 0; j <= poly_pkg::MAX_DEGREE; j = j + 1) begin
                if ((i + j) <= poly_pkg::MAX_DEGREE) begin
                    prod[i + j] = prod[i + j] + (a[i] * b[j]);
                end
            end
        end
    end
endmodule
