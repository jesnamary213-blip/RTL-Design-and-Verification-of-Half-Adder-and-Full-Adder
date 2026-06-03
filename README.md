# RTL Design and Verification of Half Adder and Full Adder

## Overview

This project implements and verifies two fundamental digital arithmetic circuits — a Half Adder and a Full Adder — using Verilog HDL. The focus was not only on RTL design but also on building a structured verification environment with reusable testbenches, self-checking assertions, waveform analysis, and a documented test plan.

The project was completed to gain hands-on experience with RTL development and verification concepts commonly used in digital design and VLSI verification workflows.

---

## Design Description

### Half Adder

A Half Adder adds two single-bit inputs and produces a Sum and a Carry output.

**Logic Equations**

```text
SUM   = A ^ B
CARRY = A & B
```

### Full Adder

A Full Adder extends the Half Adder by including an additional Carry-in input.

**Logic Equations**

```text
SUM   = A ^ B ^ Cin
CARRY = (A & B) | (B & Cin) | (A & Cin)
```

---

## RTL Design

Both circuits were implemented using Verilog dataflow modeling with continuous assignment statements.

### Design Highlights

* Fully synthesizable RTL code
* Direct implementation of arithmetic logic equations
* Modular and reusable design approach
* Half Adder used as a foundation for understanding larger arithmetic building blocks
* Clean and readable coding style suitable for simulation and synthesis

---

## Verification Strategy

The verification environment was designed to be self-checking rather than relying solely on manual waveform inspection.

The testbenches include:

* DUT instantiation with named port mapping
* Task-based stimulus generation for reusable test cases
* Continuous signal monitoring using `$monitor`
* VCD waveform generation for GTKWave analysis
* Inline assertions for automatic functional checking
* Exhaustive testing of all possible input combinations

---

## Test Plan

### Half Adder Test Cases

| A | B |
| - | - |
| 0 | 0 |
| 0 | 1 |
| 1 | 0 |
| 1 | 1 |

All four possible input combinations were applied and verified.

### Full Adder Test Cases

| A | B | Cin |
| - | - | --- |
| 0 | 0 | 0   |
| 0 | 0 | 1   |
| 0 | 1 | 0   |
| 0 | 1 | 1   |
| 1 | 0 | 0   |
| 1 | 0 | 1   |
| 1 | 1 | 0   |
| 1 | 1 | 1   |

All eight possible input combinations were applied and verified.

---

## Assertion-Based Verification

To make the testbenches self-checking, assertions were added to compare DUT outputs against the expected logic.

### Half Adder Checks

```verilog
sum   == (A ^ B)
carry == (A & B)
```

### Full Adder Checks

```verilog
sum   == (A ^ B ^ Cin)
carry == ((A & B) | (B & Cin) | (A & Cin))
```

Any mismatch automatically generates an error message during simulation, making debugging faster and reducing dependence on manual waveform analysis.

---

## Waveform Analysis

Simulation waveforms were dumped to VCD files and viewed using GTKWave.

Waveform inspection was used to:

* Verify output transitions for all test cases
* Confirm the correctness of Sum and Carry generation
* Cross-check assertion results
* Identify any unexpected X or Z states
* Validate functional behavior throughout the simulation

---

---

## Tools Used

* Verilog HDL
* EDA Playground
* GTKWave

---

## Key Learnings

Through this project, I gained practical experience in:

* RTL design using Verilog HDL
* Designing reusable and structured testbenches
* Assertion-based verification techniques
* Creating verification test plans
* Functional validation through exhaustive testing
* Waveform debugging and analysis
* Understanding the relationship between design and verification in a typical RTL development flow

This project strengthened my understanding of fundamental digital design concepts while providing hands-on exposure to verification practices used for validating RTL blocks before system-level integration.


