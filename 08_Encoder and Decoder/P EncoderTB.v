module tb_P_Encoder;
    reg [3:0] I;
    wire [1:0] y;

P_Encoder dut(
    .I(I),
    .y(y)
);

initial begin 
    $dumpfile("P_Encoder.vcd");
    $dumpvars(0, tb_P_Encoder);

    $display("Time | I[3:0] | y[1:0]");
    $monitor("%4t | %b | %b",
    $time, I, y);

    I = 4'b0000; #10;
    I = 4'b0001; #10;
    I = 4'b001X; #10;
    I = 4'b01XX; #10;
    I = 4'b1XXX; #10;

    $finish;
    end
endmodule