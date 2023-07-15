; macros menu

.model small
.stack 100h
.data
var db "MENU$"
.code

start:

menu macro
mov ah,09
lea dx, var
mov ah, 3fh
int 21h

; print input
mov ah, 9
lea dx , var
int 21h
endm menu

mov ax,@data
mov ds, ax

menu
mov ah, 4ch
int 21h

end start