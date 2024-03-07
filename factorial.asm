;Bismillahir Rahmanir Rahiim

lea si, array1 
lea di, array2

mov cx, 3

label2:
mov bx, cx

mov cl, [si] 
mov ax, 1

label1:
mul cx
loop label1

mov [di], ax
mov dx, [di]

inc di
inc si     

mov cx, bx
loop label2

array1 db 2, 3, 6
array2 dw 3 dup(0)