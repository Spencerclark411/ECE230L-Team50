module modulo_counter(
    input Store, Reset,
    output [2:0] B,
    output Q
);

    wire [2:0] coutw;
    wire [3:0] dqw;
    wire [2:0] ayw; 
    wire compw;
    
    comparator comp_inst(
        .b0(dqw[0]),
        .b1(dqw[1]),
        .b2(dqw[2]),
        .Reset(compw)
    );
    
    //Final D-FlipFlop
    d_flipflop d_isnt4(
        .D(compw),
        .Reset(Reset),
        .Store(Store),
        .Q(dqw[3])
    );
    
    
    
    
    full_adder add_inst1(
        .Cin(0),
        .A(dqw[0]),
        .B(1),
        .Y(ayw[0]),
        .Cout(coutw[0])
    );
    
    
    
    
    
    d_flipflop d_inst1(
        .D(ayw[0]),
        .Reset(compw),
        .Store(Store),
        .Q(dqw[0])
    );
    
    
    
    
    full_adder add_inst2(
        .Cin(coutw[0]),
        .A(dqw[1]),
        .B(0),
        .Y(ayw[1]),
        .Cout(coutw[1])
    );
    
    d_flipflop d_inst2(
        .D(ayw[1]),
        .Reset(compw),
        .Store(Store),
        .Q(dqw[1])
    );
    
    
    
    
    full_adder add_inst3(
        .Cin(coutw[1]),
        .A(dqw[2]),
        .B(0),
        .Y(ayw[2]),
        .Cout(coutw[2])
    );
    
    d_flipflop d_inst3(
        .D(ayw[2]),
        .Reset(compw),
        .Store(Store),
        .Q(dqw[2])
    );
    
    assign B[0] = dqw[0];
    assign B[1] = dqw[1];
    assign B[2] = dqw[2];
    assign Q = dqw[3];

endmodule
