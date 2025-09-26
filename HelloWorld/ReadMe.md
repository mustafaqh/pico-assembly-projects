# Average of Array (Hello World in Assembly)

This project is an **ARM Assembly program** for the Raspberry Pi Pico (RP2040) using the **Pico SDK**.  
It demonstrates how to perform arithmetic operations in assembly and print results via USB.

---

## 📖 Description
- An array of 8 integers is stored in memory:  
  `{10, 20, 30, 40, 50, 60, 70, 80}`
- The program computes the **average** of these numbers:
  - Calls a custom `sum` subroutine to add all numbers.
  - Calls an `average` subroutine that divides the total by 8.
- Prints the result over USB using `printf`.  
- Runs in an infinite loop, repeatedly printing the average.  

**Expected output:**
```
Average value: 45
```

---

## 🛠 Requirements
- Raspberry Pi Pico (RP2040)
- ARM GNU toolchain (`arm-none-eabi-as`, `arm-none-eabi-ld`, etc.)
- Raspberry Pi Pico SDK
- [picotool](https://github.com/raspberrypi/picotool) or OpenOCD for flashing

---

## ⚡ Build & Run
Example workflow (Linux/macOS):

```bash
# Assemble
arm-none-eabi-as -o average-array.o average-array.S

# Link (using your linker script, e.g., link.ld)
arm-none-eabi-ld -T link.ld -o average-array.elf average-array.o

# Flash to Pico
picotool load average-array.elf
```

---

## 🎯 Purpose
This example serves as a **Hello World** in assembly by:
- Demonstrating function calls (`sum`, `average`).
- Practicing memory access and arithmetic in ARM assembly.
- Showing how to integrate with the **Pico SDK printf** for serial output.

---

## ✨ Author
👤 **Mustafa Habeb**  
Fresh Software Engineer passionate about **embedded systems, IoT, and low-level programming**.  
