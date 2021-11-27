;#fasm#

;org  100h
 ;                a
;ret


gotoxy macro a,b,c,d,e
    mov ah,02
    mov dl,a
    mov dh,b
    int 10h 
    mov ah,09
    mov al,c
    mov bh,00h
    mov bl,e
    mov cx,d
    int 10h
endm 


.MODEL SMALL
.STACK 100H
.DATA
msg db "Name::: Syed Zaigham Ali$"
msg1 db "Reg#::: 12959$"

.CODE
MAIN PROC
MOV AX,@DATA
MOV DX,AX


gotoxy 0,0,' ',80d,10100001b
gotoxy 0,1,' ',80d,10100001b
gotoxy 0,2,' ',80d,10100001b
gotoxy 0,3,' ',80d,10100001b
gotoxy 0,4,' ',80d,10100001b
gotoxy 0,5,' ',80d,10100001b
gotoxy 0,6,' ',80d,10100001b
gotoxy 0,7,' ',80d,10100001b
gotoxy 0,8,' ',15d,10100001b
gotoxy 0,9,' ',15d,10100001b
gotoxy 0,10,' ',15d,10100001b
gotoxy 0,11,' ',15d,10100001b
gotoxy 0,12,' ',15d,10100001b
gotoxy 0,13,' ',15d,10100001b
gotoxy 0,14,' ',15d,10100001b
gotoxy 0,15,' ',15d,10100001b
gotoxy 0,16,' ',15d,10100001b
gotoxy 65,8,' ',15d,10100001b
gotoxy 65,9,' ',15d,10100001b
gotoxy 65,10,' ',15d,10100001b
gotoxy 65,11,' ',15d,10100001b
gotoxy 65,12,' ',15d,10100001b
gotoxy 65,13,' ',15d,10100001b
gotoxy 65,14,' ',15d,10100001b
gotoxy 65,15,' ',15d,10100001b
gotoxy 65,16,' ',15d,10100001b
gotoxy 0,17,' ',80d,10100001b
gotoxy 0,18,' ',80d,10100001b
gotoxy 0,19,' ',80d,10100001b
gotoxy 0,20,' ',80d,10100001b
gotoxy 0,21,' ',80d,10100001b
gotoxy 0,22,' ',80d,10100001b
gotoxy 0,23,' ',80d,10100001b
gotoxy 0,24,' ',80d,10100001b
gotoxy 15,8,'*',50d,01110100b 
gotoxy 15,9,'*',50d,01110100b
gotoxy 15,15,'*',50d,01110100b
gotoxy 15,16,'*',50d,01110100b
gotoxy 15,10,'*',2d,01110100b
gotoxy 15,11,'*',2d,01110100b
gotoxy 15,12,'*',2d,01110100b
gotoxy 15,13,'*',2d,01110100b
gotoxy 15,14,'*',2d,01110100b
gotoxy 63,10,'*',2d,01110100b
gotoxy 63,11,'*',2d,01110100b
gotoxy 63,12,'*',2d,01110100b
gotoxy 63,13,'*',2d,01110100b
gotoxy 63,14,'*',2d,01110100b
;gotoxy 48,16,'*',2d,01110100b
;gotoxy 15,16,'*',2d,01110100b
;gotoxy 20,12,' ',0d,10100001b
;gotoxy 0,0,' ',80d,10100001b
;gotoxy 

mov ah,02
mov dl,17
mov dh,12
int 10h

mov ah,09
mov dx,offset msg
int 21h

mov ah,02
mov dl,17
mov dh,13
int 10h

mov ah,09
mov dx,offset msg1
int 21h



mov ah,4ch
int 21h



