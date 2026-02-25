# Parameter Selection

This document explains the reasoning behind key parameters used in the simulation model.

---

## DC-Link Voltage

Selected value:
800 V

Reason:

- Provides sufficient voltage margin for the inverter
- Ensures stable operation
- Allows proper modulation of the inverter

The DC-link voltage must be higher than the peak grid voltage.

---

## Switching Frequency

Selected value:
20 kHz

Reason:

- Reduces current ripple
- Improves waveform quality
- Suitable for modern power electronic converters

Higher switching frequency improves performance but increases switching losses.

---

## LCL Filter Design

The inverter uses an LCL filter to reduce switching harmonics.

Filter components:

- Inverter side inductance: 2 mH
- Shunt capacitance: 100 µF
- Grid side inductance: 0.5 mH

Purpose of LCL filter:

- Reduce harmonic distortion
- Improve grid current quality
- Meet grid interconnection standards

---

## Sampling Time

Selected value:
1e-6 seconds

Reason:

- Required for accurate switching simulation
- Captures high-frequency dynamics
- Ensures stable controller performance

---

## PV System Size

Rated power:
11 kW

Reason:

- Suitable scale for studying grid-connected PV systems
- Demonstrates realistic inverter behavior
- Allows evaluation under multiple irradiance conditions

---

## Irradiance Test Levels

Multiple irradiance levels were used to test dynamic performance:

- 500 W/m²
- 700 W/m²
- 800 W/m²
- 1000 W/m²
- 1500 W/m²

These levels allow evaluation of:

- MPPT tracking
- transient response
- inverter stability