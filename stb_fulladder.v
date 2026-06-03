module full_adder_stb;

  reg A, B, Cin;
  wire Sum, Carry;

  full_adder uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Carry(Carry)
  );

  // Assertions
  always @(*) begin
    if (sum != (A ^ B ^ Cin))
      $display("ERROR: SUM mismatch at time=%0t", $time);

    if (carry != ((A & B) | (B & Cin) | (A & Cin)))
      $display("ERROR: CARRY mismatch at time=%0t", $time);
  end

  // Task for applying inputs
  task apply_inputs;
    input a, b, cin;
    begin
      A   = a;
      B   = b;
      Cin = cin;
      #10;
    end
  endtask

  // Waveform dump
  initial begin
    $dumpfile("Full_Adder.vcd");
    $dumpvars(0, full_adder_stb);
  end

  // Stimulus
  initial begin

    $monitor("A=%b B=%b Cin=%b SUM=%b CARRY=%b",
              A, B, Cin, Sum, Carry);

    apply_inputs(0,0,0);
    apply_inputs(0,0,1);
    apply_inputs(0,1,0);
    apply_inputs(0,1,1);
    apply_inputs(1,0,0);
    apply_inputs(1,0,1);
    apply_inputs(1,1,0);
    apply_inputs(1,1,1);

    $finish;

  end

endmodule
