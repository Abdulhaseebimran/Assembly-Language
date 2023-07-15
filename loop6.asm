;Program to print name 10 times

.model small
.stack 100h
.data

name1 db 10, "HASEEB$"
.code

start:
mov ax, @data
mov dx, ax

mov cx,10
l1:
lea dx, name1
mov ah, 9
int 21h
inc cx
loop l1

mov ah,4ch
int 21h

end start