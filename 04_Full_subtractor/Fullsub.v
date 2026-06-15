module full_subtractor(
    input a, b_in, c,
    output d, b_out
);
assign d = a ^ b_in ^ c;
assign b_out =  (~a & b_in) | (~a & c) | (b_in & c);
endmodule
