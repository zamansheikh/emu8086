 .MODEL small
.STACK 100h 
 .CODE
    main proc 
        mov ah,1
        int 21h         
        mov bl,al
        
        mov ah,2  
        mov dl,0ah 
        int 21h
        mov dl,0dh     
        int 21h
        
        mov ah,1
        int 21h   
        mov cl,al  
        
       ;xchng value
       xchg bl,cl  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
         
        mov dl,bl  
        int 21h 
     
        mov dl,0ah 
        int 21h 
        mov dl,0dh
        int 21h
        
        mov dl,cl
        int 21h 
        main endp
end main
    
