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
        jle ifItIsLessThanOrEual4
        
        mov cl,"5"
        print 'This value this greater than 4 , So: '  
         mov ah,2
         mov dl,0ah
         int 21h
         mov dl,0dh
         int 21h
        print5to9:
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
            jmp print5to9  
         
        
        ifItIsLessThanOrEual4: 
            print 'This value this less than 5 , So: ' 
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
            print0to4:       
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
            jmp print0to4 
            
            
            
        exit:
            mov ah,4
   
        
        main endp
    end main