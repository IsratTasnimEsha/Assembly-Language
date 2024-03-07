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
    sub al, dl ;hex
    
    mov si, offset str2
    mov cl, len2
    mov di, offset str4
    label5:
        mov bl, [si]
        mov [di], bl 
        inc si
        inc di
        loop label5 
        
    mov si, offset str3
    mov cl, len3
    
    label6:
        mov bl, [si]
        mov [di], bl 
        inc si
        inc di
        loop label6
    
    add al, 48   
    mov [di], al
    
    ret

str1 db 'this is cse, kuet'
len1 equ ($-str1)

str2 db 'cse'
len2 equ ($-str2)  

str3 db ' found at index '
len3 equ ($-str3)

str4 db 30 dup(0)