	AREA RESET,DATA,READONLY;reverse array in memory
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN 
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R12,=dst; address of arr
	LDR R0,=dst;R0 points to first ele
	MOV R1,R0
	MOV R10,#5
	ADD R1,#36;R1 points to last ele
L1	LDR R2,[R0]
	LDR R3,[R1]
	STR R2,[R1]
	STR R3,[R0]
	ADD R0,#4
	SUB R1,#4
	SUBS R10,#1
	BNE L1
STOP B STOP
	AREA mydst,DATA,READWRITE
dst DCD 1,2,3,4,5,6,7,8,9,10
	END
		
