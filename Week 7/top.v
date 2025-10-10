module top(
    input [9:0] sw,
    output [13:0] led
);

    half_sub half_sub_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
    );
    
    //1's compliment
    ones_compliment ones_inst(
        .A1(sw[2]),
        .A2(sw[3]),
        .A3(sw[4]),
        .A4(sw[5]),
        .B1(sw[6]),
        .B2(sw[7]),
        .B3(sw[8]),
        .B4(sw[9]),
        .Y1(led[2]),
        .Y2(led[3]),
        .Y3(led[4]),
        .Y4(led[5])
    );
   
   //2's Compliment
    twos_compliment twos_inst(
        .A1(sw[2]),
        .A2(sw[3]),
        .A3(sw[4]),
        .A4(sw[5]),
        .A5(sw[6]),
        .A6(sw[7]),
        .A7(sw[8]),
        .A8(sw[9]),
        .Y1(led[6]),
        .Y2(led[7]),
        .Y3(led[8]),
        .Y4(led[9]),
        .Y5(led[10]),
        .Y6(led[11]),
        .Y7(led[12]),
        .Y8(led[13])
    );

endmodule