module SR_latch(Q, Qbar, Sbar, Rbar);

// port declaration
output Q, Qbar;
input Sbar, Rbar;

// use the nand gate provide by verilog
nand n1(Q, Sbar, Qbar);
nand n2 (Qbar, Rbar, Q);

endmodule

module Top;
// variable declaration
wire q, qbar;
reg set, reset;

SR_latch m1(q, qbar, set, reset);   // S means set, R means reset

// behavior handler `initial`
initial
begin
    $monitor($time, "set = %b, reset = %b, q = %b\n", set, reset, q);
    set = 0; reset = 0;
    #5 reset = 1;
    #5 reset = 0;
    #5 set = 1;
end

endmodule