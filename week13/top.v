module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines
    onehot oh_inst(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .states(led[6:2])
    );
    
    binary b_inst(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .states(led[9:7])
    );

endmodule