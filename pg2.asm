.model small
.stack 100h
.data
.code

start:
mov ah,0
mov al,04h
int 10h 

mov ah, 0bh
mov bh,00h
mov bl,3
int 10h 

mov ah,02
mov bh,0 
mov dh,0
mov dl,30
int 10h 

mov ah,9
mov al,'A'
mov bl,2
mov cx,5
int 10h

mov ah,4ch
int 21h
end start