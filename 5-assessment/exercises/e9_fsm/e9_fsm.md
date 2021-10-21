e9 - FSM
--------

Create a module called `fsm` that tracks number and sum of
incoming data values. The top-level ports should be:

- A clock input called `clk`
- A 1-bit input called `reset`
- A 1-bit input called `sample_valid`
- A 3-bit input called `sample_value`
- An 8-bit output called `sum`
- An 8-bit output called `count`

The FSM should be implemented such that the `sum` and `count` are updated
the cycle after the inputs,
so the FSM is a [Moore machine](https://en.wikipedia.org/wiki/Moore_machine).

In the following, let the suffix `_prev` mean the signal's
value in the previous cycle. The FSM should perform the
following function:

```
if reset_prev:
    sum = 0
    count = 0
elif sample_valid_prev:
    sum = sum_prev + sample_value_prev
    count = count_prev + 1
else:
    sum = sum_prev
    count = count_prev
```


Until `reset` has been driven high and fallen, the outputs of the FSM are undefined (i.e. they can take any value).

If the input sequence overflows either `sum` or `count` then the outputs are
undefined until `reset` is driven high again (i.e. you can do anything you 
want if they overflow).
