.model small 
.stack 100h
.data 
text1 db 'hello$'
text2 db 5 dup('0$')
.code

begin:

mov ax,@data
mov ds,ax
mov es,ax

lea si,text1
lea di,text2
; copy text1 to text2
cld

mov cx,5

rep movsb



mov dx, offset text2
mov ah,09
int 21h

mov ah, 4ch 
int 21h 
end begin


