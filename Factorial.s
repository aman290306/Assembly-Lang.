	AREA RESET,DATA,READONLY ; Factorial
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN 
	AREA mycode,CODE,READONLY
	ENTRY
Count RN R1
PDT RN R2
	EXPORT Reset_Handler
Reset_Handler
	MOV R0,#10 // input number to calculate factorial
	MOV Count,R0
	MOV PDT,#1 
L1	MUL PDT,PDT,Count
	SUBS Count,#1
	BNE L1
STOP B STOP
	END
