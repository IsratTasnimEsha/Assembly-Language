;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data  
a db 10, 13, '$'
b equ '2'
c equ 'computer science and engineering $'  
d db c ;string er jonno memory te zayga rakhte hoy

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    ;mov bl, al
    mov bl, b ;input bl e zabena. a er value zabe  
    
    mov ah, 9
    lea dx, a
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, a
    int 21h
    lea dx, d
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main