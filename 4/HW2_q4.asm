LDR		R0,=280					;first number 
		LDR		R1,=640			;second number
WHILE							;loop to calculate GCD
		CMP		R0,R1
		
		BEQ		EQUAL
		
		BHI		HIGHER
		SUB		R1,R1,R0
		B		AFTERHIGH
		
HIGHER
		SUB		R0,R0,R1
		
AFTERHIGH
		
		BNE		WHILE
EQUAL
		MOV		R2,R0			;set the result in R2
		END
		
