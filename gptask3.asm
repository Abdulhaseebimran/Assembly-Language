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
mov dx,80

l1:
int 10h 
inc Dx
cmp Dx,200
jle l1

mov ah,0ch
mov al,1
mov cx,200
mov dx,80

l2:
int 10h 
inc Dx
cmp Dx,200
jle l2

mov ah,0ch
mov al,1
mov cx,100
mov dx,80
l3:
int 10h 
inc Cx
cmp Cx,200
jle l3

mov ah,0ch
mov al,1
mov cx,100
mov dx,200

l4:
int 10h 
inc Cx
cmp Cx,200
jle l4

mov ah,0
int 16h
mov ah,0
mov al,3
int 10h

mov ah,4ch
int 21h
end start