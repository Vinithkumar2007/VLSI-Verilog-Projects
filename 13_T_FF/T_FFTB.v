module tb_t_ff;
reg clk, rst, t;
wire q, q_bar;

t_ff dut(
    .clk(clk),
    .rst(rst),
    .t(t),
    .q(q),
    .q_bar(q_bar)
);

initial begin
    $dumpfile("t_ff.vcd");
    $dumpvars(0, tb_t_ff);
    $monitor("Time : %0t | rst: %b | t: %b | q: %b", $time, rst, t, q);
    clk = 0;
    rst = 1; t=0;
    #10 rst = 0; t=1;
    #10 t = 0;
    #10 t = 1;
    #10 t = 1;
    #10 t = 0;
end 
endmodule