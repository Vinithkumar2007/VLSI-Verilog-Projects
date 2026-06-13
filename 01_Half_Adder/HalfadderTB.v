module tb_half_adder;
reg a, b;
wire sum, carry;
half_adder dut (
.a(a),
.b(b),
.sum(sum),
.carry(carry));
initial begin

     $dumpfile("waveform.vcd"); 
    $dumpvars(0, tb_half_adder);
    
    $display(" a b | sum carry");
    
    a=0; b=0; #10
    $display("%b %b | %b   %b", a, b, sum, carry);
    
    a=0; b=1; #10
    $display("%b %b | %b   %b", a, b, sum, carry);
    
    a=1; b=0; #10
    $display("%b %b | %b   %b", a, b, sum, carry);
    
    a=1; b=1; #10
    $display("%b %b | %b   %b", a, b, sum, carry);
    
    $finish;
end

endmodule