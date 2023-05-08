; program to add two number 

.model small
.stack 100h
.data
.code

start:

mov bl,2
mov cl,4
add bl,cl
add bl,48

mov dl,bl
mov ah,2
int 21h

mov ah,4ch 
int 21h

end start