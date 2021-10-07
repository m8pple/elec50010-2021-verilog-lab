Assume that modules exist called `band`, `bor`, `bnot` and `bxor`, each
of which performs the function they are named. `band`, `bor`, and `bxor`
take two 1-bit inputs called `a` and `b`, and produce a result `r`.
`bnot` takes a single input called `a` and produces a result `r`.

Create a module called `fadd4` which uses these primitive modules
to construct a 4-bit adder. The module should take two 4-bit inputs
called `a` and `b`, and produce a 4-bit output called `r`. The
module does not take a carry-in, nor does it produce a carry-out.

The `fadd4` module should not contain any logic, and should completely
rely on the module primitives to perform calculations.

You may create other modules within the `fadd4.v` file, as long as:
- They also do not directly perform any logic.
- Any logic is still performed using `band`, `bor`, `bnot` and `bxor` modules.
- Any extra modules start with the prefix `my_` (for example
    `my_fadd`), in order to avoid name clashes.
