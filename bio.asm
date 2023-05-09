.model small
.stack 100h
.data
 bio db 09,09,09,09,"BIO DATA$"
 line db 10, "===========================================================================$"
 names db 10, "Name: $"
 fname db 10, "Father Name: $"
 cnic db 10, "CNIC: $"
 rollno db 10, "Roll no: $"
 subject db 10, "Subject: $"

.code

Start:
 mov ax, @data
 mov ds,ax

 mov ah,09
 mov dx,offset bio
 int 21h

 mov ah,09
 mov dx,offset line
 int 21h

 mov ah, 09
 mov dx,offset names
 int 21h
 mov ah,3fh
 int 21h

 mov ah,09
 mov dx,offset fname
 int 21h
 mov ah,3fh
 int 21h

 mov ah,09
 mov dx,offset cnic
 int 21h
 mov ah,3fh
 int 21h

 mov ah,09
 mov dx,offset rollno
 int 21h
 mov ah,3fh
 int 21h

 mov ah,09
 mov dx,offset subject
 int 21h
 mov ah,3fh
 int 21h

 mov ah,4ch
 int 21h
end Start