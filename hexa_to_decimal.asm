;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'enter a hex digit: $'
b db 'decimal: $' 
l db 10, 13, '$'   

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
    sub bl, 17
    
    mov ah, 9
    lea dx, l
    int 21h
    lea dx, b
    int 21h
    
    mov ah, 2
    mov dl, 49
    int 21h
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main