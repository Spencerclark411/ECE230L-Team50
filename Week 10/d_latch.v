module d_latch(
    input D, E,
    output reg Q, NotQ
);
    
    always @(D, E, Q, NotQ) begin
        if (E)
            Q <= D;
            NotQ <= ~Q;
    end

endmodule
