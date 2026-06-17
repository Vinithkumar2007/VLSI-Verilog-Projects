module tb_Decoder_4_2;
    reg [1:0] D;
    wire [3:0] y;

Decoder_4_2 dut (
    .D(D),
    .y(y)
);
 initial begin
    $dumpfile("Decoder_4_2.vcd");
    $dumpvars(0, tb_Decoder_4_2);

    $display("Time\t D1 D0 | y3 y2 y1 y0");
    $monitor("%0t %b %b | %b %b %b %b",
    $time, D[1], D[0], y[3], y[2], y[1], y[0]);
    D = 2'b00; #10;
    D = 2'b01; #10;
    D = 2'b10; #10;
    D = 2'b11; #10;
    $finish;
 end
endmodule