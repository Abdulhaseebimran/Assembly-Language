; nested loop

.model small
.stack 100h
.data
.code
start:
 MOV CX,3 
 l1:
 mov ah,2
 mov dl,97
 int 21h

 mov bx,cx
 mov cx,3
 mov dl,48
 l2:
 mov ah,2
 int 21h

 inc dl
 loop l2
 mov cx,bx
 loop l1
 mov ah,4ch
 int 21h
 end start
