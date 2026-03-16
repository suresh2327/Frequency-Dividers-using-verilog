# Frequency Dividers Using Verilog

📌 **Repository:** Frequency-Dividers-using-verilog  

This repository contains **Verilog HDL implementations of frequency divider circuits**, commonly used in **digital and VLSI designs** to generate lower-frequency clocks from a high-frequency input clock.

Frequency dividers are essential building blocks in **clock generation, clock management, SoC designs, and digital systems**. This repository aims to cover even, odd, and fractional frequency dividers.

---

## 📘 What is a Frequency Divider?

A **frequency divider** is a digital circuit that takes an input signal of a frequency $f_{in}$ and generates an output signal of a frequency $f_{out} = \frac{f_{in}}{N}$, where $N$ is the division ratio.

Example:
- Input clock = 100 MHz  
- Divide-by-2 output = 50 MHz  
- Divide-by-N output = 100/N MHz  

---

## 🛠 Implementations Included & Concepts

### 1. Even Frequency Dividers (Divide by 2, 4, 8, etc.)
Even frequency dividers are the simplest to implement. They are typically designed using a series of **T flip-flops** or **D flip-flops**, or by using a simple counter. 
- **Duty Cycle:** It is straightforward to achieve a perfect 50% duty cycle. By toggling the output clock every $\frac{N}{2}$ cycles of the input clock, a symmetrical output is produced.

### 2. Odd Frequency Dividers (Divide by 3, 5, 7, etc.)
Odd frequency dividers are slightly more complex than even dividers, especially if a 50% duty cycle is required.
- **Without 50% Duty Cycle:** Can be implemented easily using a modulo-N counter that toggles the output clock after a certain number of counts.
- **With 50% Duty Cycle:** Requires capturing both the positive and negative edges of the input clock to achieve exactly 50% ON time and 50% OFF time (e.g., in a divide-by-3, ON for 1.5 cycles and OFF for 1.5 cycles). This is typically done by generating two intermediate clocks (one shifted by half a cycle) and combining them.

### 3. Fractional Frequency Dividers (e.g., Divide by 1.5, 2.5)
Fractional dividers divide the input clock by a non-integer value. These are critical in advanced PLLs (Phase-Locked Loops) and precise frequency synthesizers.
- **Implementation:** To get an exact fractional divide ratio like 1.5, both rising and falling edges of the input clock must be utilized. Other approaches include using dual-modulus prescalers (switching between $N$ and $N+1$ division ratios dynamically over time to achieve an average fractional division ratio).

---

## 📁 Repository Structure

- `Frequency divdier by 2/`
- `Frequency divdier by 4/`
- `Frequency divdier by 8/`
- `Frequency divdier by 16/`

*(Note: Odd and fractional dividers are planned to be added)*

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
- **Simulation:** ModelSim / Questa / Riviera-PRO / Xcelium / Vivado  
- **Synthesis:** Cadence Genus / Synopsys Design Compiler / Xilinx Vivado  

---

## ▶️ How to Simulate (Example)

```bash
vlog freq_div_by_2.v tb_freq_div_by_2.v
vsim tb_freq_div_by_2
run -all
```
