.model small
.stack 100h
.data 
      String1 db "Hello World$"

.code
main proc 
    
    mov ax,@data
    mov ds, ax
    
    lea bx, String1
    
    mov ah,9
    mov dx, bx
    int 21h
    
    
    main endp

end main