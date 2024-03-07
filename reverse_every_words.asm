;bismillahir rahmanir rahiim

mov si, offset m_st 
mov cl, len 

label5:
    mov di, offset st
    mov bh, 0   

label1:  
    cmp [si], ' '
    je label2
    
    cmp [si], '.'
    je label2 
    
    mov bl, [si]
    mov [di], bl
    inc di
    inc bh
    
    inc si
    loop label1
ret
 
label2: 
    mov dl, cl
    
    mov cl, bh
    label3:
        dec si
        loop label3
    
    mov cl, bh 
    dec di
    label4:
        mov bl, [di]
        mov [si], bl
        inc si
        dec di
        loop label4
                                    
    inc si
    
    mov cl, dl     
    jmp label5

label6:
    ret
    
m_st db 'we do not love kuet.'  
len equ ($-m_st)   

st db 15 dup(0)  