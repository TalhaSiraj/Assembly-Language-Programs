title  xyy
.model small
.stack 100h
.data
MSG DB 50

.code

        main proc

        MOV AX,@DATA
        MOV DS,AX

        MOV AH,0AH
        MOV DX,OFFSET MSG
        INT 21H

        MOV AH,02
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H

        MOV BX,OFFSET MSG+1
        MOV CL,[BX]
         DEC CX
         PUSH CX

         MOV BX,OFFSET MSG+1
LAB1:    INC BX
         LOOP LAB1
         POP CX
         MOV AH,02
LAB2:    MOV DL,[BX]
         INT 21H
         DEC BX
         LOOP LAB2






        mov ah,4ch
        int 21h

        main endp
        end main 

