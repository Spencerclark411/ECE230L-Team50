module light(
    // Declare downstairs and upstairs input
    // Declare stair light output
    input downstairs, upstairs,
    output light
);

    // Enter logic equation here
    assign light = (downstairs ^ upstairs);
    
endmodule