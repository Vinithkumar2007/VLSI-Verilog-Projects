module tb_full_adder;
reg a, b, c_in;
wire sum, carry;
full_adder dut (
.a(a),
.b(b),
.c_in(c_in),
.sum(sum),
.carry(carry)
);
initial begin
        $dumpfile("Fulladder.vcd");
        $dumpvars(0,tb_full_adder);

        $display(" a b | sum carry");

        a = 0; b= 0; c_in=0; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);

        a = 0; b= 0; c_in=1; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);

        a = 0; b= 1; c_in=0; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);

        a = 0; b= 1; c_in=1; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);
        
        a = 1; b= 0; c_in=0; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);

        a = 1; b= 0; c_in=1; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);
        
        a = 1; b= 1; c_in=0; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);

        a = 1; b= 1; c_in=1; #10
        $display("%b %b %b | %b %b", a, b, c_in, sum, carry);

        $finish;
end
endmodule