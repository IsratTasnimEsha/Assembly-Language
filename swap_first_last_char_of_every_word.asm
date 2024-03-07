mov ax,0
mov bx,0
mov cx,len 
mov dh,0
mov dl,0  
 
mov si, offset str
mov di, offset str 

inc cx
loop1:  
    cmp [si],' '
    je space 
    cmp cx,1
    je space
    here1:  
        inc si
        loop loop1
ret

space:  
    dec si
    mov dl,[si]
    mov dh,[di]
    mov [di],dl
    mov [si],dh
    inc si 
    mov di,si
    inc di
    jmp here1

str db 'we love kuet'  
len equ ($-str)