.model small
.stack 100h
.data
.code

start:
 mov ah,0
 mov al,04h
 int 10h
 
 mov ah,0bh
 mov bh,00h
 mov bl,3
 int 10h
 
 mov ah,02
 mov bh,0
 mov dh,0
 mov dl,30
 int 10h
 
 mov ah,09
 mov al,"A"
 mov bl,2
 mov cx,1
 int 10h
 
  mov ah,02
 mov bh,0
 mov dh,0
 mov dl,31
 int 10h
 
 mov ah,09
 mov al,"B"
 mov bl,2
 mov cx,1
 int 10h
 
  mov ah,02
 mov bh,0
 mov dh,0
 mov dl,32
 int 10h
 
 mov ah,09
 mov al,"D"
 mov bl,2
 mov cx,1
 int 10h
 
  mov ah,02
 mov bh,0
 mov dh,0
 mov dl,33
 int 10h
 
 mov ah,09
 mov al,"U"
 mov bl,2
 mov cx,1
 int 10h
 
  mov ah,02
 mov bh,0
 mov dh,0
 mov dl,34
 int 10h
 
 mov ah,09
 mov al,"L"
 mov bl,2
 mov cx,1
 int 10h
 
 mov ah,4ch
 int 21h
 
 
end start