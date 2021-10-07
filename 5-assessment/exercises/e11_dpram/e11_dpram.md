e11 - Dual port RAM
-------------------

Assume you have a module called `ram256x8`
which implements a single-cycle RAM with
the following ports:

- `clk` : clock input
- `write` : If asserted the value in `data_in` is written to `addr`
- `addr` : 8-bit address input
- `data_in` : 8-bit data write input
- `data_out` : 8-bit data read output

Create a module called `ram256x8_dp` which has two independent memory
buses "a"  and "b" providing independent access to a single
shared 256x8 RAM. Each port consists of the non-clock ports of
`ram256x8` with the suffix `_a` or `_b`. The module must rely
on the `ram256x8` module for storage, _though it may contain more
than one instance of `ram256x8`_.

The `ram256x8` module has the following properties:

- Data appears on `data_out` one cycle after `addr` is presented.
- The `data_out` output is undefined if `write` was asserted in the previous cycle.

The module `ram256x8_dp` inherits the properties of `ram256x8` for each
port, and adds the following:

- Any write on an address `a` on one port should be visible to
  reads from `a` on the other port in the following cycle(s).

- If `(addr_a==addr_b) && (write_a^write_b)` then the values of
  `data_out_a` and `data_out_b` are undefined in the next cycle.

- If `(addr_a==addr_b) && (write_a&&write_b)` then the entry at
  `addr_a` can be considered undefined until it is written again.
