;bismillahir rahmanir rahiim

lea si, array
mov cx, 5 
mov bh, 0     

label1:
    mov bx, cx

    mov cx, 5  
    lea si, array
    label2:
        mov dl, [si]
        inc si 
        mov dh, [si]
        cmp dl, dh
        jl label3
        label4:
            loop label2
     
     mov cx, bx
     loop label1 

ret
     
     label3:
        mov bl, [si]
        mov [si], dl
        dec si
        mov [si], bl
        inc si
        jmp label4

array db 2, 40, 10, 7, 3, 9