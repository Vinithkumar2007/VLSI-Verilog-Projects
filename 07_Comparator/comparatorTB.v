module tb_comparator;
    logic [3:0] a, b;
    logic a_grt_b, a_less_b, a_eq_b;

    comparator dut (
        .a(a),
        .b(b),
        .a_grt_b(a_grt_b),
        .a_less_b(a_less_b),
        .a_eq_b(a_eq_b)
    );

    initial begin
        $dumpfile("comparator_tb.vcd");
        $dumpvars(0, tb_comparator);
        
        $monitor("Time = %0t| a = %b, b = %b| a>b = %b, a<b = %b, a=b = %b", $time, a, b, a_grt_b, a_less_b, a_eq_b);
        a = 4'b1010; b = 4'b0101; #10; 

        a = 4'b0011;  b = 4'b0110; #10;

        a = 4'b0101;  b = 4'b0111; #10;

        a = 4'b1111; b = 4'b1111; #10;

        $finish;
    end
endmodule