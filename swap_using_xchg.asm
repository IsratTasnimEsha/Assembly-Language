;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data  

.code
main proc
    ;input: esha
    ;output: ahse
    
    mov bl, 'e'
    mov bh, 's'
    mov cl, 'h'
    mov ch, 'a'
    
    xchg bl, ch
    xchg bh, cl
    
    mov ah, 2
    mov dl, bl
    int 21h  
    mov dl, bh
    int 21h
    mov dl, cl
    int 21h
    mov dl, ch
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main