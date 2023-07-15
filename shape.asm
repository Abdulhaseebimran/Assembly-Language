;Program to make different shapes
dosseg
.model small
.stack 100h
.data
.code
main proc

mov al,0
mov ax,6
int 10h

mov ah,0ch
mov al,1
mov cx,60 ; For square
mov dx,40 
int 10h

L1:
int 10h
inc cx
cmp cx,120
int 10h
jle l1

mov ah,0ch
mov cx,60
mov dx,40
int 10h

l2:
int 10h
inc dx
cmp dx,80
jle l2

mov cx,60 ; column
mov dx,80 ; row
int 10h
l3:
int 10h
inc cx
cmp cx,120
jle l3

mov cx,120
mov dx,40
int 10h
l4:
int 10h
inc dx
cmp dx,80
jle l4

; rectangle
mov ah,0Ch 
mov cx,160
mov dx,40
int 10h
l5:           ;for rectangle
int 10h
inc dx
cmp dx,80
jle l5

mov cx,160
mov dx,40
int 10h
l6:
int 10h
inc cx
cmp cx,300
jle l6

mov cx,300
mov dx,40
int 10h
l7:
int 10h
inc dx
cmp dx,80
jle l7

mov cx,160
mov dx,80
int 10h
l8:
int 10h
inc cx
cmp cx,300
jle l8


mov cx,360
mov dx,40
int 10h
L9:            ;For triangle
int 10h
dec cx
cmp cx,320
inc dx
cmp dx,80
jle L9

mov cx,360
mov dx,40
int 10h
L10:
int 10h
inc cx 
cmp cx,400
inc dx
cmp dx,80
jle L10

mov cx,320
mov dx,80
int 10h
L11:
int 10h
inc cx 
cmp cx,400
jle L11

mov cx,450    ;For Hexagon
mov dx,40
int 10h
L12:
int 10h
inc cx
cmp cx,520
jle L12

mov cx,450
mov dx,40
int 10h
L13:
int 10h
dec cx
cmp cx,420
inc dx
cmp dx,60
jle L13


mov cx,430
mov dx,60
int 10h
L14:
int 10h
inc cx
cmp cx,450
inc dx
cmp dx,80
jle L14


mov cx,520
mov dx,40
int 10h
L15:
int 10h
inc cx
cmp cx,550
inc dx
cmp dx,60
jle L15

mov cx,540
mov dx,60
int 10h
L16:
int 10h
dec cx
cmp cx,515
inc dx
cmp dx,80
jle L16

mov cx,450
mov dx,80
int 10h
L17:
int 10h
inc cx
cmp cx,520
jle L17


mov cx,90      ;For kite
mov dx,100
int 10h
L18:
int 10h
dec cx
cmp cx,30
inc dx
cmp dx,130
jle L18


mov cx,60      
mov dx,130
int 10h
L19:
int 10h
inc cx
cmp cx,70
inc dx
cmp dx,160
jle L19

mov cx,90      
mov dx,100
int 10h
L20:
int 10h
inc cx
cmp cx,120
inc dx
cmp dx,130
jle L20

mov cx,120      
mov dx,130
int 10h
L21:
int 10h
dec cx
cmp cx,90
inc dx
cmp dx,160
jle L21


mov cx,210      ;For paralellogram
mov dx,100
int 10h
L22:
int 10h
inc cx
cmp cx,350

jle L22

mov cx,210      
mov dx,100
int 10h
L23:
int 10h
dec cx
cmp cx,160
inc dx
cmp dx,140

jle L23

mov cx,350      
mov dx,100
int 10h
L24:
int 10h
dec cx
cmp cx,300
inc dx
cmp dx,140
jle L24


mov cx,170      
mov dx,140
int 10h
L25:
int 10h
inc cx
cmp cx,310

jle L25











mov ah,0
int 16h

mov ax,3
int 10h

mov ah,4ch
int 21h

main endp
end main