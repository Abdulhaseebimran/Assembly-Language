; program to print two string on different lines
.model small
.stack 100h
.data
msg1 db "Hello$"
msg2 db "World$"
.code

start:
mov ax,@data
mov ds,ax

mov dx, offset msg1
mov ah,9
int 21h

; new line = 10
; carriage return = 13

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

mov dx, offset msg2
mov ah,9
int 21h


mov ah, 4ch
int 21h

end start