.model small
.stack 100h
.data
.code

start:
; mode set
mov ax,6
int 10h

mov ah,0ch
mov al,1
mov cx,301
mov dx,100

l1:
int 10h 
inc cx
cmp cx,600
jne l1

mov ah,0 
int 16h

mov ax,3
int 10h

mov ah,4ch
int 21h

end start