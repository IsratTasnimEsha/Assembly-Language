;bismillahir rahmanir rahiim
 
mov si, offset str1
mov cl, len1 

label1:
    mov bh, cl
            
    mov bl, [si]
    mov di, offset str2
    mov cl, len2
    
    label3:
        cmp bl, [di]
        je label5
        
        label4:
            inc di
            loop label3
    
    label2:
        inc si
        mov cl, bh
        loop label1 
        
mov si, offset str1
mov di, offset str4
mov cl, len1

label6:
    mov bh, [si]
    cmp bh, '*'
    jne label7
    
    label8:
        inc si
        loop label6
        
mov si, offset str2 
mov cl, len2        

label_1:
    mov bh, cl
            
    mov bl, [si]
    mov di, offset str3
    mov cl, len1
    
    label_3:
        cmp bl, [di]
        je label_5
        
        label_4:
            inc di
            loop label_3
    
    label_2:
        inc si
        mov cl, bh
        loop label_1
        
mov si, offset str2
mov di, offset str4
mov cl, len2 
inc di

label_6:
    mov bh, [si]
    cmp bh, '*'
    jne label_7
    
    label_8:
        inc si
        loop label_6
           
ret         

label7:
    mov [di], bh
    inc di
    inc di
    jmp label8  
    
label_7:
    mov [di], bh
    inc di 
    inc di
    jmp label_8
    
label5:
    mov dh, '*'
    mov [si], dh
    jmp label4

label_5:
    mov dh, '*'
    mov [si], dh
    jmp label_4
    
str1 db 'computercq$'
len1 equ ($-str1)

str2 db 'engineering$'
len2 equ ($-str2)

str3 db 'computercq' 

str4 db 15 dup(0)