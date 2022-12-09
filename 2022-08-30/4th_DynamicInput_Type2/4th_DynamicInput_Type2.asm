    
.MODEL small
.STACK 100h
    
 
 .CODE
    main proc 
      
      ;1st input
        mov ah,1
        int 21h         
        mov bl,al
        
      ;2nd input   
        
        mov ah,1
        int 21h   
        mov cl,al  
        
      ; Output
       
        mov ah,2
        mov dl,bl
        int 21h 
        mov dl,cl
        int 21h
           
        
        main endp
end main
    

