module twos_compliment(
    input  A1, A2, A3, A4, A5, A6, A7, A8, Cin,
    output Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8
);
    
   wire [6:0] carry2;
   
   full_adder bit_0(
        .A(~A1),
        .B(0),
        .Cin(1),
        .Y(Y1),
        .Cout(carry2[0])
   );
   
   full_adder bit_1(
        .A(~A2),
        .B(0),
        .Cin(carry2[0]),
        .Y(Y2),
        .Cout(carry2[1])
   );
   
   full_adder bit_2(
        .A(~A3),
        .B(0),
        .Cin(carry2[1]),
        .Y(Y3),
        .Cout(carry2[2])
   );
   
   full_adder bit_3(
        .A(~A4),
        .B(0),
        .Cin(carry2[2]),
        .Y(Y4),
        .Cout(carry2[3])
   );
   
   full_adder bit_4(
        .A(~A5),
        .B(0),
        .Cin(carry2[3]),
        .Y(Y5),
        .Cout(carry2[4])
   );
   
   full_adder bit_5(
        .A(~A6),
        .B(0),
        .Cin(carry2[4]),
        .Y(Y6),
        .Cout(carry2[5])
   );
   
   full_adder bit_6(
        .A(~A7),
        .B(0),
        .Cin(carry2[5]),
        .Y(Y7),
        .Cout(carry2[6])
   );
   
   full_adder bit_7(
        .A(~A8),
        .B(0),
        .Cin(carry2[6]),
        .Y(Y8)
   );

endmodule