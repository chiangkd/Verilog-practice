module tb();
    // inputs
    reg clk;
    reg reset;
    reg [7:0] a;
    reg [7:0] b;

    // outputs
    wire [7:0] c;

    // Instantiate the Unit Under Test (UUT)
    adder uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .c(c)
    );
    initial begin
         // Instantiate Inputs
         clk = 0;
         reset = 0;
         a = 0;
         b = 0;
         #10;
         reset = 1;
         #10;
         reset = 0;
         #100;
         a = 4;
         b = 7;
         #10;
         a = 8;
         b = 17;
         // Add stimulus here
    end
    always #5 clk = ~clk;
endmodule
