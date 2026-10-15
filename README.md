
# Traffic Light Controller Using FSM in Verilog HDL

## Overview

This project implements a traffic light controller using a Finite State Machine (FSM) in Verilog HDL. The controller operates through three states: RED, GREEN, and YELLOW. A counter determines the duration of each state, and the FSM automatically transitions between states based on predefined count values. The design is verified through simulation using a Verilog testbench.

## Objectives

- Design a traffic light controller using FSM concepts.
- Implement sequential and combinational logic using Verilog HDL.
- Control traffic light outputs through state transitions.
- Verify the design using a testbench and waveform simulation.
- Understand state encoding, clock-driven transitions, and counter-based timing.

## Features

- Three-state FSM: RED, GREEN, and YELLOW.
- Synchronous active-high reset.
- Counter-based state transition control.
- Automatic and continuous state sequencing.
- Verilog testbench for functional verification.
- Simulation using Vivado Simulator.

## System Architecture

The design consists of two main modules:

1. **Traffic Light Controller:** Implements the FSM, counter, reset logic, and light output control.
2. **Testbench:** Generates the clock, applies reset, monitors outputs, and terminates the simulation.

### Block Diagram

```text
       Clock (clk)       Reset (rst)
            |                 |
            v                 v
     +---------------------------+
     |  Traffic Light Controller |
     |                           |
     |   FSM + Counter           |
     |                           |
     +-------------+-------------+
                   |
          +--------+--------+
          |        |        |
          v        v        v
        RED      GREEN    YELLOW
```

## FSM State Encoding

| State | Binary Encoding | Active Output |
|---|---|---|
| RED | 00 | red = 1 |
| GREEN | 01 | green = 1 |
| YELLOW | 10 | yellow = 1 |

The FSM follows this repeating sequence:

**RED → GREEN → YELLOW → RED**

## State Transition Conditions

| Current State | Counter Condition | Next State | Counter Action |
|---|---|---|---|
| RED | count == 9 | GREEN | Reset to 0 |
| GREEN | count == 9 | YELLOW | Reset to 0 |
| YELLOW | count == 2 | RED | Reset to 0 |

The counter increments on each rising edge of the clock until the corresponding transition condition is reached.

## Hardware and Software Requirements

| Component | Description |
|---|---|
| Design Language | Verilog HDL |
| Design Tool | Xilinx Vivado |
| Simulation Tool | Vivado Simulator |
| Design Type | Finite State Machine (FSM) |
| Clock | Testbench-generated clock |
| Verification | Behavioral simulation |

## Project File Structure

```text
Traffic-Light-FSM/
├── Sources/
│   └── traffic_light.v
├── Simulation/
│   └── traffic_light_tb.v
├── Images/
│   └── simulation_waveform.png
└── README.md
```

## Simulation Procedure

1. Create a new RTL project in Xilinx Vivado.
2. Add `traffic_light.v` as a design source.
3. Add `traffic_light_tb.v` as a simulation source.
4. Set `traffic_light_tb` as the simulation top module.
5. Run Behavioral Simulation.
6. Observe the RED, GREEN, and YELLOW output waveforms.
7. Verify that the FSM follows the expected state sequence.

## Expected Simulation Results

| State | RED | YELLOW | GREEN |
|---|---:|---:|---:|
| RED | 1 | 0 | 0 |
| GREEN | 0 | 0 | 1 |
| YELLOW | 0 | 1 | 0 |

The output signals should activate one light at a time. After the YELLOW state, the FSM returns to RED and repeats the sequence.

## Applications

- Learning FSM design and state transitions.
- Digital system design and verification.
- Traffic signal controller demonstrations.
- FPGA-based digital logic projects.
- Understanding counters and synchronous control systems.

## Conclusion

The Traffic Light Controller demonstrates the implementation of a three-state Finite State Machine using Verilog HDL. A counter controls the transitions between RED, GREEN, and YELLOW states, while a testbench verifies the functionality through simulation. This project provides practical experience in sequential logic design, FSM implementation, and digital hardware verification.

## Author

**Project:** Traffic Light Controller Using FSM  
**Language:** Verilog HDL  
**Tool:** Xilinx Vivado
