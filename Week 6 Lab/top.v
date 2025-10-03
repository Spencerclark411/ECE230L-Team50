module top(
    input [7:0] sw,
    output [5:0] led 
);

    wire c1;
    

    light light_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .light(led[0])
    );
    
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    full_adder lsp_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(c1)
    );
    
    full_adder msp_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(c1),
        .Y(led[4]),
        .Cout(led[5])
    );
    

endmodule