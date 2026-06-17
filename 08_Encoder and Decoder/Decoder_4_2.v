module Decoder_4_2(
    input [1:0] D,
    output [3:0] y
);

assign y[0] = ~(D [1]) & ~(D [0] );
assign y[1] = ~(D [1]) & (D [0] );
assign y[2] = (D [1]) & ~(D [0] );
assign y[3] = (D [1]) & (D [0] );
endmodule
