# Grid-Tied Photovoltaic System Simulation in MATLAB/Simulink

![MATLAB](https://img.shields.io/badge/MATLAB-Simulink-orange)
![Power Electronics](https://img.shields.io/badge/Field-Power%20Electronics-blue)
![Renewable Energy](https://img.shields.io/badge/Renewable-Solar-green)

This repository contains a MATLAB/Simulink implementation of a **three-phase grid-connected photovoltaic (PV) system**.  
The project focuses on modeling and control of a typical grid-connected solar inverter including MPPT, inverter control, and grid synchronization.

---

## Project Objective

The goal of this project is to simulate and analyze a grid-tied PV system that can:

- Track maximum power under varying irradiance
- Maintain stable DC-link voltage
- Synchronize with the grid
- Inject low-distortion current into the grid

This project is intended as a **power electronics and renewable energy system simulation**.

---

## System Architecture

The system includes the following components:

- PV Array  
- DC-DC Boost Converter  
- MPPT Controller (Perturb & Observe)  
- DC-Link Capacitor  
- Voltage Source Inverter (VSI)  
- LCL Filter  
- Phase-Locked Loop (PLL)  
- PI Current Controller  

Power flow:

PV Array → Boost Converter → DC Link → Inverter → LCL Filter → Grid

---

## Control Strategy

The system uses multiple control layers:

### MPPT Control
Regulates the boost converter duty cycle to extract maximum power from the PV array.

### DC-Link Voltage Regulation
Maintains a stable DC-link voltage for proper inverter operation.

### Grid Current Control
A PI controller regulates inverter output current to maintain unity power factor.

### Grid Synchronization
A Phase-Locked Loop (PLL) is used to synchronize the inverter with grid voltage.

---

## Simulation Conditions

The system was tested under varying irradiance levels:

| Irradiance | Description |
|-----------|------------|
| 1000 W/m² | Standard condition |
| 800 W/m² | Reduced irradiance |
| 500 W/m² | Low solar input |
| 700 W/m² | Medium irradiance |
| 1500 W/m² | High irradiance |

---

## Key System Parameters

| Parameter | Value |
|----------|------|
| Grid Frequency | 50 Hz |
| Switching Frequency | 20 kHz |
| DC-Link Voltage | 800 V |
| Grid Voltage | 400 V (Line-to-Line) |
| Sampling Time | 1e-6 s |
| PV Rated Power | 11 kW |

---

## Performance Summary

Simulation results show:

- MPPT tracking efficiency ≈ 99%
- Stable DC-link voltage during irradiance changes
- Proper grid synchronization
- Grid current THD below 4%

These results indicate correct operation of the grid-connected PV system.

---

## Repository Structure

```
grid-tied-pv-system-simulink
│
├── simulink-model/
│   └── solarpv_grid_v1.slx
│
├── controllers/
│   ├── mppt.m
│   ├── variable_irradiance.m
│
├── diagrams/
│   ├── simulink_main_model.png
│   ├── inverter_controller.png
│
├── results/
│   ├── dc_link_voltage.png
│   ├── grid_current.png
│   ├── grid_voltage.png
│   ├── inverter_current.png
│   ├── pv_current.png
│   ├── pv_output_power.png
│   ├── pv_voltage.png
│   ├── grid_current_thd.png
│   ├── tracker_efficiency.png
│
├── analysis/
│   ├── thd_analysis.md
│   ├── parameter_selection.md
│
├── docs/
│   ├── simulation_setup.md
│   ├── limitations.md
│
└── report/
    └── solarpv-simulation_report.pdf
```

---

## How to Run the Simulation

1. Open MATLAB.
2. Navigate to the project directory.
3. Open the Simulink model:

```
model/grid_tied_pv_system.slx
```

4. Run the simulation.

Recommended environment:

- MATLAB R2023a or later  
- Simulink  
- Simscape Electrical  

---

## What This Project Demonstrates

This project demonstrates:

- Grid-connected inverter modeling
- MPPT implementation
- Renewable energy system simulation
- Harmonic analysis of grid current
- Power electronics control design

---

## Possible Future Improvements

This model can be extended with:

- Advanced MPPT algorithms
- Weak grid analysis
- Hardware implementation
- Real-time simulation
- Adaptive controller design

---

## Author

Suman Azad  
Power Systems | Renewable Energy | Power Electronics | Microgrids