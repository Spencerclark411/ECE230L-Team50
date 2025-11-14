module comparator(
    input b0, b1, b2,
    output Reset
);

    assign Reset = (b0 &b1) ? 1 : 0;

endmodule