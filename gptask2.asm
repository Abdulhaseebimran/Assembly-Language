.model small
.stack 100h
.data
.code

start:
mov ah,0
mov al,6
int 10h

mov ah,0ch
mov al,1
mov cx,75
mov dx,50
int 10h 

l1:
mov ah,0ch
inc cx
cmp cx, 180
jle l1

mov ah,0ch
mov al,1
mov cx,75
mov dx,80
int 10h 

l2:
mov ah,0ch
inc cx
cmp cx,180
jle l2

mov ah,0
int 16h

mov ah,0
mov al,3
int 10h
mov ah,4ch
int 21h
end start