include 'emu8086.inc'
.model small
.stack 100h
.data 

.code
    main proc         
        mov cx,'9'
        mov bl,'0'
        print "Number (0-9): "
        number:
            mov ah,2
            mov dl,bl
            int 21h
            inc bl  
            
            cmp cx,'0'
            je BigAlphabet
            loop number 
        BigAlphabet:
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h
            mov bh,'A'
            mov cx, 26
            print 'Alphabet: '
            
        looping:
            mov ah,2
            mov dl,bh
            int 21h
            inc bh  
            je exit 
            loop looping  
                     
            
        exit:
            mov ah,4
         
        main endp
    end main