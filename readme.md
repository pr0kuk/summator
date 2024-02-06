# 4-bit adder in two versions - parallel and serial
## Structure
`adder1.v` is the main cell - a one-bit adder

`adder_par.v` and `adder_posl.v` correspondingly parallel and serial 4-bit adders

`adder_tb` is a testbench in which test input data is supplied
## Requirements
Icarus Verilog or any other Verilog Compiler
## Build (for Icarus)
```bash
iverilog -o ad.vvp adder1.v adder_par.v adder_posl.v adder_tb.v
```
## Run (for Icarus)
```bash
vvp ad.vvp
```
## Analyze (for Icarus)
```bash
gtkwave
```