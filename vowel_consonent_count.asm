;bismillahir rahmanir rahiim

mov dl, 0 ;vowel=0
mov dh, 0 ;consonent=0

mov si, offset st
mov cl, len
label1:
    mov bl, cl
    
    mov di, offset vowel
    mov cl, 5
    label2:    
        mov bh, [si]
        cmp bh, [di]
        je c_vowel
        
        label3:
            inc di
            loop label2 
            
    mov di, offset consonent
    mov cl, 21
    label4:    
        mov bh, [si]
        cmp bh, [di]
        je c_consonent
        
        label5:
            inc di
            loop label4
    
    inc si
    mov cl, bl
    loop label1 

ret   

c_vowel:
    add dl, 1
    jmp label3 

c_consonent:
    add dh, 1
    jmp label5

st db 'israt tasnim esha'
len equ ($-st) 

vowel db 'aeiou'
consonent db 'bcdfghjklmnpqrstvwxyz'