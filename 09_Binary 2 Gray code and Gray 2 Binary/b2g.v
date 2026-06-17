module b2g(
    input b0, b1, b2, b3,
    output g0, g1, g2, g3
);

assign g3 = b3;
assign g2 = b3 ^ b2;
assign g1 = b2 ^ b1;
assign g0 = b1 ^ b0;
endmodule