module d_flipflop(
    input D, Store, Reset,
    output reg Q, 
    output NotQ
);

initial begin
    Q <= 0;
end


always @(posedge Store) begin
        if (Reset) begin 
            Q <= 0;  end 
        else begin   
            Q<=D;    end
end

assign NotQ = ~Q; 


endmodule
