.MODEL SMALL
.stack 100h
.DATA
.CODE
start:

repeat:
mov ah,01
int 21h
cmp al,'a'
jne repeat
mov ah,4ch
int 21h
end start
