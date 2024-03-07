;bismillahir rahmanir rahiim 

lea si, str1
mov cl, 3
mov dx, 0

mov al, 1
mov bl, [si]
sub bl, 48
mul bl
mov bh, 100
mul bh
add dx, ax
inc si

mov al, 1
mov bl, [si]
sub bl, 48
mul bl
mov bh, 10
mul bh
add dx, ax
inc si

mov al, 1
mov bl, [si]
sub bl, 48
mul bl
add dx, ax
 
mov bl, dh  
mov bh, 0
push bx

mov al, dl
mov bl, 10h
div bl
mov bl, al
mov bh, 0
push bx

mov bl, ah
mov bh, 0
push bx
 
lea si, str2 
pop bx 
mov [si], bl
inc si

pop bx
mov [si], bl
inc si

pop bx
mov [si], bl

ret

str1 db '999'
str2 db 3 dup(0)