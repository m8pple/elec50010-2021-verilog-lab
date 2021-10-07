e2 - Create a testbench script
------------------------------

Write a bash script called `e2_testsuite.sh` which will compile and
execute any verilog files in the `rtl` directory. For each verilog
file found the script should print one line:
- `$filename Pass` to stdout if the file compiled and executed successfully;
- or `$filename Fail` if the file either did not compile or returned a non-zero exit code.

For example, if there were three verilog files `rtl/m1.v`, `rtl/m2.v`
and `rtl/X.v`, a possible execution would be:

```
$ ./e2_testsuite.sh
rtl/m1.v Pass
rtl/m3.v Fail
rtl/X.v Fail
```

You may make the following assumptions:

- The test results can be printed in any order
- None of the verilog modules will timeout
- Messages printed to stderr will be ignored; only stdout matters
- The script will always be executed as `./e2_testsuite.sh`, i.e. the working directory contains the script
- There will be no spaces in the containing directory or any of the filenames

You should remember that:

- Verilog test-benches often print to stdout when they use `$fatal`. Such messages should not get mixed into the stdout of the testsuite.
