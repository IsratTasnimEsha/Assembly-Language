;bismillahir rahmanir rahiim

call sort
ret 

sort proc
    mov cl, 4

    label1:
        mov dl, cl
        
        mov si, offset ar
        mov cl, 4
        label3:
            mov bl, [si] 
            inc si      
            mov bh, [si]
            
            cmp bl, bh
            jg swap 
        
            label4:
                dec si  
                inc si
                loop label3
        
        mov cl, dl
        loop label1
    ret     

swap:
    mov al, [si]
    mov [si], bl
    dec si
    mov [si], al 
    inc si
    jmp label4

ar db 3, 4, 2, 1, 5