module multiplexer(
    input [3:0] A, B, C, D, 
    input [1:0] Sel,
    input Enable,
    output [3:0] local_lib
);

    assign local_lib =  Enable ? (Sel == 2'b00 ? A : Sel == 2'b01 ? B : Sel == 2'b10 ? C : D) : 0;
    
endmodule
