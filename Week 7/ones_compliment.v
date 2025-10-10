module ones_compliment(
    input Cin ,A1, A2, A3, A4, B1, B2, B3, B4,
    output Cout, Y1, Y2, Y3, Y4
);

    // Ones Compliment
    wire [5:0] carry;
    wire around;
    wire [3:0] APlusB;
    
   full_adder inter_lsp (
        .A(A1),
        .B(B1),
        .Cin(0),
        .Y(APlusB[0]),
        .Cout(carry[0])
   );
   
   full_adder inter_adder_1 (
        .A(A2),
        .B(B2),
        .Cin(carry[0]),
        .Y(APlusB[1]),
        .Cout(carry[1])
   );
   
   full_adder inter_adder_2 (
        .A(A3),
        .B(B3),
        .Cin(carry[1]),
        .Y(APlusB[2]),
        .Cout(carry[2])
   );
   
   full_adder inter_msp (
        .A(A4),
        .B(B4),
        .Cin(carry[2]),
        .Y(APlusB[3]),
        .Cout(around)
   );
   
   full_adder full_lsb (
        .A(APlusB[0]),
        .B(0),
        .Y(Y1),
        .Cin(around),
        .Cout(carry[3])
   );
   
   full_adder adder_1 (
        .A(APlusB[1]),
        .B(0),
        .Y(Y2),
        .Cin(carry[3]),
        .Cout(carry[4])
   );
   full_adder adder_2 (
        .A(APlusB[2]),
        .B(0),
        .Y(Y3),
        .Cin(carry[4]),
        .Cout(carry[5])
   );
   full_adder full_msb (
        .A(APlusB[3]),
        .B(0),
        .Y(Y4),
        .Cin(carry[5])
   );
   
endmodule