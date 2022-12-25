`include "or_nt.v"

module or_test();
    reg  a;
    reg  b;
    reg  expected;

    or_nt or_nt(a, b, out);

    task assert_else_error;
        assert (a | b == out) else $error("xor a: %b,  b: %b, out: %b,  expected: %b", a, b, out, a | b);
    endtask

    initial begin
        a = 0;
        b = 0;
        #1 assert_else_error();

        #1 a = 0;
        b = 1;
        #1 assert_else_error();

        #1 a = 1;
        b = 0;
        #1 assert_else_error();

        #1 a = 1;
        b = 1;
        #1 assert_else_error();
    end

endmodule
