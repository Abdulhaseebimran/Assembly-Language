; program to print single character in assembly
.model small  ;model directives
.stack 100h   ;stack segments
.data         ; Data Segments
; Variable Define Here...
.code         ; Code Segments  
    
    start:
    
        mov dl, "H"   
        mov ah, 02   
        int 21h

        ; for Closing programs 
        mov ah,4ch
        int 21h
    
    end start