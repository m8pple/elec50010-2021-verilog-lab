e1 - Create a truth-table
--------------------------

Create a module called `e1_truthtable` in a file `e1_truthtable.v` that implements the
following truth-table, where `a` and `b` are inputs, and `x` and `y`
are outputs. All truth-table values are decimal numbers or `X` for
don't care.

 a[0] | a[1]  | a[2] | b[3:0] | x | y[2:0]
------|-------|------|--------|---|--------
  1   |   0   |  0   |  1     | 0 |   3
  0   |   X   |  1   |  1     | 0 |   2
  0   |   X   |  1   |  4     | 1 |   0
  1   |   1   |  1   |  2     | 1 |   2
  1   |   0   |  0   |  3     | 0 |   X

