;bismillahir rahmanir rahiim

mov cx, 4 

lea si,array1
lea di,array2

label1: 
    inc si
    inc si
    
    mov bl, [si]
    mov [di], bl 
    
    inc si
    inc di
    
    loop label1
ret

array1 db 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 
array2 db ?, ?, ?, ?