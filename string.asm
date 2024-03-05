.model small
.stack 100h
.data
m db 'israt esha $'
.code
main proc
    ;1 = single key input
    ;2 = single char output
    ;9 = char string output   
    
    mov ax, @data   
    mov ds, ax
    
    mov ah, 9
    lea dx, m ;lea=load effective address
    int 21h
    
    mov ah, 1
    int 21h
    mov bl ,al
    
    mov ah, 2 
    mov dl, 10
    int 21h
    mov dl, 13 
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h