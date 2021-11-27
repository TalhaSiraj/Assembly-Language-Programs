TITLE PQR

                                         linefeed macro x,y

MOV AH,02
MOV DL,c
MOV DH,d
INT 10H
END M

                                         starfeed macro x,y,z

MOV AH,09
MOV AL,c
MOV BH,00
MOV BL,d
MOV CX,f
INT 10H
END M


.MODEL SMALL
.STACK 100H
.DATA

                                        MSG DB "Wasiq Ali Khan 10736$"


.CODE

        MAIN PROC

        MOV AX,@DATA
        MOV DS,AX

       MOV AH,00
       MOV AL,03
       INT 10H

         LINEFEED 8,20

         starfeed 00101010B,'*',40

         linefeed 9,20


         starfeed 00101010B,'*',40


         linefeed 10,20


         starfeed 01110001B,'*',40

         linefeed 11,20


         starfeed 01110001B,'*',40


         linefeed 12,20


         starfeed 01110001B,'*',40




         linefeed 14,20


         starfeed 01110001B,'*',40
                                                                                                                                            
         linefeed 15,20


         starfeed 01110001B,'*',40

         linefeed 16,20


         starfeed 01110001B,'*',40


         linefeed 17,20


         starfeed 01110001B,'*',40



         linefeed 13,35

        MOV AH,09H
        MOV DX,OFFSET MSG
        INT 21H

         linefeed 13,20


         starfeed 01110001B,'*',15

         linefeed 13,46

         starfeed 01110001B,'*',14

         LINEFEED 18,20

         starfeed 00101010B,'*',40

         linefeed 19,20

         starfeed 00101010B,'*',40

        MOV AH,4CH
        INT 21H

        MAIN ENDP
        END MAIN


