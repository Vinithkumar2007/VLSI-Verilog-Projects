module comparator(
    input [3:0] a,
    input [3:0] b,
    output reg a_grt_b, a_less_b, a_eq_b
);
    always_comb begin
        if (a > b) begin
            {a_grt_b, a_less_b, a_eq_b} = 3'b100;
        end
        else if (a < b) begin
            {a_grt_b, a_less_b, a_eq_b} = 3'b010;
        end
        else begin
            {a_grt_b, a_less_b, a_eq_b} = 3'b001;
        end
    end
endmodule