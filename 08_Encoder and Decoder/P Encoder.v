module P_Encoder(
    input [3:0] I,
    output [1:0] y
);

assign y[0] = I[3] | (~I[2] &I[1]);
assign y[1] = I[3] | I[2];

endmodule