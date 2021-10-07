Example assessments activities
==============================

These tasks are examples of the mid-term assessment. The
tasks will be distributed to each team as a `extercises.tar.gz` containing
the exercise folders. Your team then completes them and uploads
a `.tar.gz` into blackboard within 3 hours.

Change-log
----------

- v1 (2021/10/02) : Original version

Submission notes
----------------

- Each task requires the creation or modification of exactly one file

   - You should assume the first step of any assessment will be copying just
      that one file into a different working directory

   - You should not break modules down into multiple modules in distinct files
     (as the other files will not be copied)

   - You should also not use `include` (Verilog) or `source` (bash) to insert the
     contents of other files (for the same reason - the other files will not be
     available).

   - When writing Verilog you may create helper modules if you like, but they should have
     the prefix `my_` in order to avoid module name collisions.

- The output file for each task should be placed in the same directory as the task readme.

- You can create any other files you like in the directory, they will just be ignored
    - Hint: when it says "assume a module", you can just... create that module.

- Your submission is simply a zip or tar.gz of the directory containing the task directories (i.e. this directory).

- The submission archive can either contain exercise directories directly, or it can
  contain one directory with exercises as sub-directories.

- Only one submission per team is needed, by one team-member.

- You can submit as many times as you like.

- If there are multiple submissions, the submission with the latest timestamp before the deadline will be taken.

- It doesn't matter who does the tasks or how many each person does - it is a team effort.

Conventions and semantics
-------------------------

- When an output port is described as "undefined" it means that it can
  take on any value. It does _not_ mean that it must take on the
  verilog "unknown" value (`X`), though that would be one valid
  choice.

    - If you are implementing the module, then you can let the port
      take any value when it is undefined. Just do whatever is
      convenient.

    - If you are testing/using a module you should not assume anything
      about the output when it is undefined.

- Verilog modules are always contained in files of the same name as the module with the `.v` extension.

- All module inputs and outputs should be assumed to be scalar or vector types.

- When module inputs and outputs represent integers, these will be logic vectors with the LSB in bit 0 of the vector (i.e. the standard interpretation for Verilog)

- 1-bit module inputs and outputs should be given scalar types (no vector dimensions) unless explicitly directed otherwise.

    - Module `x` with 1-bit input `a` : `module x(input logic a); endmodule`
    - Module `x` with 1-bit _vector_ input `a` : `module x(input logic[0:0] a); endmodule`

- If there are any ambiguities in the task spec that needs resolving, create a file
  `assumptions.txt` or `assumptions.md` in the same directory as the task, and
  briefly describe what the ambiguity was, and what you assumed.
