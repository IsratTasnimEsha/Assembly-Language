;bismillahir rahmanir rahiim

mov cx,len

lea si,str
lea di,si

label1:
    mov bl,[si]
    cmp bl,' '
    jne label2 
    
    label3:
        inc si
        loop label1  
        
ret

label2:
    mov [di], bl
    inc di
    jmp label3
 
str db "we love kuet"
len equ ($-str)