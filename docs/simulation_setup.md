# Simulation Setup

This document describes the configuration used for the grid-tied photovoltaic (PV) system simulation implemented in MATLAB/Simulink.

---

## Software Environment

The simulation was developed and tested using:

- MATLAB
- Simulink
- Simscape Electrical

Recommended version:
MATLAB R2022a or later.

---

## System Configuration

The system consists of the following main components:

1. PV Array
2. DC-DC Boost Converter
3. MPPT Controller (Perturb & Observe)
4. DC-Link Capacitor
5. Voltage Source Inverter (VSI)
6. LCL Filter
7. Phase Locked Loop (PLL)
8. Current Controller

Power flow:

PV Array → Boost Converter → DC Link → Inverter → LCL Filter → Grid

---

## Key Simulation Parameters

| Parameter | Value |
|----------|------|
Grid frequency | 50 Hz  
Switching frequency | 20 kHz  
DC-link voltage | 800 V  
Grid voltage | 400 V (Line-to-Line)  
Sampling time | 1e-6 s  
PV rated power | 11 kW  

---

## PV Array Configuration

The PV system is configured as:

- Module type: Avid Solar ASMS-165P
- Maximum power per module: 164.85 W
- Voltage at MPP (Vmp): 35 V
- Current at MPP (Imp): 4.71 A
- Modules per string: 17
- Parallel strings: 4

Total PV power at STC ≈ 11 kW.

---

## Irradiance Profile

To evaluate system dynamics, the irradiance changes during the simulation.

| Time Interval | Irradiance |
|--------------|-----------|
0–1 s | 1000 W/m²  
1–2 s | 800 W/m²  
2–3 s | 500 W/m²  
3–4 s | 700 W/m²  
4–5 s | 1500 W/m²  

Temperature is kept constant at:

25 °C

---

## Simulation Objectives

The simulation aims to observe:

- MPPT tracking performance
- DC-link voltage stability
- Grid synchronization
- Grid current quality
- Harmonic distortion

---

## Outputs Monitored

During simulation, the following signals are observed:

- PV voltage
- PV current
- PV power
- DC-link voltage
- Inverter current
- Grid voltage
- Grid current
- THD of grid current

These results help evaluate the overall performance of the system.