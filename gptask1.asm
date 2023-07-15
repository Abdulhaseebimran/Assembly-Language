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
mov cx,100
mov dx ,120
int 10h 

l1:
int 10h
inc cx
cmp cx,300
jle l1

mov ah,0
int 16h

mov ah,0
mov al,3
int 10h

mov ah,4ch
int 21h
end start