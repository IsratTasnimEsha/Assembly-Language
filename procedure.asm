;bismillahir rahmanir rahiim

.model small
.stack 100h                 

.data
a db 'enter 2 inputs: $', 10, 13
b db 10, 13, 'summation: $'
c db 10, 13, 'for xor: $'  
l db 10, 13, '$' 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    proc1 proc
        mov ah, 9
        lea dx, a
        int 21h 
        
        mov ah, 9
        lea dx, l
        int 21h
        
        mov ah, 1
        int 21h
        mov bl, al
        
        mov ah, 9
        lea dx, l
        int 21h
        
        mov ah, 1
        int 21h
        mov bh, al   
        
        call proc2
        
        ret
    
    proc2 proc
        mov ah, 9
        lea dx, b
        int 21h
                 
        add bl, bh
        sub bl, 48
        
        mov ah, 2
        mov dl, bl
        int 21h  
        
        ret    
    
    exit:
    mov ah, 4ch
    int 21h
    ;main endp
end main