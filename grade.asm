mov bx, 86

cmp bx, 80
js a
mov ah, 2
mov dx, 'A+'
int 21h
ret

a:
cmp bx, 70
js aMinus
mov ah, 2
mov dx, 'A'
int 21h
ret

aMinus:
cmp bx, 60
js b
mov ah, 2
mov dx, 'A-'
int 21h
ret  

b:
cmp bx, 50
js c
mov ah, 2
mov dx, 'B'
int 21h
ret 

c:
cmp bx, 40
js d
mov ah, 2
mov dx, 'C'
int 21h
ret  

d:
cmp bx, 33
js e
mov ah, 2
mov dl, 'D'
int 21h
ret  

e:
mov ah, 2
mov dl, 'F'
int 21h
ret