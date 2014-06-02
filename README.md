### Hilbert Transform in Verilog

A sequential implementation of the discrete Hilbert Transform ( frequently used in signal processing ) in Verilog.

The entire Xilinx Project has been included, and some support MATLAB code for the decimal-to-binary and binary-to-decimal conversion, and for plotting graphs of the output.

It takes 32 points as input (each input being a 32-bit wire), and gives out 32 points (after taking the hilbert transform).

This was written over the course of seven days during which I learned verilog, the fast fourier transform algorithm and several other things for the first time. As a result this implementation is definitely not elegant.

This code, however, did win the second prize in the FPGA Design Challenge, Techkriti 2014 - the annual technical festival of IIT-Kanpur.

