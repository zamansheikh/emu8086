.model small
.stack 100h
.data
    a db "A String !$"
    b db "Another String !$"
    
.code
main proc
    mov ax,@data
    mov ds,ax   
    
    lea bx,a
    lea cx,b 
        
    mov ah,9
    mov dx,bx 
    int 21h 
    
    ;newline for better view
    mov ah,2  
    mov dl,0ah 
    int 21h
    mov dl,0dh  
    int 21h
     
    mov ah,9 
    mov dx,cx
    int 21h
    
    
    main endp
end main