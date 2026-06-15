module tb_half_subtractor;
reg a, b;
wire difference, borrow;
 half_subtractor dut (
    .a(a),
    .b(b),
    .difference(difference),
    .borrow(borrow)
 );
 initial begin
    $dumpfile("Halfsub.vcd");
    $dumpvars(0,tb_half_subtractor);

    $display(" a b | difference borrow");

    a = 0; b = 0; #10
    $display( "%b %b | %b %b", a, b, difference, borrow );

    a = 0; b = 1; #10
    $display( "%b %b | %b %b", a, b, difference, borrow );

    a = 1; b = 0; #10
    $display( "%b %b | %b %b", a, b, difference, borrow );

    a = 1; b = 1; #10
    $display( "%b %b | %b %b", a, b, difference, borrow );

    $finish;
 end
endmodule