.model small
.stack 100h
.data
age db 10,"ENTER YOUR AGE $"
notvalid db 10,"YOU ARE NOT GO $"
valid db 10," YOU ARE  G0 $"
 .CODE
 start:
mov ax,@data
mov ds,ax
mov dx,offset age
 mov ah,09
 int 21h
 mov ah,01
 int 21h
 cmp al,'9'

je equal
jb notequal

  equal:
mov dx,offset valid
  mov ah,09
  int 21h
mov ah,4ch
int 21h

notequal:
mov dx,offset notvalid
mov ah,09
int 21h
mov ah,4ch
int 21h
end start
