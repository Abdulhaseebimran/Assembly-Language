.model small
.stack 100h 
.code
start: 
mov ah,01
int 21h
cmp al,'Y'
je then 
cmp al, 'y'
je then 

then :
mov dl, al
mov ah ,02
int 21h 
jmp endif_

endif_:
mov ah,4ch 
int 21h 
end start
