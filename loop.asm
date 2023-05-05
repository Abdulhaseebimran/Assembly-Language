; Program to print 0 to 9 using loops statement
.model small
.stack 100h
.data
.code

start:

mov cx , 10
mov dl,48

L1:

mov ah,2 
int 21h

add dx,1

; ; for print new line
 ;mov dl, 10
 ;mov ah,2
 ;int 21h

; mov dl, 13
; mov ah,2
; int 21h
loop L1

mov ah, 4ch
int 21h
end start