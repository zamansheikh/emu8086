include 'emu8086.inc'
.model small
.stack 100h
.data 

.code
    main proc 
        
        mov cx,9
        
        mov dl,'1'
        
        print "Number!1to9: "
        
        printNumber:
            mov ah,2
            int 21h
            inc dl
            
            loop printNumber

        main endp
    end main