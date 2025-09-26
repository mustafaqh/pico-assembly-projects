# Raspberry Pi Pico Assembly Projects

This repository contains a collection of **ARM Assembly programs** written for the Raspberry Pi Pico (RP2040) using the **Pico SDK**.  
The projects demonstrate low-level programming concepts such as **GPIO control, LED flashing, button input handling, and arithmetic operations**.

---

##  Projects

###  LED Flash (Basic)
- Controls an LED connected to **GPIO 0**.
- **Button 1 (GPIO 1)** → turns the LED **ON**.  
- **Button 2 (GPIO 2)** → turns the LED **OFF**.  

###  LED Flash (Extended)
- Flashes an LED with a delay.  
- Sets up **4 buttons** for extended functionality:
  - Button 3 is intended to change the blink speed.  
  - Buttons 1 & 2 (currently commented) for ON/OFF control.  
- Demonstrates using loops and conditional branches in assembly.

###  Average of Array (HelloWorld)
- Computes the **average of 8 numbers** stored in memory.  
- Uses a custom `sum` and `average` subroutine in assembly.  
- Prints the result via USB using `printf` from the Pico SDK.  
- Example array: `{10, 20, 30, 40, 50, 60, 70, 80}` → Average = `45`.

---

##  Requirements
- Raspberry Pi Pico (RP2040)
- ARM GNU toolchain (`arm-none-eabi-as`, `arm-none-eabi-ld`, etc.)
- Raspberry Pi Pico SDK
- [picotool](https://github.com/raspberrypi/picotool) or OpenOCD for flashing

---

##  Build & Run
Example workflow (Linux/macOS):

```bash
# Assemble
arm-none-eabi-as -o led-flash-basic.o led-flash-basic.S

# Link (using your linker script, e.g., link.ld)
arm-none-eabi-ld -T link.ld -o led-flash-basic.elf led-flash-basic.o

# Flash to Pico
picotool load led-flash-basic.elf
```

---

##  Purpose
These projects were created to:
- Learn **ARM Assembly** in a hands-on way.  
- Explore how to use the **Pico SDK** directly from assembly.  
- Practice **low-level hardware control** with GPIO and memory operations.  

---

##  License
This repository is licensed under the [MIT License](LICENSE).

---

##  Author
 **Mustafa Habeb**  
Fresh Software Engineer passionate about **embedded systems, IoT, and low-level programming**.  
