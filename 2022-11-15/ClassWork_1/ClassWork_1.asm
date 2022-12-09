include 'emu8086.inc'
.model small
.stack 100h
.data

.code
    main proc
        
        print "Please enter a number: "
        
        mov ah,1
        int 21h
        mov bl,al
                
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
          
        
        cmp bl,"4" 
        mov cl,'0'
        jle ZtoF
        
        mov cl,"5"
        
        FtoN:
            cmp cl,"9"
            jg exit 
            
            mov dl,cl
            int 21h
            inc cl
            
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
            jmp FtoN  
         
        
        ZtoF:        
            cmp cl,"5"
            je exit 
            
            mov dl,cl
            int 21h
            inc cl
            
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
            jmp ZtoF 
            
            
            
        exit:
            mov ah,4
   
        
        main endp
    end main