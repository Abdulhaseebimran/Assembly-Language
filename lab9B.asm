.model small
.stack 100h
.data
str1 db "important equation$"
fmsg db 10,"FOUND $"
ntmsg db 10,"NOT FOUND $"
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
mov cx,100
cld
lea di,str1
mov al,'e'
repne scasb
je found 
mov dx,offset ntmsg
mov ah,09
int 21h
mov ah,4ch
int 21h
found:
mov dx,offset fmsg
mov ah,09
int 21h
mov ah,4ch
int 21h
end start
