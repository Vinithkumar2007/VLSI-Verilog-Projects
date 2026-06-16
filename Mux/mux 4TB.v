module tb_mux4to1;
    reg a, b, c, d;
    reg s0, s1;
    wire y;

    mux4to1 dut (
        .a(a), .b(b), .c(c), .d(d),
        .s0(s0), .s1(s1),
        .y(y)
    );

    initial begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, tb_mux4to1);


        $monitor(" | s1 = %b s0 = %b | Data: a = %b b = %b c = %b d = %b | Output y = %b", s1, s0, a, b, c, d, y);

        a = 0; b = 1; c = 0; d = 1;

        $display(" Set 1: a=0, b=1, c=0, d=1 ---");
        s1 = 0; s0 = 0; #10;  
        s1 = 0; s0 = 1; #10; 
        s1 = 1; s0 = 0; #10; 
        s1 = 1; s0 = 1; #10;


        $display(" Set 2: a=1, b=0, c=1, d=0 ---");
        a = 1; b = 0; c = 1; d = 0;
        
        s1 = 0; s0 = 0; #10; 
        s1 = 0; s0 = 1; #10; 
        s1 = 1; s0 = 0; #10;  
        s1 = 1; s0 = 1; #10;  
        $finish;
    end

endmodule