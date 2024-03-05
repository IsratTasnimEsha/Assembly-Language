.model small
.stack 100h

.data
a db 'enter fisrt digit : $'  
b db 10, 13, 'enter second digit : $' 
c db 10, 13, 'summation : $' 
d db 10, 13, 'subtraction : $'

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
     
    ;addition  
    
    ;add bl, bh  ;bl=bl+bh
    ;sub bl, 48
    
    ;mov ah, 2
    ;mov dl, bl
    ;int 21h   
    
    ;subtraction
    
    sub bl, bh  ;bl=bl-bh
    add bl, 48
    
    mov ah, 2
    mov dl, bl
    int 21h  
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main