module stimulus;
    reg clk;
    reg reset;
    wire [3:0] q;

    // use instance
    ripple_carry_counter r1(q, clk, reset);

    // control stimulus block driver
    initial
        clk = 1'b0;         // set clk to 0
    always
        #5 clk = ~clk;      // clk with flip every 5 unit
    // reset signal will set to 1 between 0 ~ 20 and 200 ~ 220, others 0
    initial
    begin
        reset = 1'b1;
        #15 reset = 1'b0;
        #180 reset = 1'b1;
        #10 reset = 1'b0;
        #20 $finish;    // stimulus end
    end

    // print to monitor
    initial
        $monitor($time, "Output q = %d", q);

endmodule