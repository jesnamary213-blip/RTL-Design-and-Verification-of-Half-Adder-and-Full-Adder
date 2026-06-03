Test Plan – Half Adder and Full Adder Verification
Objective

The objective of this verification plan is to validate the functional correctness of the Half Adder and Full Adder RTL designs by applying all possible input combinations and comparing the DUT outputs against expected results.

**1. Half Adder Verification Plan**
*Design Under Test (DUT)*

Inputs:

A
B

Outputs:

SUM
CARRY
*Functional Requirements*
- Requirement ID	Description
- HA_01	SUM shall be equal to A XOR B
- HA_02	CARRY shall be equal to A AND B
Test Scenarios
| Test Case | A | B | Expected Sum | Expected Carry |
| --------- | - | - | ------------ | -------------- |
| TC1       | 0 | 0 | 0            | 0              |
| TC2       | 0 | 1 | 1            | 0              |
| TC3       | 1 | 0 | 1            | 0              |
| TC4       | 1 | 1 | 0            | 1              |

**Verification Method**
- Apply all input combinations.
- Compare DUT outputs against expected values.
- Use assertions to automatically detect mismatches.
- Verify results through waveform inspection.
*Success Criteria*
- All assertions pass.
- No simulation errors are reported.
- Waveforms match the expected truth table.
**2. Full Adder Verification Plan
Design Under Test (DUT)**

Inputs:

A
B
Cin

Outputs:

SUM
CARRY
*Functional Requirements*
Requirement ID	Description
- FA_01	SUM shall be equal to A XOR B XOR Cin
- FA_02	CARRY shall be equal to (A&B) OR (B&Cin) OR (A&Cin)

Test Scenarios

| Test Case | A | B | Cin | Expected Sum | Expected Carry |
| --------- | - | - | --- | ------------ | -------------- |
| TC1       | 0 | 0 | 0   | 0            | 0              |
| TC2       | 0 | 0 | 1   | 1            | 0              |
| TC3       | 0 | 1 | 0   | 1            | 0              |
| TC4       | 0 | 1 | 1   | 0            | 1              |
| TC5       | 1 | 0 | 0   | 1            | 0              |
| TC6       | 1 | 0 | 1   | 0            | 1              |
| TC7       | 1 | 1 | 0   | 0            | 1              |
| TC8       | 1 | 1 | 1   | 1            | 1              |

**Verification Method**
- Apply all possible input combinations.
- Check outputs using self-checking assertions.
- Monitor signals during simulation.
- Validate functionality using GTKWave waveforms.
**Success Criteria**
- All assertions pass without failure.
- No unexpected X or Z states appear.
- Output waveforms match expected Full Adder behavior.

