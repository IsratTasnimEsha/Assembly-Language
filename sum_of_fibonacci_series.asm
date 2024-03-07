;bismillahir rahmain rahiim

lea si, array 
mov dl, 0

mov [si], 1 
mov bl, [si]
inc si  

mov [si], 1
add bh, [si]
inc si

mov cx, 3

label1:
    
    add bl, bh
    inc si    
    
    mov [si], bl
    mov bl, bh
    mov bh, [si]
    
    loop label1 
 
lea di, array
mov cx, 6
mov dl, 0
label2:
    add dl, [di] 
    inc di
    loop label2
ret
    
array db 12 dup(0)