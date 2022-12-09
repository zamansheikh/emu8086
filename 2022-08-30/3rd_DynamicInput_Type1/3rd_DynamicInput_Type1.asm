include 'emu8086.inc' 
.MODEL small
.STACK 100h

    
 
 .CODE
    main proc 
        

      
      ;1st input
        print "First Input $"
        mov ah,1
        int 21h 
        
        mov dl,al
        mov ah,2
        int 21h 
        
      ;2nd input   
        print "Second Input $"
        mov ah,1
        int 21h 
        
        mov dl,al
        mov ah,2
        int 21h

     
        main endp
end main
    

