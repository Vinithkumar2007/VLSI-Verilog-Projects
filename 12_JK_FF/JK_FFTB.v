module tb_jk_ff;
reg J,K,clk,rst;
wire Q, Q_bar;

JK_FF dut(.J(J),.K(K),.clk(clk),.rst(rst),.Q(Q),.Q_bar(Q_bar));

initial begin
    clk=0;
end
always #5 clk= ~clk;

initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0,tb_jk_ff);

    $display("J K | Q Q_bar");
   
    rst=1; J=0; K=0; #10;
    $display("%b %b | %b %b", J, K, Q, Q_bar);

    rst=0; J=0; K=0; #10;
    $display("%b %b | %b %b", J, K, Q, Q_bar);

    rst=0; J=0; K=1; #10;
    $display("%b %b | %b %b", J, K, Q, Q_bar);

    rst=0; J=1; K=0; #10;
    $display("%b %b | %b %b", J, K, Q, Q_bar);

    rst=0 ; J=1; K=1; #10;
    $display("%b %b | %b %b", J, K, Q, Q_bar);

    $finish;
end
endmodule