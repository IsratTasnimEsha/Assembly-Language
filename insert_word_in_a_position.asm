;bismillahir rahmanir rahiim   

mov si, offset st  
mov di, offset str
mov cx, len 
mov dl, 0

label1:     
    mov bl, [si] 
    mov [di], bl  
    inc di
    
    cmp bl, ' '
    je label4
    
    label3:
        inc si
        loop label1

ret

label4: 
    inc dl
    cmp dl, 2
    je label2
    jne label3
    
label2:
    mov [di], 'l'
    inc di  
    
    mov [di], 'o'
    inc di
    
    mov [di], 'v'
    inc di
    
    mov [di], 'e'
    inc di
    
    mov [di], ' '
    inc di      
    
    jmp label3
    
st db 'we dont kuet'  
len equ ($-st)
str db ?