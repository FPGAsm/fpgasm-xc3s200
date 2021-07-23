# FPGASM TEST

WORK IN PROGRESS!!!    Clumsy and embarrassing repo!

2021 breaking change in fpgasm:

Instead of `#include ...xdlrc` at the source level, fpgasm now requires the .xdlrc file to be renamed literally to `device.xdlrc` and placed (or linked) in the invocation directory.  The examples here are not yet updated, and will not work in directories that do not have a `device.xdlrc` file.

## What is this?

This repo contains a number of simple FPGAsm test projects, targeting Digilent Spartan-3 Starter board (XC3S200).  Other chips and boards will require adjustments to the placement and low-level modules 

## PRE-REQUISITES

* Digilent Spartan-3 Starter Board (XC3S200)
* Xilinx ISE 14.7 (ideally; earlier versions may work)
* FPGAsm

Please make sure everything works with ISE - try to build a simple project and load it to the board.  Do not try fpgasm until everything works in ISE.

## Getting Started

The src directory contains test source for fpgasm.  There are several project directories.  cd to the one named 'simple'.  cat `test00.fa`, the simplest test.  The circuit simply connects a switch to an LED.  To build, enter (no extension!)
```
  ./build test00
```
Build invokes fpgasm to create an xdl netlist and place it into the xdl directory above.  From there, the Makefile takes over and invokes PAR and BITGEN to route and generate the bitstream.  On my system it takes about 4 seconds.

If there are no errors, you can configure the fpga board by entering
```
  ./build test00 burn
```

To quickly check for fpgasm syntax errors,

```
fpgasm <filename>.fa crap.xdl
```

[TODO: more]

