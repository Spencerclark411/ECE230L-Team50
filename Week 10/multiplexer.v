module multiplexer(
    input [7:0] A, B, C, D, 
    input [1:0] Sel,
    input Enable,
    output [7:0] Out
);

    assign Out =  (Sel == 2'b00 ? A : Sel == 2'b01 ? B : Sel == 2'b10 ? C : D);
    
endmodule

