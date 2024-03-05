;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data                
a db 'password? $'
b db 10, 13, 'correct password$'
c db 10, 13, 'incorrect password$'
l db 10, 13, '$' 

pass db 'esha1046$'  
pass1 dw 8

.code
main proc
    mov ax, @data
    mov ds, ax   
    
    mov cx, pass1
    mov bx, offset pass
    
    mov ah, 9
    lea dx, a
    int 21h
    
    level:
    mov ah, 8
    int 21h
    
    cmp al, [bx]
    jne incorrect
    
    inc bx
    loop level
    
    mov ah, 9
    lea dx, b
    int 21h
    jmp exit
    
    incorrect:
    mov ah, 9
    lea dx, c
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main      