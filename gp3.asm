.model small
.stack 100h
.data
.code

start:
mov ah,0
mov al,13h
int 10h 

mov ah,0ch
mov al,0
mov bh,0
mov cx,0
mov dx,100h

l1:
int 10h 
inc al
cmp cx , 256
jle l1



mov ah,4ch
int 21h

end start