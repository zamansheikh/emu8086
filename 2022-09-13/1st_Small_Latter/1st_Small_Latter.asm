include 'emu8086.inc'
.model small
.stack 100h
.data
.code
    main proc
        
            ; INPUT  
        
        print 'Enter value: '
        
        mov ah,1
        int 21h
        mov bl,al
        
        mov ah,2      ;New line
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        
            
            ; OPERATION    &       PRINT    
        
        cmp bl,'a'  
        jl false
       
        cmp bl,'z'
        jg false

        
        print 'Your enterd value is small latter, that is: '
        mov ah,2
        mov dl,bl
        int 21h
        
        jmp exit
        
        false:
            
            print 'Your enterd value is not small latter, that is:'
            mov ah,2
            mov dl,bl
            int 21h    
            
        exit:
            mov ah,4
            int 21h
        
        main endp
    
    
           
    end main