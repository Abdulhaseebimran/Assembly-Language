.model small 
.stack 100h

.data

    welcome db 10,13, "===============Simple calculator==============="
	msg1 db 10,13, "Enter first number: $"
    msg2 db 10,13, "Enter second number: $"
	msg3 db 10,13, "Enter any operators : (+,-,*,/)$"
    msg4 db 10,13, "Answer for addition is : $"
	msg5 db 10,13, "Answer for subtraction is : $"
	msg6 db 10,13, "Answer for multiplication is : $"
	msg7 db 10,13, "Answer for Division is : $"
	
.code 

start :

   mov ax, @data
   mov ds, ax
   
   lea dx, msg1
   mov ah, 9
   int 21h
   
   mov ah, 1
   int 21h
   sub al, 30h
   mov bl, al
   mov ax,0
   
   lea dx, msg2
   mov ah, 9
   int 21h
   
   mov ah, 1
   int 21h
   sub al, 30h
   mov bl , al
   mov ax, 0
   
   lea dx, msg3
   mov ah, 9
   int 21h
   
   mov dx, 0
   mov ah, 1
   int 21h
   mov dl,al
   mov ax, 0
   
   ; for comparing
   
   cmp dl, 2bh
   je addition
   
   cmp dl, 2dh
   je subtraction
   
   cmp dl, 2ah
   je multiply
   
   cmp dl, 25h
   je division
   
   addition: 
   lea dx, msg4
   mov ah, 9
   int 21h
   
   mov dx, 0
   mov ax, 0
   add bl, bh
   mov al, bl
   
   mov bx , 0
   mov bl, 10d
   div bl
   mov ch,al
   mov dl,cl
   add dl,30h
   mov ah,2
   int 21h
   
   mov dl, ch
   add dl, 30h
   mov ah, 2
   int 21h
   
   
   mov ah , 4ch
   int 21h
   
   subtraction:
   lea dx, msg5
   mov ah, 9
   int 21h
   
   mov dx, 0
   mov ax, 0
   sub bl bh
   mov dl, bl
   add dl, 30h
   mov ah,2
   int 21h
   
   jmp exit
   
   multiply:
   lea dx, msg6
   mov ah, 9
   int 21h
   
   mov dx,0
   mov ax, 0
   mov al, bl
   mul bh
   aam
   mov cl, al
   mov ch, ah
   
   mov dl, ch
   add dl, 30h
   mov ah,2
   int 21h
   
   mov dl, cl
   add dl,30h
   mov ah, 2
   int 21h
   
   jmp exit
   
   division:
   lea dx, msg7
   mov ah,9
   int 21h
   
   mov ax,0
   mov bx,0
   mov cx,0
   
   mov al, bl
   div bh
   mov cl,al
   mov dl,cl
   add dl, 30h
   mov ah,2
   int 21h
   
   jmp exit
   
   exit:
   mov ah, 4ch
   int 21h
   
   End start
   
	
	