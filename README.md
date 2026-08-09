1:4 Demultiplexer Using Verilog HDL

📌 Project Overview

A Demultiplexer (DEMUX) is a combinational digital circuit that takes one input and routes it to one of multiple outputs based on the select lines.

This project implements a 1:4 Demultiplexer using Verilog HDL.

A 1:4 DEMUX has:

- 1 data input
- 2 select lines
- 4 outputs

🎯 Objectives

- Understand the working principle of a Demultiplexer.
- Design a 1:4 DEMUX using Verilog HDL.
- Verify all possible select-line combinations.
- Create a testbench.
- Perform waveform simulation.

⚙️ Specifications

Parameter| Value
Data Inputs| 1
Select Lines| 2
Outputs| 4
Circuit Type| Combinational
HDL| Verilog

🔌 Inputs

- "din" – Data input
- "sel" – 2-bit select line

🔌 Outputs

- "y0" – Output 0
- "y1" – Output 1
- "y2" – Output 2
- "y3" – Output 3

🧠 Working Principle

The select lines determine which output receives the input data.

Select "sel"| Output
"00"| "y0 = din"
"01"| "y1 = din"
"10"| "y2 = din"
"11"| "y3 = din"

All other outputs remain "0".

Example

If:

din = 1
sel = 10

then:

y0 = 0
y1 = 0
y2 = 1
y3 = 0

📂 Project Files

README.md
demux1to4.v
demux1to4_tb.v
simulation/
    demux_waveform.png

"demux1to4.v"

Contains the RTL design of the 1:4 Demultiplexer.

"demux1to4_tb.v"

Contains the testbench used to verify the DEMUX.

"demux_waveform.png"

Contains the simulation waveform.

🧪 Simulation

The design can be simulated using:

- Icarus Verilog
- GTKWave
- ModelSim
- QuestaSim
- Vivado

Icarus Verilog Commands

Compile:

iverilog -o demux_sim demux1to4.v demux1to4_tb.v

Run:

vvp demux_sim

This generates:

demux.vcd

Open the waveform:

gtkwave demux.vcd

✅ Expected Result

For "din = 1":

sel = 00 → y0 = 1
sel = 01 → y1 = 1
sel = 10 → y2 = 1
sel = 11 → y3 = 1

Only the selected output becomes "1".

🌐 Applications

Demultiplexers are used in:

- Data routing
- Communication systems
- Digital systems
- Data distribution
- Processor systems
- Control systems

🏁 Conclusion

A 1:4 Demultiplexer was successfully designed using Verilog HDL. The testbench verifies all possible select-line combinations, and simulation confirms that the input data is correctly routed to the selected output.

Author

Bhargavi
