.model small
.stack 100h
.data
.code
start:
mov cx,5
l1:
mov ah,2
mov dl,48
int 21h
mov bx,cx
mov cx,6
mov dl,'i'
l2:
mov ah,2
int 21h
loop l2
mov cx,bx
loop l1
mov ah,4ch
int 21h
end start
