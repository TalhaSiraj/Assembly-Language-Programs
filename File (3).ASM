TITLE	XYZ			(XYZ.asm)

GOTOXY	macro C,R
MOV	AH,02
MOV	DL,R
MOV	DH,C
INT	10H
Endm

LINES	MACRO A,B
MOV	AH,0A
MOV	AL,A
MOV	BH,00
MOV	CX,B
INT	10H
Endm



.MODEL SMALL
.STACK	100H
.Data
MSG	DB "CURSOR$"
MSG1	DB "GET CURSOR$"
MSG2	DB "READ CHARACTER AND ATTRIBUTES$"
MSG3	DB "WRITE CHARACTER$"
MSG4	DB "GET VIDEO MODE$"
MSG5	DB "LOAD DEFAULT ROM FONTS $"
MSG6	DB "25 LINES$"
MSG7	DB "28 LINES$"
MSG8	DB "50 LINES$"
.CODE
        MAIN PROC

MOV     AX,@data
MOV	DS,AX

GOTOXY	1,1
MOV	AH,09H
MOV	DX,OFFSET MSG
int	21H

MOV     AH,01
MOV     CH,02
MOV     CL,05
INT	10H

MOV AH,01
INT 21H


GOTOXY	2,1
MOV	AH,09H
MOV	DX,OFFSET MSG1
int	21H

MOV     AH,03
MOV     BH,00
INT	10H
Endm

MOV AH,01
INT 21H

GOTOXY 5,5

MOV	AH,09H
MOV	DX,OFFSET MSG2
int	21H

MOV     AH,08
MOV     BH,00
INT	10H

MOV AH,01
INT 21H

GOTOXY 6,6

MOV	AH,09H
MOV	DX,OFFSET MSG3
int	21H

MOV AH,01
INT 21H


GOTOXY	0,0
LINES	'*',80
GOTOXY	1,0
LINES	'*',80
GOTOXY	2,0
LINES	'*',80
GOTOXY	3,0
LINES	'*',80
GOTOXY	4,0
LINES	'*',80
GOTOXY	5,0
LINES	'*',80
GOTOXY	6,0
LINES	'*',80
GOTOXY	7,0
LINES	'*',80
GOTOXY	8,0
LINES	'*',80
GOTOXY	9,0
LINES	'*',80
GOTOXY	10,0
LINES	'*',80
GOTOXY	11,0
LINES	'*',80
GOTOXY	12,0
LINES	'*',80

MOV	AH,01
INT	21H

GOTOXY 13,1

MOV	AH,09H
MOV	DX,OFFSET MSG4
int	21H

MOV	AH,0FH
INT 	10H


MOV	AH,01
INT	21H

GOTOXY 14,1

MOV	AH,09H
MOV	DX,OFFSET MSG5
int	21H

MOV	AH,00
MOV	AL,03
INT	10H

MOV	AH,09H
MOV	DX,OFFSET MSG6
int	21H


MOV	AH,11H
MOV	AL,14H
MOV	BL,0
INT	10H

MOV	AH,09H
MOV	DX,OFFSET MSG7
int	21H


MOV	AH,01
INT	21H

MOV	AH,11H
MOV	AL,11H
MOV	BL,0
INT	10H

MOV	AH,09H
MOV	DX,OFFSET MSG8
int	21H


MOV	AH,01
INT	21H

MOV	AH,11H
MOV	AL,12H
MOV	BL,0
INT	10H

MOV	AH,01
INT	21H
main endp
end main
