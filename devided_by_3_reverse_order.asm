;bismillahir rahmanir rahim
                
lea si, array1
mov cx, 9

label1:
    inc si
    inc si
    loop label1 

mov cx, 10
lea di, array2  

label2:   
    mov ax, [si] ;ax=[si]
    mov dx, 0
    mov bx, 3 ;bx=3
    div bx ;ax/bx
    
    cmp dx, 0
    je label3
    
    label4:
        dec si
        dec si
        
        loop label2   

ret

label3:
    mov bx, [si]
    mov [di], bx
    
    inc di
    inc di
    
    jmp label4             

array1 dw 1, 4, 3, 7, 9, 12, 16, 15, 13, 27
array2 dw 5 dup(0)