module t_flipflop(
    input T, Store, Reset,
    output Q, NotQ
);
    
    jk_flipflop jk_inst(
        .J(T),
        .K(T),
        .Reset(Reset),
        .Store(Store),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
