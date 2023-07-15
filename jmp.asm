; Program to print the input number is equal or not to the given number in program

.model small
.stack 100h
.data 
msg1 db 'number is equal$'
msg2 db 'number is not equal$'
.code
start:

mov ax,@data
mov ds,ax

mov dl, 10
mov ah, 1
int 21h

cmp al,dl
je equal ; if equal then jmp to equal

; if not equal
mov dx,offset msg2
mov ah,2
int 21h

jmp exit ; jump to exit

equal:

mov dx,offset msg1
mov ah,2
int 21h

jmp exit  ; jump to exit

exit:
mov ah, 4ch
int 21h

end start