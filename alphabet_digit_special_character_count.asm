;bismillahir rahmanir rahiim

mov cl, len
mov si, offset st 
mov dl, 0 ;alphabet
mov dh, 0 ;digit
mov al, 0 ;special

label1:
    mov bl, cl
    
    mov cl, len1
    mov di, offset alphabet
    label2:
        mov bh, [si]
        cmp bh, [di]
        je label3 
        inc di
        loop label2  
        
    mov cl, len2
    mov di, offset digit
    label6:
        mov bh, [si]
        cmp bh, [di]
        je label7 
        inc di
        loop label6  
        
    mov cl, len3
    mov di, offset special
    label8:
        mov bh, [si]
        cmp bh, [di]
        je label9 
        inc di
        loop label8
    
    label5:
        mov cl, bl
        inc si
        loop label1
    
ret  

label3:
    add dl, 1
    jmp label5

label7:
    add dh, 1
    jmp label5 

label9:
    add al, 1
    jmp label5   

st db 'ab%cd1234@xyz.com' 
len equ ($-st)         

alphabet db 'qwertyuiopasdfghjklzxcvbnm' 
len1 equ ($-alphabet)     

digit db '0123456789' 
len2 equ ($-digit)

special db ',./;[]\=-`!@#$%^&*()_+~{}|:"<>?'
len3 equ ($-special)