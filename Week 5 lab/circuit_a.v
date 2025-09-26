module circuit_a(
    input A, B, C, D,
    // Declare Y output
    output Y
);

    // Enter logic equation here
    assign Y = (D & ~A);

endmodule
