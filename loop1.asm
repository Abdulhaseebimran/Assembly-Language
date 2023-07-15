.model small
.stack 100h
.data
.code

start:

mov cx, 26
mov dl, 97

l1:

mov ah,02
int 21h

inc dl
loop l1

mov ah, 4ch
int 21h

end start