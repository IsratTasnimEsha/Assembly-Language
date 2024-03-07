;bismillahir rahmanir rahim

lea si, array
mov cx, 3

mov ax, 378
mov bx, 10

label1: 
    mov dx, 0  
    div bx 
    
    mov [si], dx
    
    inc si
    inc si
    
    loop label1 
    
lea di, array       
mov cx, 3 
mov bx, 0

label2:  
    mov ax, 1
    mov dx, 0
    mul [di]
    mul [di]
    mul [di]
    
    add bx, ax
     
    inc di 
    inc di
    
    loop label2 

cmp bx, 378
je label3
mov ax, 0
ret
   
label3:
    mov ax, 1
    ret
    
array dw 3 dup(0)