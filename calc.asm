.model small
.stack 100h

.data
	welcome db 10,13, "===============Simple calculator==============="
    opt1 db 10,13, "Press 1 to add$"
	opt2 db 10,13, "Press 2 to subtract$"
	;opt3 db 10,13, "Press 3 to Multiply$"
	;opt4 db 10,13, "Press 4 to Division$"
	msg1 db 10,13, "Enter first number: $"
    msg2 db 10,13, "Enter second number: $"
    msg3 db 10,13, "Answer: $"

    num1 db ?
    num2 db ?
    res db ?

.code
    
	Start:
	
	Mov ax, @data
    Mov ds, ax

	Mov ah, 09
	Mov dx, offset welcome
	int 21h

	Mov ah, 09
	Mov dx, offset opt1
	int 21h

	Mov ah, 09
	Mov dx, offset opt2
	int 21h
    	
	Mov ah,02
	Mov dl,10
	int 21h

	Mov ah,02
	Mov dl,10
	int 21h

	Mov ah,01
	int 21h

	cmp al,49
	je addition
	
	
	cmp al,50
	je subtraction

	
	jmp exit
	
	addition:
	
	Mov ah,02
	Mov dl,10
	int 21h
	
	Mov ah, 09
    Mov dx, offset msg1
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num1, al

	Mov ah,09
	Mov dx, offset msg2
	int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num2, al

    Mov al, num1
    add al, num2
    Mov res, al

    Mov ah, 09
    Mov dx, offset msg3
    int 21h

    Mov al, res
    add al, '0'

    Mov ah, 02
	Mov dl,al
    int 21h

	jmp exit
	
	subtraction:
	
	Mov ah,02
	Mov dl,10
	int 21h
	
	Mov ah, 09
    Mov dx, offset msg1
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num1, al

	Mov ah,09
	Mov dx, offset msg2
	int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num2, al


    Mov al, num1
    sub al, num2
    Mov res, al

    Mov ah, 09
    Mov dx, offset msg3
    int 21h

    Mov al, res
    add al, '0'
    Mov ah, 02
	Mov dl,al
    int 21h

	jmp exit	
		
	exit:
	

    Mov ah, 4ch   ; Exit program
    int 21h

	End Start
