module tb_full_subtractor;
    reg  a, b_in, c;
    wire d, b_out;

    full_subtractor dut (
        .a(a), .b_in(b_in), .c(c),
        .d(d), .b_out(b_out)
    );

    initial begin
        $dumpfile("fullsub.vcd");
        $dumpvars(0, tb_full_subtractor);

        $display("a b_in c | d  b_out");

        a = 0; b_in = 0; c = 0; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 0; b_in = 0; c = 1; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 0; b_in = 1; c = 0; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 0; b_in = 1; c = 1; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 1; b_in = 0; c = 0; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 1; b_in = 0; c = 1; #10;
       $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 1; b_in = 1; c = 0; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        a = 1; b_in = 1; c = 1; #10;
        $display("%b %b  %b   | %b   %b", a, b_in, c, d, b_out);

        $finish;
    end
endmodule