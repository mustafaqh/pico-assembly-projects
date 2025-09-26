
@
@ Assembler program to flash three LEDs connected to the
@ Raspberry Pi Pico GPIO port using the Pico SDK.
@

	.EQU	LED_PIN1, 0
	.EQU	BUTTON1, 1
	.EQU	BUTTON2, 2
	.EQU	BUTTON3, 3
	.EQU	BUTTON4, 4
	.EQU sleep_time, 1000
	.EQU 	GPIO_IN, 0
	.EQU 	GPIO_OUT, 1
	
	

.thumb_func	@ Necessary because sdk uses BLX
.global main    @ Provide program starting address

main:
	MOV	R0, #LED_PIN1
	BL	gpio_init
	MOV	R0, #LED_PIN1
	MOV	R1, #GPIO_OUT
	BL	link_gpio_set_dir
	
	MOV	R0, #BUTTON1
	BL	gpio_init
	MOV	R0, #BUTTON1
	MOV	R1, #GPIO_IN
	BL	link_gpio_set_dir
	
	
	MOV	R0, #BUTTON2
	BL	gpio_init
	MOV	R0, #BUTTON2
	MOV	R1, #GPIO_IN
	BL	link_gpio_set_dir
	
	MOV	R0, #BUTTON3
	BL	gpio_init
	MOV	R0, #BUTTON3
	MOV	R1, #GPIO_IN
	BL	link_gpio_set_dir
	
	MOV	R0, #BUTTON4
	BL	gpio_init
	MOV	R0, #BUTTON4
	MOV	R1, #GPIO_IN
	BL	link_gpio_set_dir
	
loop:
	
	MOV	R0, #LED_PIN1
	MOV	R1, #0
	BL	link_gpio_put
	
	LDR	R0, =sleep_time
	BL	sleep_ms
	
	MOV	R0, #LED_PIN1
	MOV	R1, #0
	BL	link_gpio_put
	
	LDR	R0, =sleep_time
	BL	sleep_ms
	
	
	MOV R0,#BUTTON3
	BL link_gpio_get
	CMP R0, #1
	BEQ faster
	
	BL	sleep_ms
	
	
	
	
	/*MOV R0,#BUTTON1
	BL link_gpio_get
	CMP R0, #1
	BEQ turn_on
	
	MOV R0,#BUTTON2
	BL link_gpio_get
	CMP R0, #1
	
	BEQ turn_off*/
		
	B       loop
	
turn_on:
	MOV	R0, #LED_PIN1
	MOV	R1, #1
	BL	link_gpio_put
	B loop
    
turn_off:
	MOV	R0, #LED_PIN1
	MOV	R1, #0
	BL	link_gpio_put
	b loop

faster:
LDR	R0, =sleep_time
ADD R0, #100
CMP R0, #500
BEQ faster
