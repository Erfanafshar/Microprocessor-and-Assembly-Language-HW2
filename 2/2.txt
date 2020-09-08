		LDR		R0,=6			;initialize R0 with 6
		BL		FACTORIAL
		END
		
FACTORIAL						;factorial function to calculate the factorial 
		MOV		R1,R0			
		MOV		R2,R0
		LDR		R4,=2
		LDR		R5,=0
		
FACT							;outer loop -> calculate the factorial in R1
		LDR		R3,=0
		SUB		R2,R2,#1
SUM								;inner loop -> multiply two R1,R2 and set the result in R5
		ADD		R5,R5,R1
		ADD		R3,R3,#1
		CMP		R3,R2
		BNE		SUM
		
		MOV		R1,R5
		LDR		R5,=0
		ADD		R4,R4,#1
		CMP		R4,R0
		BNE		FACT
		
		MOV		R10,R1			;set the result in R10 
		MOV		PC,LR			;return to main
		
		
