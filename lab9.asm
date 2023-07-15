.model small
.stack 100h
.data
var1 db 10,"OWAIS$"
var2 db 10,"OWAIS$"
m db 10,"MATCH $"
n db 10,"NOT MATCH$"
.code
start:
mov ax,@data
mov ds,ax
mov es,ax
lea si,var1
lea di,var2
cld
cmpsb
jz match
mov dx,offset n
 mov ah,09
 int 21h
 mov ah,4ch
 int 21h
 match:
mov dx,offset m
 mov ah,09
 int 21h
 mov ah,4ch
 int 21h
 end start
