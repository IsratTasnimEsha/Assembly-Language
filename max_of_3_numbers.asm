;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'num1 : $'   
b db 10, 13, 'num2 : $'  
c db 10, 13, 'num3 : $'
d db 10, 13, 'max num : $'
tmp db ?

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
    
    mov ah, 1
    int 21h
    mov cl, al 
    
    mov ah, 9
    lea dx, d
    int 21h  
    
    cmp bl, bh
    jge max_a
    jmp max_b
    
    max_a:
    cmp bl, cl
    js max_c
    mov ah, 2
    mov dl, bl
    int 21h
    jmp exit 
    
    max_b:
    cmp bh, cl
    js max_c
    mov ah, 2
    mov dl, bh
    int 21h
    jmp exit
    
    max_c:
    mov ah, 2
    mov dl, cl
    int 21h
    jmp exit
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main