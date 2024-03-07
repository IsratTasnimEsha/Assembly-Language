;bismillahir rahmanir rahiim


mov ax, 8
mov bl, 2
    
div bl 
cmp ah, 0
je even
jmp odd

even:
mov ah, 2
mov dl, 'E'
int 21h
ret

odd:
mov ah, 2
mov dl, 'O'
int 21h
ret    