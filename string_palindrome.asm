;bismillahir rahmanir rahiim

mov cl, len
sub cl, 1
mov si, offset str1

label1: 
    inc si
    loop label1 

mov cl, len
mov di, offset str2
label2:
    mov bl, [si]
    mov [di], bl
    inc di
    dec si
    loop label2    

mov cl, len
mov si, offset str1  
mov di, offset str2
label3:
    mov bh, [si]
    cmp bh, [di]
    jne label4
    
    inc di
    inc si
    loop label3  

mov si, offset str3
    mov dx, 'p'
    mov [si], dl 
    inc si 
    inc si
    mov dx, 'a'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'l'
    mov [si], dl
    inc si
    inc si
    mov dx, 'i'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'n'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'd'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'r'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'o'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'm'
    mov [si], dl
    inc si
    inc si
    mov dx, 'e'
    mov [si], dl
    
ret 

label4:
    mov si, offset str3
    mov dx, 'n'
    mov [si], dl
    inc si  
    inc si
    mov dx, 'o'
    mov [si], dl  
    inc si  
    inc si
    mov dx, 't'
    mov [si], dl
    inc si 
    inc si
    mov dx, ' '
    mov [si], dl 
    inc si 
    inc si
    mov dx, 'p'
    mov [si], dl 
    inc si 
    inc si
    mov dx, 'a'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'l'
    mov [si], dl
    inc si
    inc si
    mov dx, 'i'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'n'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'd'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'r'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'o'
    mov [si], dl 
    inc si
    inc si
    mov dx, 'm'
    mov [si], dl
    inc si
    inc si
    mov dx, 'e'
    mov [si], dl

str1 db 'abcdefedcba' 
len equ ($-str1)

str2 db ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?

str3 dw 14 dup(0)