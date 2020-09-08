LDR		R10,	=9631007 	;initialize R10 with my student number 
		LDR		R0,=0B1		
		LDR		R1,=-1
		
WHILE1						;find the length of R10(binary) and set the length in R1
		SUBS		R2,R10,R0
		LSL		R0,R0,#1
		ADD		R1,R1,#1
		BPL		WHILE1
		
		LDR		R3,=0
		LDR		R4,=0B111
		LDR		R5,=0B101
		SUB		R1,R1,#3
		
WHILE2						;find number of '101' patterns in binary of '9631007'
		AND		R6,R10,R4
		CMP		R6,R5		;compare each 3 bit with '101' 
		BNE		NEQ
		ADD		R3,R3,#1 	;set the result in R3
NEQ
		ROR		R10,R10,#1	;roll R10 for new getting new 3 bit 
		SUBS	R1,R1,#1
		BPL		WHILE2
		END
