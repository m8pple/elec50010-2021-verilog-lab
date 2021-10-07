e12 - Regression
----------------

The module ALU is intended to provide a single-cycle ALU with
the same behaviour as the following MIPS instructions:

- 0 : ADDU
- 1 : SLL
- 2 : SUBU
- 3 : AND

There are at least two distinct functional faults in the module.

Create test-bench modules `regression_1_tb` and `regression_2_tb` which test
for two different faults. Each test-bench should just test for
one faults, and should produce a failure code if the fault
exists, or a success code if the fault has been removed.

