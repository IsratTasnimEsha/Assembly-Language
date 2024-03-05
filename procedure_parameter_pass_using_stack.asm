;bismillahir rahmaniir rahiim

data segment
    bcd dw 17h
    bin dw ?
data ends   

stack_seg segment stack
    dw 100 dup(0)
    top_stack label word
stack_seg ends

code segment
    assume cs:code, ds:data, ss:stack_seg 
    mov ax, data
    mov ds, ax
    mov ax, stack_seg
    mov ss, ax
    mov sp, offset top_stack 
    
    mov bx, bcd
    push bx
    call bcd_bin
    pop bx
    
    bcd_bin proc near  
        mov bp, sp
        mov dl, [bp+2]
        and dl, 0fh 
        
        mov al, [bp+2]  
        and al, 0f0h
        ror al, 4
        
        mov bl, 0ah
        mul bl
        
        add al, dl
     
code ends