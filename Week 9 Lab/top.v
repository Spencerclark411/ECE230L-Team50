module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);
    
    wire [3:0] w1;

    multiplexer mux(
        .Sel({btnU, btnL}),
        .Enable(btnC),
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .local_lib(w1)
    );
    
    demultiplexer demux(
        .Sel({btnR, btnD}),
        .Enable(btnC),
        .In(w1),
        .local_lib(led[3:0]),
        .fire_dept(led[7:4]),
        .school(led[11:8]),
        .shack(led[15:12])
    );



endmodule
