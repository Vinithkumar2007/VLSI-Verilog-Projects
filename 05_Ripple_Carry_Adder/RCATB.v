module tb_RCA;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire carry;

 RCA dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(carry)
    );
    initial begin
        $dumpfile("RCA.vcd");
        $dumpvars(0, tb_RCA);

        $display("\t a  b  cin  | sum carry");
        $monitor("0t\t %b %b %b | %b %b",
        $time, a, b, cin, sum, carry);

        a = 4'b0011; b = 4'b0100; cin = 0; #10;

        a = 4'b0111; b = 4'b1000; cin = 0; #10;

        a = 4'b1111; b = 4'b0001; cin = 0; #10;

        a = 4'b0101; b = 4'b0101; cin = 1; #10;

        a = 4'b1111; b = 4'b1111; cin = 1; #10;

        $finish;
    end

endmodule
