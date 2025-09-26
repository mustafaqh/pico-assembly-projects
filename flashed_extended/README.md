# LED Flash (Extended)

This project is an **ARM Assembly program** for the Raspberry Pi Pico (RP2040) using the **Pico SDK**.  
It builds on the **basic LED flash example** and introduces additional button controls and timing logic.

---

##  Description
- **LED_PIN1 (GPIO 0)** is configured as an **output** for the LED.  
- **BUTTON1–BUTTON4 (GPIO 1–4)** are configured as **inputs**.  
- Program logic:
  - The LED is toggled in a loop with a delay (`sleep_ms`).  
  - **Button 3** is intended to change the blink speed (faster mode).  
  - **Button 1** and **Button 2** (commented code) were intended to directly turn the LED ON/OFF.  
- The program demonstrates **loops, branching, and timing functions** in assembly.  
- Some parts of the implementation (like the `faster` routine) are experimental/incomplete, but the structure shows how additional features can be added.

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
arm-none-eabi-as -o led-flash-extended.o led-flash-extended.S

# Link (using your linker script, e.g., link.ld)
arm-none-eabi-ld -T link.ld -o led-flash-extended.elf led-flash-extended.o

# Flash to Pico
picotool load led-flash-extended.elf
```

---

##  Purpose
This program demonstrates:
- **LED flashing with delays** in assembly.  
- Using multiple **button inputs** for extended control.  
- How to structure more complex logic with labels and subroutines.  
- An experimental step toward **customizing blink speed** with button input.

---

##  Author
 **Mustafa Habeb**  
Fresh Software Engineer passionate about **embedded systems, IoT, and low-level programming**.  
