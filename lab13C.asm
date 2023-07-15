; subroutine 
.model small
.stack 100h
.data
.code

start:
  mov al,49
  mov bl,50

  ; call the subroutine
  call display1
  call display2

  mov ah,4ch
  int 21h

  ; subroutine 

  display1 proc
  mov al, 50
  mov bl, 49

  ret
  display1 endp

  display2 proc
   mov ah, 2
   mov dl, al
   int 21h

   mov ah,02
   mov dl, bl
   int 21h

   ret
   display2 endp
   end start
