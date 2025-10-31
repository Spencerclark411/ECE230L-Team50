module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire [7:0] byte0, byte1, byte2, byte3;
    wire store0, store1, store2, store3;
    wire [7:0] mem0, mem1, mem2, mem3;
    
    demultiplexer dmux_byte_inst(
        .data(data),
        .sel(addr),
        .A(byte0),
        .B(byte1),
        .C(byte2),
        .D(byte3)
    );
    
    demultiplexer_store dmux_store_inst(
        .data(store),
        .sel(addr),
        .A(store0),
        .B(store1),
        .C(store2),
        .D(store3)
    );
    
    byte_memory inst1(
        .data(byte0),
        .store(store0),
        .memory(mem0)
    );
    
    byte_memory inst2(
        .data(byte1),
        .store(store1),
        .memory(mem1)
    );
    
    byte_memory inst3(
        .data(byte2),
        .store(store2),
        .memory(mem2)
    );
    
    byte_memory inst4(
        .data(byte3),
        .store(store3),
        .memory(mem3)
    );
    
    multiplexer mux_inst(
        .A(mem0),
        .B(mem1),
        .C(mem2),
        .D(mem3),
        .Sel(addr),
        .Out(memory)
    );
    
endmodule
