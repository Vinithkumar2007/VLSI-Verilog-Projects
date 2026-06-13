// Half Adder - Dataflow Modeling
// Tools: Icarus Verilog, GTKWave

module half_adder(input a, b, output sum, carry);
  assign sum = a ^ b;    // XOR for Sum
  assign carry = a & b;  // AND for Carry
endmodule
