module jk_flipflop(
    input J, K, Store, Reset,
    output Q, NotQ
);

    wire jk_logic = (~K & Q) | (J & NotQ);
    
    d_flipflop d_inst(
        .D(jk_logic),
        .Reset(Reset),
        .Q(Q),
        .NotQ(NotQ),
        .Store(Store)
    );


endmodule
