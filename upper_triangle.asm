;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data  

.code
main proc
    
    mov cx, 10 
    l1:
    
    mov bx, cx
    l2:
    mov ah, 2
    mov dl, '*'
    int 21h  
    loop l2
           
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
           
    mov cx, bx
    int 21h
    loop l1
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main



