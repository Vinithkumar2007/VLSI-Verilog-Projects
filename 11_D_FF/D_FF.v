module d_ff(
    input d, clk, rst,
    output reg q,
    output reg q_bar
);

always @(posedge clk) begin
    if (rst )
    q <= 1'b0;
    else
    q <= d;
end
endmodule