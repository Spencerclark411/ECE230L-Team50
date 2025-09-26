module circuit_b(
    input A, B, C, D,
    // Declare Y output
    output Y
);

    // Enter logic equation here
    assign Y = (~C & ~D) | (B & ~D) | (A & B);

endmodule
