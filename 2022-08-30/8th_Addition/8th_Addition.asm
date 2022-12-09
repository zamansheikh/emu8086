 include 'emu8086.inc'   
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

        mov ah,1
        int 21h   
        mov cl,al      
         
        mov ah,2 
         
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h 

       print 'Addition = '
          
        add bl,cl
        sub bl,48
        
        mov dl,bl 
        int 21h 
        main endp
end main
    
