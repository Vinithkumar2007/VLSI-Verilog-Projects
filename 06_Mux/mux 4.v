module mux4to1 (
    input a, b, c, d,  
    input s0, s1,          
    output y               
);

    assign y = s1 ? (s0 ? d : c) : (s0 ? b : a);

endmodule
