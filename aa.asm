.model small
.386
.stack 100h
.data

name1 db "===== BRAND'S ELECTRONICS =====$"

wel db 10,10,13,"WELCOME TO BRAND'S ELECTRONICS $"

name2 db 10,10,13,"ENTER YOUR GOOD NAME SIR/MAM : $"

details db 10,10,13,"WHICH ITEM DO YOU WANT TO BUY $"


sib db 10,13,"1.MOBILE PHONE$"
sib1 db 10,13,"2.LAPTOP $"
ex db 10,13,"3.EXIT $"

cho db 10,10,13,"WHAT IS YOUR CHOICE ? $"

pr db 10,10,13,"==== WHICH BRAND MOBILE DO YOU WANT TO BUY ====$"

prsb db 10,10,13," 1.SAMSUNG $"
prsb1 db 10,10,13," 2.APPLE $"
prsb2 db 10,10,13," 3.XIAOMI $"

inv db 10,10,13,"INVALID INPUT $"


pr1 db 10,10,13,"==== WHICH BRAND LAPTOP DO YOU WANT TO BUY ====$"

prisb db 10,10,13," 1.HP $"
prisb1 db 10,10,13," 2.DELL $"
prisb2 db 10,10,13," 3.LENOVO $"


inv1 db 10,10,13,"INVALID INPUT $"




msg db 10,10,13,"1.SAMSUNG GALAXY NOTE S23 ULTRA $"
msg1 db 10,10,13,"2.SAMSUNG GALAXY A53 5G $"
msg2 db 10,10,13,"3.SAMSUNG GALAXY F14 $"
msg3 db 10,10,13,"4.SAMSUNG GALAXY A73 5G $"
msg4 db 10,10,13,"5.SAMSUNG GALAXY NOTE S22 $"

bmsg db 10,10,13,"1.YOU BOUGHT A SAMSUNG GALAXY NOTE S23 ULTRA WHICH PRICS IS 1200'$' $"
bmsg1 db 10,10,13,"2.YOU BOUGHT A SAMSUNG GALAXY A53 5G WHICH PRICS IS 437'$' $"
bmsg2 db 10,10,13,"3.YOU BOUGHT A SAMSUNG GALAXY F14 WHICH PRICS IS 175'$' $"
bmsg3 db 10,10,13,"4.YOU BOUGHT A SAMSUNG GALAXY A73 5G WHICH PRICS IS 440'$' $"
bmsg4 db 10,10,13,"5.YOU BOUGHT A SAMSUNG GALAXY NOTE S22 WHICH PRICS IS 1000'$' $"


imsg db 10,10,13,"1.IPHONE 14 PRO MAX $"
imsg1 db 10,10,13,"2.IPHONE 13 $"
imsg2 db 10,10,13,"3.IPHONE 12 PRO $"
imsg3 db 10,10,13,"4.IPHONE 11 PRO MAX $"
imsg4 db 10,10,13,"5.IPHONE XR $"

bimsg db 10,10,13,"1.YOU BOUGHT A IPHONE 14 PRO MAX WHICH PRICS IS 1200'$' $"
bimsg1 db 10,10,13,"2.YOU BOUGHT A IPHONE 13 WHICH PRICS IS 1100'$' $"
bimsg2 db 10,10,13,"3.YOU BOUGHT A IPHONE 12 PRO WHICH PRICS IS 1150'$' $"
bimsg3 db 10,10,13,"4.YOU BOUGHT A IPHONE 11 PRO MAX WHICH PRICS IS 900'$' $"
bimsg4 db 10,10,13,"5.YOU BOUGHT A IPHONE XR WHICH PRICS IS 800'$' $"

xmsg db 10,10,13,"1.REDMI NOTE 12T PRO $"
xmsg1 db 10,10,13,"2.XIAOMI MI 13 ULTRA $"
xmsg2 db 10,10,13,"3.XIAOMI POCO X5 $"
xmsg3 db 10,10,13,"4.REDMI K60 PRO $"
xmsg4 db 10,10,13,"5.XIAOMI 12S ULTRA $"

bxmsg db 10,10,13,"1.YOU BOUGHT A REDMI NOTE 12T PRO WHICH PRICS IS 608'$' $"
bxmsg1 db 10,10,13,"2.YOU BOUGHT A XIAOMI MI 13 ULTRA WHICH PRICS IS 870'$' $"
bxmsg2 db 10,10,13,"3.YOU BOUGHT A XIAOMI POCO X5  WHICH PRICS IS 230'$' $"
bxmsg3 db 10,10,13,"4.YOU BOUGHT A REDMI K60 PRO  WHICH PRICS IS 475'$' $"
bxmsg4 db 10,10,13,"5.YOU BOUGHT A XIAOMI 12S ULTRA WHICH PRICS IS 1029'$' $"

lap	db 10,10,13,"1.HP SPECTRE X360 16 $"
lap1 db 10,10,13,"2.HP OMEN 16 $"
lap2 db 10,10,13,"3.HP VICTUS $"
lap3 db 10,10,13,"4.HP PAVILLION TIGER LAKE $"
lap4 db 10,10,13,"5.HP ZBOOK 9750H $"

blap	db 10,10,13,"1.YOU BOUGHT A HP SPECTRE X360 16 WHICH PRICS IS 1699'$' $"
blap1 db 10,10,13,"2.YOU BOUGHT A HP OMEN 16 WHICH PRICS IS 1449'$' $"
blap2 db 10,10,13,"3.YOU BOUGHT A HP VICTUS WHICH PRICS IS 1149'$' $"
blap3 db 10,10,13,"4.YOU BOUGHT A HP PAVILLION TIGER LAKE WHICH PRICS IS 1899'$' $"
blap4 db 10,10,13,"5.YOU BOUGHT A HP ZBOOK 9750H WHICH PRICS IS 1499'$' $"

dlap db 10,10,13,"1.DELL INSPIRATION 5515 $"
dlap1 db 10,10,13,"2.DELL VOSTRO 3500 $"
dlap2 db 10,10,13,"3.DELL XPS 9300 $"
dlap3 db 10,10,13,"4.DELL LATITUDE 3520 $"
dlap4 db 10,10,13,"5.DELL GAMING G5 $"

bdlap db 10,10,13,"1.YOU BOUGHT A DELL INSPIRATION 5515 WHICH PRICS IS 1199'$' $"
bdlap1 db 10,10,13,"2.YOU BOUGHT A DELL VOSTRO 3500 WHICH PRICS IS 999'$' $"
bdlap2 db 10,10,13,"3.YOU BOUGHT A DELL XPS 9300 WHICH PRICS IS 1649'$' $"
bdlap3 db 10,10,13,"4.YOU BOUGHT A DELL LATITUDE 3520 WHICH PRICS IS 899'$' $"
bdlap4 db 10,10,13,"5.YOU BOUGHT A DELL GAMING G5 WHICH PRICS IS 1145'$' $"

lelap db 10,10,13,"1.LENOVO THINKPAD PLUS $"
lelap1 db 10,10,13,"2.LENOVO 16P GEN 2 $"
lelap2 db 10,10,13,"3.LENOVO 5G $"
lelap3 db 10,10,13,"4.LENOVO 5 PRO GEN 6"
lelap4 db 10,10,13,"5.LENOVO FLEX 5 $"

blelap db 10,10,13,"1.YOU BOUGHT A LENOVO THINKPAD PLUS WHICH PRICS IS 845'$' $"
blelap1 db 10,10,13,"2.YOU BOUGHT A LENOVO 16P GEN 2 WHICH PRICS IS 1255'$' $"
blelap2 db 10,10,13,"3.YOU BOUGHT A LENOVO 5G WHICH PRICS IS 1099'$' $"
blelap3 db 10,10,13,"4.YOU BOUGHT A LENOVO 5 PRO GEN 6 WHICH PRICS IS 1699'$' $"
blelap4 db 10,10,13,"5.YOU BOUGHT A LENOVO FLEX 5 WHICH PRICS IS 1199'$' $"

ill db 10,10,13,"WRONG INPUT $"
tnk db 10,10,13,"=== THANK YOU FOR SHOPPING  === $"

.code
start:
mov ax,@data 
mov ds,ax

mov ah ,0
mov al,04h
int 10h
	
mov ah ,0bh
mov bh,00h
mov bl,5
int 10h

call abd

mov ah,01
int 21h
cmp al,49
je abd1
cmp al,50
je ab
cmp al, 51
je abd2


prsib:
mov ah,09
mov dx,offset msg 
int 21h 

mov ah,09
mov dx,offset msg1 
int 21h 

mov ah,09
mov dx,offset msg2 
int 21h 

mov ah,09
mov dx,offset msg3 
int 21h 

mov ah,09
mov dx,offset msg4 
int 21h 

jmp exit

prsib1:

mov ah,09
mov dx,offset imsg 
int 21h 

mov ah,09
mov dx,offset imsg1 
int 21h 

mov ah,09
mov dx,offset imsg2 
int 21h 

mov ah,09
mov dx,offset imsg3 
int 21h 

mov ah,09
mov dx,offset imsg4 
int 21h 


jmp exit

prsib2:

mov ah,09
mov dx,offset xmsg 
int 21h 

mov ah,09
mov dx,offset xmsg1 
int 21h 

mov ah,09
mov dx,offset xmsg2 
int 21h 

mov ah,09
mov dx,offset xmsg3 
int 21h 

mov ah,09
mov dx,offset xmsg4 
int 21h 


jmp exit

prsibe:
mov ah,09
mov dx,offset lap 
int 21h 

mov ah,09
mov dx,offset lap1 
int 21h 

mov ah,09
mov dx,offset lap2 
int 21h 

mov ah,09
mov dx,offset lap3 
int 21h 

mov ah,09
mov dx,offset lap4 
int 21h 

jmp exit

prsibe1:

mov ah,09
mov dx,offset dlap 
int 21h 

mov ah,09
mov dx,offset dlap1 
int 21h 

mov ah,09
mov dx,offset dlap2 
int 21h 

mov ah,09
mov dx,offset dlap3 
int 21h 

mov ah,09
mov dx,offset dlap4 
int 21h 


jmp exit

prsibe2:

mov ah,09
mov dx,offset lelap 
int 21h 

mov ah,09
mov dx,offset lelap1 
int 21h 

mov ah,09
mov dx,offset lelap2 
int 21h 

mov ah,09
mov dx,offset lelap3 
int 21h 

mov ah,09
mov dx,offset lelap4 
int 21h 


jmp exit

   



abd proc 

mov ah,09
mov dx,offset name1
int 21h
	
mov ah,09
mov dx,offset wel
int 21h

mov ah,09
mov dx,offset name2
int 21h

mov ah,3fh
int 21h
	
mov ah,09
mov dx,offset details
int 21h

mov ah,09
mov dx,offset sib
int 21h

mov ah,09
mov dx,offset sib1
int 21h

mov ah,09
mov dx,offset ex
int 21h

mov ah,09
mov dx,offset cho
int 21h

ret
endp abd

abd1 proc 

mov ah,09
mov dx,offset pr
int 21h

mov ah,09
mov dx,offset prsb
int 21h

mov ah,09
mov dx,offset prsb1
int 21h

mov ah,09
mov dx,offset prsb2
int 21h


mov ah,01
int 21h

cmp al,49
je prsib

cmp al,50
je prsib1

cmp al,51
je prsib2



ret
endp abd1

ab proc 

mov ah,09
mov dx,offset pr1
int 21h

mov ah,09
mov dx,offset prisb
int 21h

mov ah,09
mov dx,offset prisb1
int 21h

mov ah,09
mov dx,offset prisb2
int 21h


mov ah,01
int 21h

cmp al,49
je prsibe

cmp al,50
je prsibe1

cmp al,51
je prsibe2



ret
endp ab

abd2 proc

jmp exit

endp abd2 


exit:

mov ah,09
mov dx,offset tnk
int 21h

mov ah,4ch
int 21h


end start