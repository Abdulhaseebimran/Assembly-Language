;shr
.model small
.stack 100h
.data
.code

start:
mov dx,4
shr dx,1
add dx, 48
mov ah,2
int 21h

mov ah,4ch
int 21h
end start