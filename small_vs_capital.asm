;bismillahir rahmanir rahiim

mov cl, len
mov si, offset st

label1:   
    mov bl, [si]
    
    cmp bl, 'a'
    jge label2
    
    cmp bl, 'A'
    jge label5
    
    label3: 
        inc si
        loop label1
              
ret

label2:
    cmp bl, 'z'
    jle label4
    jne label3

label4:
    sub bl, 32
    mov [si], bl
    jmp label3 

label5:
    cmp bl, 'Z'
    jle label6
    jne label3 

label6:
    add bl, 32
    mov [si], bl
    jmp label3 

st db 'AbEfECBA12 $abC  A'
len equ ($-st)