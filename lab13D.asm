; macros

.model small
.stack 100h
.data 
.code

start:
; macros

newLine macro 
mov ah,02
mov dl,10
int 21h
endm newLine

mov ah,02
mov dl, 'A'
int 21h

newLine

mov ah,02
mov dl,'B'
int 21h

newLine

mov ah, 4ch
int 21h

end start