;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'ascii : $'   
l db 10, 13, '$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah, 9
    lea dx, l
    int 21h
    
    mov bl, 0
    mov bh, 0
    
    ascii:
    mov ah, 2
    mov dl, bl
    int 21h 
    inc bl  
    
    cmp bl, 255
    je exit
          
    inc bh
    cmp bh, 10
    je space
    
    loop ascii 
    
    space:
    mov ah, 9
    lea dx, l
    int 21h 
    mov bh, 0
    jmp ascii
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main