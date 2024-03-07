;bismillahir rahmanir rahiim

mov cl, len1
mov si, offset str1
mov di, offset str2

label1:
    mov bl, [si]
    mov bh, [di]
    cmp bl, bh
    je label2
    
    label3:
        inc si
        loop label1

ret  

label2:
    mov bl, ' '
    mov [si], bl  
    inc di
    jmp label3

str1 db 'we love kuet' 
len1 equ ($-str1)

str2 db 'eou'
len2 equ ($-str2)