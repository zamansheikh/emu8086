    
.MODEL small
.STACK 100h
.DATA
    
 
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
        
      ;2nd input   
        
        mov ah,1
        int 21h   
        mov cl,al  
        
         
      ; Output
         
        mov ah,2 
         
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        inc bl      ;Increment
        
        mov dl,bl 
        int 21h 
        
        mov dl,0ah 
        int 21h 
        mov dl,0dh
        int 21h
        
        dec cl      ;Decrement
        
        mov dl,cl
        int 21h 
     
        
        
        main endp
end main
    
