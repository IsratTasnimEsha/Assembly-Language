;bismillahir rahmanir rahiim

mov si, offset st
mov di, offset str
mov cl, len      

label1:
    mov bl, [si]
    cmp bl, ' '
    jne label2  
    
    label3:
        inc si
        loop label1
ret

label2:
   mov bl, [si]
   mov [di], bl 
   inc di
   jmp label3

st db 'we do not love kuet'  
len equ ($-st)   

str db dup(15)