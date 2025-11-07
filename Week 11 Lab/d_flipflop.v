module d_flipflop(
    input D, Store,
    output reg Q, NotQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge Store) begin
        if (Store)
            Q <= D;
            NotQ <= ~D;
    end
        


endmodule