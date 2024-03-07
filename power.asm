;Bismillahir Rahmain Rahiim

lea si, array 

mov cl, 4

label1:
mov dh, cl

mov dl, 5
sub dl, cl

mov ax, 1
mov cl, dl

label2:
mul [si] 
loop label2

mov bx, ax 

inc si

mov cl, dh
loop label1

array db 2, 3, 5, 7