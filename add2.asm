.model small

.data

 msg1 db 10,13,"Enter first no.$"
 msg2 db 10,13,"Enter second no.$"
 msg3 db 10,13,"Addition is:$"

 .code

  mov ax,@data
  mov ds,ax

  lea dx,msg1
  mov ah,09H
  int 21H

  mov ah,01H
  int 21H

  sub al,30H
  cmp al,09H
  JBE L1
  sub al,07H

 L1: mov cl,04H
     ROL al,cl
     mov bl,al

     mov ah,01H
     int 21H

     sub al,30H
     cmp al,09H
     JBE L2
     sub al,07H
  L2:ADD bl,al

  lea dx,msg2
  mov ah,09H
  int 21H

  mov ah,01H
  int 21H

   sub al,30H
   cmp al,09H
   JBE L3
   sub al,07H
 L3: mov cl,04H
     ROL al,cl
     mov bh,al

     mov ah,01H
     int 21H

     sub al,30H
     cmp al,09H
     JBE L4
     sub al,07H
  L4:ADD bh,al

     ADD bl,bh 

    lea dx,msg3
    mov ah,09H
    int 21H
    
    mov ch,02H
    mov cl,04H

 L5:ROL bl,cl
    mov bh,bl

    AND bl,0FH
    cmp bl,09H
    JBE L6
    ADD bl,07H
 L6:ADD bl,30H
    mov dl,bl

    mov ah,02H
    int 21H

    mov bl,bh
    dec ch
    JNZ L5

    mov ah,4ch
    int 21H
    end
