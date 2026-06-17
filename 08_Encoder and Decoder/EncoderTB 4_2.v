module tb_encoder_4_2;
    reg [3:0] d;
    wire [1:0] y;

encoder dut(
    .d(d),
    .y(y)
);

initial
     begin
    $dumpfile("encoder.vcd");
    $dumpvars(0,tb_encoder_4_2);

    $display("Time | d[3:0] | y[1:0]");

    $monitor("%4t | %b | %b",
    $time,d,y);

    d = 4'b0000; #10;
    d = 4'b0001; #10;
    d = 4'b0010; #10;
    d = 4'b0100; #10;
    d = 4'b1000; #10;

    $finish;
    end
endmodule
