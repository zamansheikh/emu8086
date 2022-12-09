.model small
.stack 100h
.data
.code
    main proc 
        
        mov cx,8
        
        mov ah,1   ; take input for find binary value
        int 21h
        mov bl,al
        xor bh, bh
        
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
       
        tryShifting:   
            cmp cx, 0
            je exit
            shl bl,1
            jnc ThereIsNoCarry
            jc CarrayExist
        
        ThereIsNoCarry:
            mov ah,2
            mov dl,'0'
            int 21h   
            dec cx      
            
            jmp tryShifting 
         
        CarrayExist:
            mov ah,2
            mov dl,'1'
            int 21h  
            dec cx  
           
            jmp tryShifting  
           
           
            
        exit:
        main endp
    end main