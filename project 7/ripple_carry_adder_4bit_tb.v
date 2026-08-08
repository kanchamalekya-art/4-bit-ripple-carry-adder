//====================================================
// Testbench for 4-bit Ripple Carry Adder
//====================================================

module ripple_carry_adder_4bit_tb;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

// Instantiate the 4-bit Ripple Carry Adder
ripple_carry_adder_4bit uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    $display("==============================================");
    $display("       4-BIT RIPPLE CARRY ADDER TEST");
    $display("==============================================");
    $display(" A     B    Cin | Cout  Sum");
    $display("----------------------------");

    // Test 1
    A = 4'b0000;
    B = 4'b0000;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 2
    A = 4'b0011;
    B = 4'b0101;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 3
    A = 4'b0111;
    B = 4'b0001;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 4
    A = 4'b1010;
    B = 4'b0101;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 5
    A = 4'b1111;
    B = 4'b0001;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 6
    A = 4'b1111;
    B = 4'b1111;
    Cin = 0;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 7
    A = 4'b1010;
    B = 4'b0011;
    Cin = 1;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    // Test 8
    A = 4'b1111;
    B = 4'b1111;
    Cin = 1;
    #10;
    $display("%b  %b    %b  |  %b    %b",
             A, B, Cin, Cout, Sum);

    $display("----------------------------");
    $display("Simulation completed successfully.");

    $finish;
end

endmodule
