module demultiplexer(
    input [3:0]In,
    input [1:0] Sel, 
    input Enable,
    output [3:0]local_lib, fire_dept, school, shack
);

    assign local_lib = Enable ? (Sel == 2'b00 ? In : 0) : 0;
    assign fire_dept = Enable ? (Sel == 2'b01 ? In : 0) : 0;
    assign school = Enable ? (Sel == 2'b10 ? In : 0) : 0;
    assign shack = Enable ? (Sel == 2'b11 ? In : 0) : 0;

endmodule
