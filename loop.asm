.model small
.stack 100h
.data
.code
start:

mov cx,26 ; counter loop 26 times
mov dl,65 ; ascii value of a

l1:
mov ah,02
int 21h
inc dl
loop l1
mov ah,4ch
int 21h 

end start
