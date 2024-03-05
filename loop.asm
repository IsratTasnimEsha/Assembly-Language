;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'CSE$'
b db '*'
c db '?$'  
d db ?
l db 10, 13, '$'   

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, c
    int 21h
    lea dx, a
    int 21h
    lea dx, l
    int 21h    
    
    mov bl, 0
    line:
    
    mov cx, 11
    star:
    mov ah, 2
    mov dl, b
    int 21h
    loop star
    
    mov ah, 9
    lea dx, l
    int 21h  
    
    inc bl 
    
    cmp bl, 13
    je exit
    
    cmp bl, 6
    je cse
    
    
    loop line
    
    cse:   
    mov ah, 9
    lea dx, a
    int 21h
    lea dx, l
    int 21h
    mov bl, 7
    jmp line
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main