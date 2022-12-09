include 'emu8086.inc'
.model small
.stack 100h
.data
.code
    main proc     
        print 'Enter value: '
        
        mov ah,1
        int 21h
        mov bl,al
        
        mov ah,2   
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        cmp bl,'a'  
        jge isCorrect
        jmp isNotSmall
        isCorrect: 
        cmp bl,'z'
        jle isSmall      
        jmp isNotSmall
        isSmall:
            print 'Its a small letter :'
            mov ah,2
            mov dl,bl
            int 21h  
            jmp exit
        isNotSmall:    
        print 'Its not a small latter: '
        mov ah,2
        mov dl,bl
        int 21h 
        exit:
            mov ah,4
            int 21h
        
        main endp
    
    
           
    end main