.MODEL SMALL
.STACK 100H
.DATA
sms db 10,"GUESS THE NUMBER $"
abovems db 10,"YOU GUESS ABOVE GO LOW $"
lowms db 10, "YOU GUESS LOW GO ABOVE $"
foundms db 10,"YOU FIND IT CONGRTAS $" 
.CODE
start:
mov ax,@data
mov ds,ax

mov dx,offset sms
mov ah,09
int 21h 

 input:
 mov ah,01
 int 21h

cmp al,'5'; explain this line

jg above
jb below
je found

  above:
mov dx,offset abovems
  mov ah,09
  int 21h
jmp input   

  below:
mov dx,offset lowms
  mov ah,09
  int 21h
jmp input   

  found:
mov dx,offset foundms
  mov ah,09
  int 21h
  mov ah,4ch
  int 21h
 end start 
