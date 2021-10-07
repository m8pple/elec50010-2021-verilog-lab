e3 - Opcode Decoder Testbench
-----------------------------

Assume a module exists called `opcode_decoder` in a file
called `opcode_decoder.v`. The module takes a single
6-bit input called `opcode`, and produces three single-bit outputs
called `itype`, `rtype`, and `jtype`. For any given input
the module will set exactly one output high, indicating
what MIPS instruction coding the instruction uses.

Write a testbench called `e3_testbench.v` which applies
at least 4 test-cases, and includes at least one test-input for
each instruction encoding. The testbench should return a success
code only if all test-cases pass.

