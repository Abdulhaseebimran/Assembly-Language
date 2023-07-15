.model small
.stack 100
.data
.code

start:
mov ax,49
mov bx, 50
mov cx, 51

push ax
push bx
push cx

mov cx ,3

move:
pop dx
mov ah,2
int 21h
loop move


mov ah, 4ch
int 21h

end start