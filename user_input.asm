.model small
.stack 100h
.data
msg db 3 ;variable name, define byte , data initialize
msg1 db ? ;not initialize, so ?
.code
main proc
    mov ax, @data ;ax=data segment initialize korar jonno by default   
    mov ds, ax ;data segment initialize
        
    mov ah, 2
    add msg, 48
    mov dl, msg
    int 21h  
    
    mov ah, 1
    int 21h
    mov msg1, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, msg1
    int 21h
    
    
    exit:
    mov ah, 4ch  
    int 21h
    main endp
end main