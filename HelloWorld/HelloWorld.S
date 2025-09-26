@
@ Assembler compute and program print out average of 8 numbers.
@ using the Pico SDK.
@

.thumb_func		    @ Necessary because sdk uses BLX
.global main	            @ Provide program starting address to linker

main:
	BL	stdio_init_all	@ initialize usb, in our case

loop:
  
	LDR	R0, =my_array	@ load address of helloworld string
	MOV	R1, #8		@ Move the counter to second parameter
	MOV R2, #0
	BL average      @ Call subroutine average with parameters r0, r1
	

	@ print average value as a string
	MOV r1, R0      @ Move average value to printf parameter r1
	LDR R0,=message_str
	BL	printf		@ Call pico_printf
	B loop		@ loop forever

  

@ Subroutine average takes parameters.
@ R0: memory address to first element in my_array.
@ R1: number of elements in my_array.

average:
	Push {lr}
	BL sum
	LSR R0, #3
	Pop {pc}
	BX LR

sum:
	LDR R3, [R0]
	ADD R2, R2, R3
	ADD R0, #4
	SUB R1,R1, #1
	CMP	R1,#0	
	BNE sum
	MOV R0, R2
	BX lr

.data
	       .align  4	@ necessary alignment
message_str: .asciz   "Average value:  %d\n"
my_array: .word 10, 20, 30, 40, 50, 60, 70, 80
