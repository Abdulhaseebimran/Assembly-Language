;Program 1 : Compare two strings and display message  accordingly in Assembly Language.
.model small
.stack 100h 
.data 
msg1 db "This is 1st string$"
msg2  db "This is 2nd string$"

cmp1 db 'Both the strings are equal$'
cmp2 db 'both the strings are not equal$'
.code
start:
Mov ax,@data
Mov ds, ax

mov ah,09 
lea dx,msg1
int 21h

mov dl,10 ; new line
mov ah,02
int 21h 

mov ah,09
lea dx ,msg2
int 21h 

mov dl,10 ; new line
mov ah,02
int 21h

mov al, msg1
mov bl,msg2

cmp al,bl
je equal 
cmp al,bl
jne not_equal
not_equal:
mov ah,09 
lea dx,cmp2
int 21h

equal:
mov ah,09 
lea dx,cmp1
int 21h
mov ah,4ch
int 21h 

end start
