# ELEC5566M Notes

## FPGA development on linux
**How much can we do without installing quartus?**
- We can write verilog in any old text editor.
- For simulation and verification - [verilator](https://www.veripool.org/verilator/) (https://www.veripool.org/verilator/) - compiles verilog to a multithreaded C++ or systemC program that efficiently simulates the hardware that the verilog script describes. The resulting C++ or systemC can be compiled and run to perform actual simulation.
    - installation packages and instructions (https://verilator.org/guide/latest/install.html
    - [verilator user manual](./resources/verilator_doc.pdf)
    - system C is a C++ library (a set of classes and macros) for event driven simulation (https://systemc.org/overview/systemc/) - might be a usefull resource in general.
- [Icarus Verilog](https://steveicarus.github.io/iverilog/usage/getting_started.html) (https://steveicarus.github.io/iverilog/usage/getting_started.html) is perhaps a more convenient simulation tool - github repository here 
https://github.com/steveicarus/iverilog
    - GTKWave can be used to view standard VCD and LXT format waveform dumps from simulations
- An option for simulating VHDL language is [GHDL](https://ghdl.github.io/ghdl/)
- One of the critically difficult aspects of developing for FPGA platforms using opensource tools is the synthesis and placement of the design on the hardware and the generation of the binary data to load that synthesised design into the FPGA.
- [Yosys](https://yosyshq.net/) (https://yosyshq.net/) is an customisable open source tool that can be used to generate a standard netlist from a verilog design - Yossys can perform synthesis for the Latice iCE40 series and Xilinx 7 series.
    - Yosys documentation (https://yosyshq.readthedocs.io/projects/yosys/en/latest/CHAPTER_Intro.html)
    - uses GraphVis to visualise generated netlists.
- Open circuit design website (http://opencircuitdesign.com/index.html) provides a whole set of useful tools related to this applications.
- [Nextpnr](https://github.com/YosysHQ/nextpnr) (https://github.com/YosysHQ/nextpnr) place-and-route software - seems to experimentaly support the Altera Cyclone V.
- Short [paper](./resources/1903.10407.pdf) describing the Yosys + Nextpnr workflow
