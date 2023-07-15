.model small
.stack 100h
.data
.code

start:

mov cx ,26
mov dl, 90

l1:

mov ah, 2
int 21h

dec dl
loop l1

mov ah,4ch
int 21h

end start