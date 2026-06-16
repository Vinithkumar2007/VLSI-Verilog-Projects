module full_adder (
    input a, b, cin,
    output sum, carry
);
assign sum = a ^ b ^ cin;
assign carry = (a & b) | ( a & cin) | ( b & cin);
    
endmodule

module RCA #(
    parameter N = 4    
)(
    input  wire [N-1:0] a,
    input  wire [N-1:0] b,
    input  wire         cin,
    output wire [N-1:0] sum,
    output wire         cout
);
    wire [N:0] carry;  

    assign carry[0] = cin; 

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : Fa_CHAIN
            full_adder Fa (
                .a    (a[i]),
                .b    (b[i]),
                .cin  (carry[i]),
                .sum  (sum[i]),
                .carry (carry[i+1])
            );
        end
    endgenerate

    assign cout = carry[N]; 

endmodule
