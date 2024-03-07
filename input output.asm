;bismillahir rahmanir rahiim

;************character i/o************

;mov dl, 'a' ;dl e za thake ta print korbe
;mov ah, 2 ;print single character in console
;int 21h
;
;mov ah, 1 ;print single character from console
;int 21h                               
;mov bl, al ;input neyar shomoy console theke niye al e rakhe
                   
                   
;************string i/o************

;lea dx, str1
;mov ah, 9 ;output (offset dx) string with console
;int 21h

lea dx, str2
mov [str2], 5  ;size initialization
mov ah, 10  ;decimal tai 10
int 21h

ret

str1 db 'hello$' ;$ na dile endof string pabena  
str2 db 10 dup(0)