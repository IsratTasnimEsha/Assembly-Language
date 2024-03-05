.model small ;there are code segment and data segment
.stack 100h ;memory size
.code ;code segment
    
main proc ;procedure 
    
    mov ah, 1 ;integer type data ke input hishebe ney
    int 21h ;etake call korte interruptor 21h likhte hobe
    mov bl, al ;by default shob data al register er vetor thake
               ;al register er datagula bl register e rakhchi
               ;bl register er maddhome first ekta input ke nicchi  
               
    ;printing the data of first register
    mov ah, 2 ;display korar jonno 2 use kora hoy
    mov dl, bl ;display korar jonno dl register use kora hoy
               ;bl register er data dl e ache
               ;dl er maddhome etake print korbe
    int 21h ;call kore execute kore debe   
           
    mov ah, 1
    int 21h
    mov bh, al
    
    ;printing the data of second register
    mov ah, 2
    mov dl, bh
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main