module t_flipflop(
    input T, Store,
    output Q, NotQ
);
    
    jk_flipflop jk_inst(
        .J(T),
        .K(T),
        .Store(Store),
        .Q(Q),
        .NotQ(NotQ)
    );
    
endmodule
