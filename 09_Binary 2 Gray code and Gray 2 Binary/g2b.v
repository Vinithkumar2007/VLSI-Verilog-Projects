module g2b(
    input g0, g1, g2, g3,
    output b0, b1, b2, b3
);
assign b3 = g3;
assign b2 = g3 ^ g2;
assign b1 = g3 ^ g2 ^ g1;
assign b0 = g3 ^ g2 ^ g1 ^ g0;
endmodule