# Sequence-Detector-Using-Verilog

## Overview

This project implements a **1011 Sequence Detector** using both **Mealy** and **Moore Finite State Machines (FSMs)** in Verilog HDL. The detector identifies the occurrence of the sequence `1011` in a serial input stream and supports **overlapping sequence detection**.

## Features

* Verilog RTL implementation
* Mealy and Moore FSM architectures
* Overlapping sequence detection
* Functional verification using testbenches
* Waveform analysis and simulation

## FSM Comparison

| Feature             | Mealy FSM     | Moore FSM             |
| ------------------- | ------------- | --------------------- |
| Output Depends On   | State + Input | State Only            |
| Number of States    | 4             | 5                     |
| Detection Speed     | Immediate     | One Clock Cycle Delay |
| Hardware Complexity | Lower         | Higher                |

## Tools Used

* Verilog HDL
* ModelSim / Vivado / Icarus Verilog
* GTKWave

## Results

Successfully detected the sequence `1011` for various input patterns and verified correct operation through simulation. The project demonstrates FSM design, RTL coding, testbench development, and digital verification concepts.

## Learning Outcomes

* Finite State Machine Design
* Verilog HDL Programming
* Sequential Logic Design
* Functional Verification
* Digital System Modeling
