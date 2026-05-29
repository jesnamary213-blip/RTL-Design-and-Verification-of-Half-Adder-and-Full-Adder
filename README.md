# RTL-Design-and-Verification-of-Half-Adder

This project implements a Half Adder in Verilog HDL and verifies it using a structured testbench. The goal was to go beyond basic simulation and follow a verification-oriented workflow including self-checking assertions, waveform analysis, and a written test plan — similar to how IP blocks are validated in a professional RTL flow.

Half Adder Logic
A Half Adder adds two single-bit inputs and produces a Sum and a Carry.
SignalExpressionSumA XOR BCarryA AND B

RTL Design
The design uses dataflow modeling with assign statements — straightforward and fully synthesizable.
Design choices:

Dataflow style keeps the logic readable and maps directly to gate-level primitives
Modular structure allows the Half Adder to be instantiated inside a Full Adder later


Verification Approach
The testbench was written with verification structure in mind, not just stimulus dumping.
What's included:

DUT instantiation with clean port mapping
Task-based stimulus generation so each test case is reusable and readable
A monitor block that continuously logs signal changes
VCD dump for GTKWave waveform inspection
Inline assertions that flag incorrect outputs automatically without manual waveform checking


Test Plan
All four input combinations were covered. Expected outputs were determined from the truth table before simulation was run.
ABExpected SumExpected CarryResult0000PASS0110PASS1010PASS1101PASS

Assertion-Based Checking
Rather than relying on visual waveform inspection, assertions were added directly in the testbench to catch output mismatches at simulation time.
Two properties were checked after each stimulus application:

assert(sum === (a ^ b)) — Sum correctness
assert(carry === (a & b)) — Carry correctness

Any failure would print an error message with the input values, making debug faster.

Waveform Verification
Waveforms were dumped to a VCD file and viewed in GTKWave. This was used to:

Visually confirm output transitions match the truth table
Check that there are no unintended glitches or X/Z states
Cross-verify the assertion results with actual signal behavior


Tools

Verilog HDL (RTL and testbench)
EDA Playground (simulation)
GTKWave (waveform viewing)


What I Learned

How to write a testbench that checks itself rather than relying on manual inspection
How to structure a test plan before running simulation
How assertions catch bugs faster than waveform hunting
The basics of an IP block verification flow


