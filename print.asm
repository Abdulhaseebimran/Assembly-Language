.model small
.stack 100h
.data
.code

   start:
     mov dl,"H"
	 mov ah, 2
	 int 21h
	 
	 mov dl, "A"
	 mov ah, 2
	 int 21h
	 
	 mov dl, "S"
	 mov ah, 2
	 int 21h
	 
	 mov dl, "E"
	 mov ah, 2
	 int 21h
	 
	 mov dl, "E"
	 mov ah, 2
	 int 21h
	 
	 mov dl, "B"
	 mov ah, 2
	 int 21h
	 
	 mov ah, 4ch
	 int 21h
	 
	 end start