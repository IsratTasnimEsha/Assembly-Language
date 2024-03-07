;bismillahir rahmanir rahiim

mov ah, 10
lea dx, str1
mov str1, len
int 21h

lea si, str1 
mov cl, len

label1:
    mov bl, [si]
    push bx
    inc si   
    loop label1
 
lea si, str2
mov cl, len 

label2:
    pop bx
    mov [si], bl
    inc si  
    loop label2

mov ah, 2
mov dl, 10
int 21h
mov ah, 2
mov dl, 13
int 21h

lea si, str2
mov cl, len
dec cl
dec cl 

label3:
    mov ah, 2
    mov dl, [si]
    int 21h
    
    inc si
    loop label3   

ret  

str1 db 8 dup('$')
len equ ($-str1) 
str2 db len dup('$')

 
;str1 db 'esha90$' 
    
;mov ah, 9
;lea dx, str1
;int 21h 