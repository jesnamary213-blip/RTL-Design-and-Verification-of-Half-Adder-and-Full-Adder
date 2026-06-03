module full_adder(
    input  A,
    input  B,
    input  Cin,
    output SUM,
    output COUT
);

assign SUM  = A ^ B ^ Cin;
assign COUT = (A & B) | (B & Cin) | (A & Cin);

endmodule
