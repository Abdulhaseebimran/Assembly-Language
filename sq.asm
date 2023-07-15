dosseg
.model small
.stack 100h
.data
.code
main proc

    mov ax, 6
    int 10h          ; Set video mode to 640x480

    mov ah, 0Ch      ; Set pixel function
    mov al, 1        ; Set color (e.g., white)
    mov cx, 100      ; Set starting X position
    mov dx, 100      ; Set starting Y position

    draw_square:
        int 10h      ; Draw pixel at current position
        inc cx       ; Increment X position
        cmp cx, 200  ; Check if X position exceeds the square width
        jle draw_square

    mov ah, 0       ; Reset video mode
    int 16h

    mov ax, 4ch  ; Terminate program
    int 21h

main endp
end main
