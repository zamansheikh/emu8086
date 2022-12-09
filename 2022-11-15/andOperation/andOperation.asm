.model small
.stack 100h
.data

.code
    main proc
        
        mov bl,85h
        
        
        
        and bl,7Fh 
        
        mov ah,2
        mov dl,bl
        int 21h
        

        
        main endp
    end main