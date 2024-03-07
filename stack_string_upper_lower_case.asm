;bismillahir rahmanir rahiim

mov ah, 10
lea dx, str1
mov str1, len
int 21h

lea si, str1 
mov cl, len

label1:
    mov bl, [si]
    push bx
    inc si   
    loop label1
 
lea si, str2
mov cl, len 

label2:
    pop bx 
    
    cmp bl, 32
    je to_space
    
    label_5:
    
        cmp bl, 48
        jge to_digit
    
        label5:
            cmp bl, 65
            jge to_smaller 
        
            label6:
                cmp bl, 97
                jge to_capital 
            
                label4:
                    mov [si], dl
                    inc si  
                    loop label2

mov ah, 2
mov dl, 10
int 21h                          
mov ah, 2
mov dl, 13
int 21h

lea si, str2
mov cl, len
dec cl
dec cl 

label3:
    mov ah, 2
    mov dl, [si]
    int 21h
    
    inc si
    loop label3   

ret 

to_space:
    mov dl, bl
    jmp label_5  

to_digit:   
    mov dl, bl
    cmp bl, 58
    jge label5
    jmp label4
    
to_smaller:
    mov dl, bl
    add dl, 32
    cmp bl, 91
    jge label6
    jmp label4

to_capital: 
    mov dl, bl
    sub dl, 32 
    cmp bl, 123
    jge label4
    jmp label4  

str1 db 18 dup('$')
len equ ($-str1) 
str2 db len dup('$')