; RCL, RCR

.model small
.stack 100h
.data
.code

start:
clc
mov bl,4
rcl bl,1
add bl,48
mov ah,02
mov dl,bl
int 21h


mov ah,4ch
int 21h

end start