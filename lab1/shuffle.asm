	.ORIG x3000
	LEA R1, ARRAY
	LDW R1, R1, #0 ; R1 <-- x3050
LOOP 	LDB R2, R1, #0 
	LDB R3, R1, #1
	STB R2, R1, #1
	STB R3, R1, #0
	ADD R1, R1, #2
	ADD R0, R0, #-1
	BRp LOOP
	HALT
ARRAY   .FILL x3050
	.END
