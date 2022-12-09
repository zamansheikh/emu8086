include 'emu8086.inc'
.model small
.stack 100h
.data

.code
    main proc
        
        mov ah,1
        int 21h
        mov bl,al  
        int 21h
        mov cl,al  
        
        mov ah,2        

        mov dl,0ah 
        int 21h
        mov dl,0dh
        int 21h 
        
        print 'SUM = '
        
        add bl,cl      ; add
        sub bl,30h
        
        mov dl,bl 
        int 21h
        

        main endp
    
    
    
    end main  
    
