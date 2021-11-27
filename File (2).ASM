; Program to add three numbers using registers

; Standard header:
	#make_COM#
        ORG  100H  


	MOV AX,  5	; Load first number into ax
	MOV BX, 10	; Load second number into bx
	ADD AX, BX	; Accumulate sum in AX
	MOV BX, 15	; Load third number in bx
	ADD AX, BX	; Accumulate sum in AX
	
	
; Exit to operating system:
        MOV AX, 4C00h
        INT 21h
