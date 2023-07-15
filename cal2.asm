.model small
.stack 100h

.data
    welcome db 10,13, "======================Simple calculator========================"
    opt1 db 10,13, "Press 1 for addition$"
    opt2 db 10,13, "Press 2 for subtraction$"
    opt3 db 10,13, "Press 3 for multiplication$"
    opt4 db 10,13, "Press 4 for division$"
    msg1 db 10,13, "Enter the first number: $"
    msg2 db 10,13, "Enter the second number: $"
    msg3 db 10,13, "Answer: $"

    num1 dw ?
    num2 dw ?
    res dw ?

.code
Addition PROC
    ; Perform addition
    Mov ah, 02
    Mov dl, 10
    int 21h

    Mov ah, 09
    Mov dx, offset msg1
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num1, ax

    Mov ah, 09
    Mov dx, offset msg2
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num2, ax

    Mov ax, num1
    add ax, num2
    Mov res, ax

    Mov ah, 09
    Mov dx, offset msg3
    int 21h

    Mov ax, res
    add ax, '0'

    Mov ah, 02
    Mov dl, al
    int 21h

    ret
Addition ENDP

Subtraction PROC
    ; Perform subtraction
    Mov ah, 02
    Mov dl, 10
    int 21h

    Mov ah, 09
    Mov dx, offset msg1
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num1, ax

    Mov ah, 09
    Mov dx, offset msg2
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num2, ax

    Mov ax, num1
    sub ax, num2
    Mov res, ax

    Mov ah, 09
    Mov dx, offset msg3
    int 21h

    Mov ax, res
    add ax, '0'
    Mov ah, 02
    Mov dl, al
    int 21h

    ret
Subtraction ENDP

Multiplication PROC
    ; Perform multiplication
    Mov ah, 02
    Mov dl, 10
    int 21h

    Mov ah, 09
    Mov dx, offset msg1
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num1, ax

    Mov ah, 09
    Mov dx, offset msg2
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num2, ax

    Mov ax, num1
    mul num2
    Mov res, ax

    Mov ah, 09
    Mov dx, offset msg3
    int 21h

    Mov ax, res
    add ax, '0'
    Mov ah, 02
    Mov dl, al
    int 21h

    ret
Multiplication ENDP

Division PROC
    ; Perform division
    Mov ah, 02
    Mov dl, 10
    int 21h

    Mov ah, 09
    Mov dx, offset msg1
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num1, ax

    Mov ah, 09
    Mov dx, offset msg2
    int 21h

    Mov ah, 01
    int 21h
    sub al, '0'
    Mov num2, ax

    Mov ax, num1
    xor dx, dx
    div num2
    Mov res, ax

    Mov ah, 09
    Mov dx, offset msg3
    int 21h

    Mov ax, res
    add ax, '0'
    Mov ah, 02
    Mov dl, al
    int 21h

    ret
Division ENDP

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

    Mov ah, 09
    Mov dx, offset opt3
    int 21h

    Mov ah, 09
    Mov dx, offset opt4
    int 21h

    Mov ah, 02
    Mov dl, 10
    int 21h

    Mov ah, 02
    Mov dl, 10
    int 21h

    Mov ah, 01
    int 21h

    cmp al, 49
    je additions

    cmp al, 50
    je subtractions

    cmp al, 51
    je multiplications

    cmp al, 52
    je divisions

exit:
    Mov ah, 4ch
    int 21h

additions:
    ; Call addition function
    call Addition

    jmp exit

subtractions:
    ; Call subtraction function
    call Subtraction

    jmp exit

multiplications:
    ; Call multiplication function
    call Multiplication

    jmp exit

divisions:
    ; Call division function
    call Division

    jmp exit

END Start
