module full_adder(
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Carry
);

assign SUM  = A ^ B ^ Cin;
assign Carry = (A & B) | (B & Cin) | (A & Cin);

endmodule
