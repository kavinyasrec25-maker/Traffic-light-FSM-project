FSM Traffic Light Controller (Verilog)

Files:
1. traffic_light.v      - FSM design module
2. traffic_light_tb.v   - Testbench for simulation

Simulation notes:
- The testbench generates a clock with a 10 ns period.
- Reset is held high initially, then deasserted after 10 ns.
- RED lasts 10 clock cycles, GREEN lasts 10 clock cycles, and YELLOW lasts 3 clock cycles.
- Outputs are active-high: 1 means that light is ON.
- This is a simulation design. For physical FPGA LEDs, adapt timing and assign the correct board pins.

To simulate:
- Add traffic_light.v as the design/source file.
- Add traffic_light_tb.v as the testbench.
- Run the simulation and view red, yellow, and green waveforms.
