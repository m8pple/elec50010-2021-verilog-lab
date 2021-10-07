e6 - Search
-----------

Assume you have a combinatorial module called `f` which takes a single 32-bit unsigned integer
input `x` and produces a 1-bit result `r`. If we consider the module as a function `f(x)=r`, the module provides a guarantee
of monotonicity. So there is some value `i` such that:

- `for 0<=j<=i : f(j)=0`
- `for i<j<2^31 : f(j)=1`

You may assume that `0<i` and `i<2^31-1`.

Create a _synthesisable_ sequential module `search` that has a clock
input `clk` and an active-high reset `reset`, and produces a single 32-bit output `i`. Once `reset` transitions from high to low the module should
use binary search to find the value `i` such that `f(i)=0` and `f(i+1)=1`.

Your module does not need to indicate or signal when it has finished,
as long as `i` stabilises at the correct value within 1000 cycles.

Expressed as C code the functionality should be:

```
bool f(uint32_t x);

uint32_t search()
{
    uint32_t lo=0, hi=0x7FFFFFFFul;
    while(lo+1 < hi){
        uint32_t mid=(lo+hi)/2; // overflow is not a problem as i<2^31
        bool v=f(mid);
        if(v){
            hi=mid;
        }else{
            lo=mid;
        }
    }
    return lo;
}
```



