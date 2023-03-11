module ripple_carry_counter (q, clk, reset);
    output [3:0] q;         // output declaration
    input clk, reset;       // input declaration

    // Create 4 T-flip flop instance

    T_FF tff0 (q[0], clk, reset);
    T_FF tff1 (q[1], q[0], reset);
    T_FF tff2 (q[2], q[1], reset);
    T_FF tff3 (q[3], q[2], reset);
endmodule