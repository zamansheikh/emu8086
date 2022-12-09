include 'emu8086.inc'    
.MODEL small
.STACK 100h
.DATA
    
 
 .CODE
    main proc 
        
        ; Using new line (Two input)        
         
        print "First Input $"
        mov ah,1
        int 21h         
        mov bl,al
        
        ;newline
        mov ah,2  
        mov dl,0ah      
        int 21h
        mov dl,0dh     
        int 21h
        
      ;2nd input 
        print "Second Input $"  
        
        mov ah,1
        int 21h   
        mov cl,al  
   
      ; Output     
        
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
    
