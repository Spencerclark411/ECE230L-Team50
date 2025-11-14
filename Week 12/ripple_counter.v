module ripple_counter(
    input Store, Reset,     // store is or clock we save on the posedge of store( clock)
    output [2:0] Q
);

    wire w1, w2;

    t_flipflop t_inst1(
        .T(1),
        .Reset(Reset),
        .Store(Store),
        .Q(Q[0])
    );
    
    t_flipflop t_inst2(
        .T(1),
        .Reset(Reset),
        .Store(Q[0]),
        .Q(Q[1])
    );
    
    t_flipflop t_inst3(
        .T(1),
        .Reset(Reset),
        .Store(Q[1]),
        .Q(Q[2])
    );


endmodule
