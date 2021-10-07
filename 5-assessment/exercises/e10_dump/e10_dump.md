e10 - Dump
----------

Assume a module called `rom` which implements a single-cycle 256-byte ROM
with the following ports:

- `clk` : 1-bit clock input
- `address` : 8-bit byte address input. Must be aligned to a multiple of 4.
- `data_0` : 8-bit data output for `address+0`
- `data_1` : 8-bit data output for `address+1`
- `data_2` : 8-bit data output for `address+2`
- `data_3` : 8-bit data output for `address+3`

The ROM has a single-cycle delay, so will produce output associated
with the current address on the next clock-cycle.

Write a module called `e10_dump` which instantiates the rom and
then prints the entire contents of the ROM to stdout. There
should be one address per line, and each line should have the form:
```
rom[address]=value;
```
where:
- `address` is a decimal integer that is a multiple of 4
- `value` is the decimal value of the 32-bit unsigned big-endian value at `address+0..address+3`

For example, if the rom contained 0 everywhere except for byte 5 which is `0xE3`
and byte 12 which is 1, the output could be:

```
$ ./e10_dump
rom[0]=0;
rom[4]=14876672;
rom[8]=0;
rom[12]=16777216;
rom[16]=0;
rom[20]=0;
...
rom[248]=0;
rom[252]=0;
```

Notes:

- Whitespace may be inserted anywhere in the output line, as long
  as it wouldn't change the meaning when interpreted as a verilog statement.
  - `rom[  0]=   0;` : Fine
  - ` rom [4]=10 ; ` : Fine
  - `rom[ 012]= 017;` : Fine (Verilog does not interpret leading 0 as octal).
  - `r om[12]=17;` : Not ok.
- If you use `$print` with `%d` it should print numbers the way you want.