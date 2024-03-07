;bismillahir rahmanir rahim

lea si, array

mov cx, 3

mov al, 121
mov bh, 10

label1:
    mov ah, 0
    div bh
    mov [si], ah

    inc si
    loop label1

dec si
mov bl, [si]   
dec si
dec si
mov bh, [si]

cmp bl, bh
je label2
mov dl, 0 ;if not palindrome, dl=0
ret      

label2:
    mov dl, 1 ;if palindrome, dl=1
    ret

array db 3 dup(0)