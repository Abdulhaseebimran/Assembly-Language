.model small
.stack 100h
.data

var db "Enter your name$"
var2 db 10, "Enter your father's name$"
names db 20 dup("$")
father db 20 dup("$")
.code
start:

name1 macro
mov ah,02
mov dx,offset var
int 21h

mov ah,09
lea dx,names 
mov ah,3fh
int 21h

endm name1

name2 macro 
mov ah,02
mov dx, offset var2
int 21h

mov ah,09
mov dx, offset father
mov ah,3fh
int 21h

endm name2

mov ax,@data
mov ds,ax

name1
name2

mov ah,4ch
int 21h
end start