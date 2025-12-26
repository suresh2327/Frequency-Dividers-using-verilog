# Frequency Dividers Using Verilog

📌 **Repository:** Frequency-Dividers-using-verilog  
 

This repository contains **Verilog HDL implementations of frequency divider circuits**, commonly used in **digital and VLSI designs** to generate lower-frequency clocks from a high-frequency input clock.

Frequency dividers are essential building blocks in **clock generation, clock management, SoC designs, and digital systems**.

---

## 📘 What is a Frequency Divider?

A **frequency divider** is a digital circuit that reduces the frequency of an input clock by a fixed integer factor.

Example:
- Input clock = 100 MHz  
- Divide-by-2 output = 50 MHz  
- Divide-by-N output = 100/N MHz  

---

## 🛠 Implementations Included

| Divider Type | Description |
|-------------|------------|
| Divide by 2 | Simple toggle-based frequency divider |
| Divide by N | Counter-based frequency divider |
| Even Divider | Clean 50% duty-cycle divider |
| Odd Divider | Divider with near 50% duty-cycle |
| Parameterized Divider | Configurable divide ratio |

> All designs are written in **synthesizable Verilog HDL**.
---

---

## 🧠 Design Features

- ✔ Synthesizable RTL
- ✔ Parameterized designs
- ✔ Clean clock division logic
- ✔ Reset handling
- ✔ Testbench included for verification
- ✔ Industry-style coding conventions

---

## 🔧 Tools Used

- **Language:** Verilog HDL  
- **Simulation:** ModelSim / Questa / Riviera-PRO / Xcelium  
- **Synthesis Ready:** Cadence Genus / Synopsys Design Compiler  

---

## ▶️ How to Simulate (Example)

```bash
vlog freq_div_by_2.v tb_freq_div_by_2.v
vsim tb_freq_div_by_2
run -all


## 📂 Repository Structure

