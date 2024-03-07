;bismillahir rahmanir rahiim

mov cl, len
mov si, offset st 

label1:
     mov dl, cl
     
     mov bl, [si]
     sub bl, 63
     mov [si], bl
     
     mov cl, bl 
     mov di, offset str
     label3:
        inc di
        loop label3
     
     add [di], 1 
     mov bl, 0
     
     label2:      
        inc si
        mov cl, dl
        loop label1 
 
mov di, offset str
inc di
mov dh, [di]  
mov cx, 256     
mov bl, 0

label4: 
    cmp [si], dh 
    jg label6
    inc bl
    
    label5:
        inc si
        loop label4 

mov di, offset str2 
mov cl, 4
       
label7:
    inc di
    loop label7

;add dl, 63
;mov [di], dl
 
inc di
inc di  

add dh, 48
mov [di], dh
     
ret 

label6:          
    mov dh, [si]
       
    ;mov dl, bl
    jmp label5    

st db 'FFFFFBCDEFBE EEBCAA  DCA'
len equ ($-st)

str db 256 dup(0)
    
str2 db 'max  = '    ;parina
len2 equ ($-str2)