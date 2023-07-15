dosseg
.model small
.stack 100h
.data
    Num1 db 10 , 13 , 'Enter Your First Number : $'
	Num2 db 10 , 13 , 'Enter Your Second Number : $'
	Equal db 10 , 13 , 'The values are  Equal " .....YOU WIN..... " $'
	Note db 10 , 13 , 'The values are Not-Equal" .....YOU LOSE..... " $'
	Exitpro db 10, 13 , 'You have exit the program...$'
	
.code
	start:
	    mov ax,@data
		mov ds,ax
		
	    mov ah,09
		mov dx,offset Num1
		int 21h
		
		mov ah,01
		int 21h
		
		mov bl,al
		
		mov dx,10
		mov ah,02
		int 21h

		mov dx,13
		mov ah,02
		int 21h
		
		mov ah,09
		mov dx,offset Num2
		int 21h
			
		mov ah,01
		int 21h
		
		
		cmp al,bl
		
		je Numbers
		jne Alphabets
		
	    call Numbers 
		call Alphabets
		call exit
		
		mov ah,4ch
		int 21h
		
		Numbers proc
		
			mov ax,@data
			mov ds,ax
			
			mov ah,09
			mov dx,offset Equal
			int 21h
			
			mov dx,10
			mov ah,02
			int 21h

			mov dx,13
			mov ah,02
			int 21h
			
			mov cx,10
			mov dx,48
			
			L1:

			mov ah,02
			int 21h
			
			add dx, 1
			
			loop L1
			
			jmp exit
			
			ret
		Numbers endp
			
		Alphabets proc
		
			mov ax,@data
			mov ds,ax
			
			mov ah,09
			mov dx,offset Note
			int 21h
			
			mov dx,10
			mov ah,02
			int 21h

			mov dx,13
			mov ah,02
			int 21h
			
			mov cx,26
			mov dx,65
			
			L2:

			mov ah,02
			int 21h

			add dx, 1

			loop L2
			
			jmp exit
			
			ret
		Alphabets endp
			
		exit proc
		    mov ax,@data
			mov ds,ax
			
			mov ah,09
			mov dx,offset Exitpro
			int 21h
			
			mov ah,4ch
			int 21h
			
			ret
		exit endp
			
end start