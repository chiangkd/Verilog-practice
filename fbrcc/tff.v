// T-flip flop definition

module T_FF (q, clk, reset);
    output q;
    input clk, reset;
    wire d;
    D_FF dff (q, d, clk, reset);    // use D-flop flop as an instance
    not n1 (d, q);                  // not gate is a base element in verilog
endmodule
