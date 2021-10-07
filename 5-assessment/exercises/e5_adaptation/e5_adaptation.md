e5 - Adaptation
---------------

Assume you have a *single-cycle* 16-bit multiplier called `mul16`
which performs a 16-bit unsigned integer multiplication and
takes a single clock cycle. The module has the following ports:

- `clk` : 1-bit clock
- `a` : 16-bit input
- `b` : 16-bit input
- `r` : 16-bit output. Contains the product of a and b with a 1-cycle delay.

Create a new module called `shift16` which uses the `mul16`
module to implement a pipelined *two-cycle* 16-bit shifter. The shifter
should take a 1-bit clock `clk`, a 16-bit input `a`, a 4-bit input `distance`, and
produce a 16-bit result `r`, where the result is equivalent
to `r=a<<distance`. You must use an instance of `mul16` to implement
the shifter, and cannot use the built-in Verilog shift operator.

Notes:

- "Pipelined two-cycle" simply means that the output `r` is derived from  the inputs
   `a` and `distance` that were supplied two cycles earlier.

- The output of the shifter in the first two cycles can be anything.

