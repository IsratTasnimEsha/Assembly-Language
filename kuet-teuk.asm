;bismillahir rahmanir rahiim
                 
mov cl, len1    
mov si, offset str1
mov dh, 0  

call search
ret 

search proc
    label1:
    mov dl, cl   
    
    mov cl, len2  
    mov di, offset str2
    label2:          
        mov bl, [si]
        mov bh, [di]
         
        cmp bh, bl
        je same  
        jne not_same
        
        label4:
            inc si
            inc di
            loop label2
    
    mov cl, len2
    label3:
        dec si
        loop label3
        
    label5:
        inc si
        mov cl, dl
        loop label1 
    
    ret          

same:
    inc dh
    cmp dh, len2
    je break
    jmp label4 
   
not_same:
    mov dh, 0
    jmp label4 
    
break: 
    mov al, len1
    sub al, dl    
    
    lea di, str3
    mov cl, len2
      
    label_1:   
       mov bl, [si]
       push bx
       pop bx
       mov [di], bl
       dec si 
       inc di
       loop label_1 
    
    lea di, str3
    mov cl, len2
    inc si
    
    label_2:
        mov bl, [di] 
        mov [si], bl
        inc di
        inc si
        loop label_2
    
    jmp label5   
ret

str1 db ' this is kuet kuetcse, kuet '
len1 equ ($-str1)

str2 db ' kuet '
len2 equ ($-str2)  

str3 db 6 dup(0)

;str3 db 10dup(0)