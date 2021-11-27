TITLE COLOR DISPLAY
.MODEL SMALL
.STACK 100H
.DATA
.CODE

        MAIN PROC

        MOV AH,02
        MOV DL,40D
        MOV DH,15D
        INT 10H

        MOV AH,09
        MOV AL,'*'
        MOV BH,00H
        MOV BL,11010011B
        MOV CX,20D
        INT 10H

        MOV AH,4CH
        INT 21H

        MAIN ENDP
        END MAIN

