;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'num1 : $'   
b db 10, 13, 'num2 : $'
c db 10, 13, 'max num : $'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h 
    
    mov ah, 1
    int 21h
    mov bl, al 
    
    mov ah, 9
    lea dx, b
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov ah, 9
    lea dx, c
    int 21h  
    
    cmp bl, bh
    jg max_a
    jmp max_b
    
    max_a:
    mov ah, 2
    mov dl, bl
    int 21h
    jmp exit
    
    max_b:
    mov ah, 2
    mov dl, bh
    int 21h
    jmp exit
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main