module top(
    input btnC, btnU,
    output [6:0] led
);

    ripple_counter ripple(
        .Reset(btnU),  // you need to add the reset signal somewher
        .Store(btnC),
        .Q(led[2:0])
    );
    
    modulo_counter mc(
        .Store(btnC),
        .Reset(btnU),
        .B(led[5:3]),
        .Q(led[6])
    );
   
endmodule
