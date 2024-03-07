;bismillahir rahmanir rahiim

mov cx, len
mov si, offset st
mov bl, 0

label1:
    cmp [si], 48
    jge label2
    
    label4:
        inc si
        loop label1
ret               

label2:
    cmp [si], 57
    jle label3
    jmp label4

label3:
    add bl, 1
    jmp label4

st db 'g5ugh43 242fef ddf' 
len equ ($-st)