TITLE COLOR DISPLAY
.MODEL SMALL
.STACK 100H
.DATA
MSG1    DB      "MAIN MENU$"
MSG2    DB      "1.     ADD$"
MSG3    DB      "2.     SUB$"
MSG4    DB      "3.     MUL$"
MSG5    DB      "4.     DIVI$"
MSG6    DB      "ENTER YOUR CHOICE NO.....$"
.CODE

        MAIN PROC

        MOV AX,@DATA
        MOV DS,AX

        MOV AH,09
        MOV AL,' '
        MOV BH,00H
        MOV BL,11110110B
        MOV CX,2000D
        INT 10H

        MOV AH,02
        MOV DL,1D
        MOV DH,5D
        INT 10H



        MOV AH,09
        MOV AL,'*'
        MOV BH,00H
        MOV BL,11110110B
        MOV CX,79D
        INT 10H


        MOV AH,02
        MOV DL,20D
        MOV DH,7D
        INT 10H

        MOV AH,09
        MOV DX,OFFSET MSG1
        INT 21H

        MOV AH,02
        MOV DL,10D
        MOV DH,12D
        INT 10H

        MOV AH,09
        MOV DX,OFFSET MSG2
        INT 21H







        MOV AH,01
        INT 21H
        MOV AH,4CH
        INT 21H

        MAIN ENDP
        END MAIN
00000
