include 'emu8086.inc'
.model small
.stack 100h
.data 

.code
    main proc 
        
        mov cx,'9'
        
        mov bl,'0'
        
        print "Number: "
        
        number:
            mov ah,2
            mov dl,bl
            int 21h
            inc bl  
            
            cmp cx,'0'
            je lebel
            
            loop number 
            
        
        lebel:
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
            mov bh,'A'
            mov cx, 'Z'
            print 'Alphabet: '
            
        alphabet:
            mov ah,2
            mov dl,bh
            int 21h
            inc bh  
            
            cmp cx,'A'
            je exit 
            loop alphabet  
                     
            
        exit:
            mov ah,4
         
        main endp
    end main