
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

.model small
.stack 100h
.code 
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1;display
    int 21h
    mov bh,al
    
    mov ah,1
    mov ch,al
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    int 21h
    mov dl,ch
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main



