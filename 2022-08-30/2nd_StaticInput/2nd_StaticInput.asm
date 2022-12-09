    
.MODEL small
.STACK 100h
.DATA
    
 
 .CODE
    main proc               
      mov dx, '0' ; input directly in dx , any other register 
      mov ah,2
      int 21h
            
        
        
        main endp
end main
    

