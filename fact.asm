;bismillahir rahmanir rahiim

mov bx, 9
call fact

ret

fact proc near
    mov cx, bx
    mov ax, 1  
    mov dx, 1
    
    label1:
        mul cx
        loop label1    
     
    ret 