.model small
.stack 100h
.data

string1 db "HASEEB$"
string2 db 6 dup('$')

.code

start:

mov ax, @data
mov ds,ax
mov es, ax

lea si, string1 + 5 ; reverse string1
lea di, string2

mov cx, 6

std
;rep movsb

move:
movsb
add di,2
loop move

lea dx, string2
mov ah,9
int 21h

mov ah,4ch
int 21h

end start