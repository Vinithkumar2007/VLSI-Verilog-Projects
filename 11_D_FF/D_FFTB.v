module tb_d_ff;
reg d, clk, rst;
wire q, q_bar;

d_ff dut_(
.d(d), .clk(clk), .rst(rst), .q(q), .q_bar(q_bar)
);

initial begin 
    $dumpfile("d_ff.vcd");
    $dumpvars(0, tb_d_ff);

    $monitor ("Time: %0t, d: %b, clk: %b, rst: %b", 
    $time, d, clk, rst);
    clk = 0; rst = 1; d=0;
    #10 rst = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    $finish;
end
endmodule