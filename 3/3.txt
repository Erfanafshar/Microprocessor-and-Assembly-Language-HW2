		LDR		R4,=0xF635225A
		LDR		R5,=0xF4129FFB
		LDR		R2,=0XF4
		LDR		R3,=0X61
		ADDS		R1,R4,R5			;less valuable bits are in R1 (add and set CPSR)
		ADC		R0,R2,R3			;more valuable bits are in R0 (add with carry(if exist))
		END
