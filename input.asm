; program to take two number as input and add them

.model small
.stack 100h
.data
.code
start:

;for first input
mov ah,1
int 21h

;by default input value stor in al

mov bl,al ; store al value to bl

; for second input
mov ah,1
int 21h

add bl,al

; input1 = 1 --> 49
; input2 = 2 --> 50
; input me asm ascii ko consider kre ga tu answer 99 aajaye ga 
; answer = 99  

; answer ko set krne k liye hm isko 48 se subtract kra de ge
sub bl,48

mov dl,bl
mov ah,2
int 21h


; close the program
mov ah,4ch
int 21h
end start