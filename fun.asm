; write the program of function

.model small
.stack 100h
.data
    a db 10
    b db 20
    c db 30
    d db 40

.code 
   start:

   mov ax, @data
   mov ds, ax

    mov al, a
    mov bl, b
    mov cl, c

    call max
    call min

    mov ax, 4ch
    int 21h

    max proc
        cmp al, bl
        jg max1
        cmp al, cl
        jg max2
        cmp al, dl
        jg max3
        max1:
            mov ah, 09h
            mov dx, offset a
            int 21h
            ret
        max2:
            mov ah, 09h
            mov dx, offset b
            int 21h
            ret
        max3:
            mov ah, 09h
            mov dx, offset c
            int 21h
            ret
        max endp

    min proc 
       cmp al, bl
       jl min1
         cmp al, cl
         jl min2
         cmp al, dl
         jl min3
      min1:
        mov ah, 09h
        mov dx, offset a
        int 21h
        ret
       min2:
        mov ah, 09h
        mov dx, offset b
        int 21h
        ret
        min3:
        mov ah, 09h
        mov dx, offset c 
        int 21h
        ret
    min endp

    end start