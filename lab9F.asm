;Create program using stosb store al data on 2nd location.
.model small 
.stack 100h
.data 
var db "hello$"
.code
start:
mov ax,@data
mov es,ax
mov ds,ax

lea di, var + 2
mov al,'A'
cld 
stosb
mov ah,09
mov dx,offset var
int 21h 

mov ah,4ch 
int 21h 
end start
