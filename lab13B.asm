.model small
.stack 100
.data
var db "Hello World$" ; reverse string using stack
.code

start:
mov ax, @data
mov ds, ax

lea si, var
mov cx,11
l1:
mov bx,[si]
push bx
inc si
loop l1
mov cx , 11
l2:
pop dx
mov ah,02
int 21h
loop l2


mov ah, 4ch
int 21h

end start