;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'num1 : $'   
b db 10, 13, 'num2 : $'
c db 10, 13, 'num3 : $'
d db 10, 13, 'summation : $'
result db ?

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
    
    add bl, bh
    sub bl, 48 
    
    add bl, cl
    sub bl, 48  
    mov result, bl 
    
    mov ah, 2
    mov dl, result
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main