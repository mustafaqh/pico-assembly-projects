# LED Flash (Basic)

This project is an **ARM Assembly program** for the Raspberry Pi Pico (RP2040) using the **Pico SDK**.  
It demonstrates **GPIO input/output** by controlling an LED with two buttons.

---

##  Description
- **LED_PIN1 (GPIO 0)** is configured as an **output** for the LED.  
- **BUTTON1 (GPIO 1)** and **BUTTON2 (GPIO 2)** are configured as **inputs**.  
- Program logic:
  - If **Button 1** is pressed → the LED turns **ON**.  
  - If **Button 2** is pressed → the LED turns **OFF**.  
- Runs in an infinite loop, constantly checking button states.

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
This program demonstrates:
- **Basic GPIO control** in ARM assembly.  
- Reading input from **buttons** and writing output to **LEDs**.  
- Simple infinite loops and conditional branching.  

---

##  Author
 **Mustafa Habeb**  
Fresh Software Engineer passionate about **embedded systems, IoT, and low-level programming**.  
