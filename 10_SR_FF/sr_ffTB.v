module tb_sr_ff;
reg S,R,clk,rst;
wire Q, Q_bar;

SR_FF dut(.S(S),.R(R),.clk(clk),.rst(rst),.Q(Q),.Q_bar(Q_bar));

initial begin
    clk=0;
end
always #5 clk= ~clk;

initial begin
    $dumpfile("sr_ff.vcd");
    $dumpvars(0,tb_sr_ff);

    $display("S R | Q Q_bar", S, R, Q, Q_bar);
   
    rst=1; S=0; R=0; #10;
    $display("%b %b | %b %b", S, R, Q, Q_bar);

    rst=0; S=0; R=0; #10;
    $display("%b %b | %b %b", S, R, Q, Q_bar);

    rst=0; S=0; R=1; #10;
    $display("%b %b | %b %b", S, R, Q, Q_bar);

    rst=0; S=1; R=0; #10;
    $display("%b %b | %b %b", S, R, Q, Q_bar);

    rst=0; S=1; R=1; #10;
    $display("%b %b | %b %b", S, R, Q, Q_bar);

    $finish;
end
endmodule