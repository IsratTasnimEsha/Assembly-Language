mov al,0
mov bl,0           
mov cl,4
mov dl,0
lea di,arry

loop1:  
lea si,di
mov dl,cl

here:
    inc si; 
    mov al,[di]
    cmp [si],al
    jle levelOne
    jg  levelTwo
    
    levelOne: 
        mov bl,[si]
        mov [di],bl
        mov [si],al 
        
    levelTwo:
        dec dl
        cmp dl,0
        jg here
        inc di 
        loop loop1
    
ret
 
arry db 5,4,3,2,1