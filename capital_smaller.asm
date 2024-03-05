;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'capital letter : $'   
b db 10, 13, 'capital to smaller : $'
c db 10, 13, 'smaller letter : $'
d db 10, 13, 'smaller to capital : $'

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
    
    mov ah, 2
    add bl, 32
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, c
    int 21h 
    
    mov ah, 1
    int 21h
    mov bl, al 
    
    mov ah, 9
    lea dx, d
    int 21h
    
    mov ah, 2
    sub bl, 32
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main